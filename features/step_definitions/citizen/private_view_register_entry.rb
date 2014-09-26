When(/^I view the private register$/) do
  #The URL is accessed directly with generated TN
  visit("#{$SERVICE_FRONTEND_DOMAIN}/property/#{$regData['title_number']}")
end

Then(/^Tenure is displayed$/) do
  assert_match(/#{$regData['property']['tenure']}/i, page.body, 'Expected to see tenure value')
end

Then(/^Class of Title is displayed$/) do
  assert_match(/#{$regData['property']['class_of_title']}/i, page.body, 'Expected to see class of title value')
end

Then(/^proprietors are displayed$/) do
  assert_match(/#{$regData['proprietors'][0]['full_name']}/i, page.body, 'Expected to see proprietor name')
  if $regData['proprietors'][1]['full_name'] != "" then
    assert_match(/#{$regData['proprietors'][1]['full_name']}/i, page.body, 'Expected to see proprietor name')
  end
end

Then(/^the company charge is displayed$/) do
  assert_match(Date.parse($regData['charges'][0]['charge_date']).strftime("%d %B %Y"), page.body, 'Expected to find house_number')
  assert_match(/#{$regData['charges'][0]['chargee_address']}/i, page.body, 'Expected to find chargee_address')
  assert_match(/#{$regData['charges'][0]['chargee_name']}/i, page.body, 'Expected to find chargee_name')
  assert_match(/#{$regData['charges'][0]['chargee_registration_number']}/i, page.body, 'Expected to find chargee_registration_number')
end

Then(/^the charge restriction is NOT displayed$/) do
  restriction_text = "No disposition of the registered estate by the proprietor of the registered estate is to be registered without a written consent signed by the proprietor for the time being of the Charge dated "
  assert_no_match(/#{restriction_text}/, page.body, 'charge restriction not expected ')
end

Then(/^the charge restriction is displayed$/) do
  restriction_text = "No disposition of the registered estate by the proprietor of the registered estate is to be registered without a written consent signed by the proprietor for the time being of the Charge dated "
  restriction_text = restriction_text + Date.parse($regData['charges'][0]['charge_date']).strftime("%d %B %Y")
  restriction_text = restriction_text +  " in favour of "
  restriction_text = restriction_text +  $regData['charges'][0]['chargee_name']
  restriction_text = restriction_text + " referred to in the Charges Register."

  assert_match(/#{restriction_text}/, page.body.gsub(/\s+/, ' '), 'expected to find charge restriction '+restriction_text)
end

Then(/^the company charge is displayed with no restriction$/) do
  step "the company charge is displayed"
  step "the charge restriction is NOT displayed"
end

Then(/^the company charge is displayed with a restriction$/) do
  step "the company charge is displayed"
  step "the charge restriction is displayed"
end

Given(/^I view the full register of title$/) do
  visit("#{$SERVICE_FRONTEND_DOMAIN}/property/#{$regData['title_number']}")
  step "I login to the service frontend with correct credentials"
end

Given(/^I would like to change my name as I have been married$/) do
  click_button('Edit the register')
  find("//dd[contains(text(),'" + $regData['proprietors'][0]['full_name'] + "')]//a").click
end

Then(/^I do not have the option to edit the register$/) do
  assert_equal has_button?('Edit the register'), false, 'Expected Edit the register button to not be on the page'
end

Then(/^I have the option to edit the register$/) do
  assert_equal has_button?('Edit the register'), true, 'Expected Edit the register button to be on the page'
end

Given(/^amendments have been made to that title$/) do
  # Make a change to the second person's name and resubmit, creating history
  $regData['proprietors'][0]['full_name'] = fullName() + 's'
  submit_title($regData)
  wait_for_register_to_update_full_name($regData['title_number'], $regData['proprietors'][0]['full_name'])

  # Make a change to the second person's name and resubmit, creating history
  $regData['proprietors'][1]['full_name'] = fullName() + 'ss'
  submit_title($regData)
  wait_for_register_to_update_full_name($regData['title_number'], $regData['proprietors'][0]['full_name'])
end
