Then(/^the address of property is displayed$/) do
  assert_selector(".//*[@id='content']/div/div/p[2]", text: /#{$data['propertyHouseNumber']}/)
  assert_selector(".//*[@id='content']/div/div/p[3]", text: /#{$data['propertyRoad']}/)
  assert_selector(".//*[@id='content']/div/div/p[4]", text: /#{$data['propertyTown']}/)
  assert_selector(".//*[@id='content']/div/div/p[5]", text: /#{$data['propertyPostcode']}/)

end

Then(/^Title Number is displayed$/) do
  assert_selector(".//*[@id='content']/div/div/p[1]", text: /#{$data['titleNumber']}/)
end

Then(/^Price Paid is displayed$/) do
  assert_selector(".//*[@id='content']/div/div/p[6]", text: /#{$data['pricePaid']}/)
end

When(/^I try to view a register that does not exist$/) do
  visit('http://' + $PROPERTY_FRONTEND_DOMAIN + '/property/XXXXXXXXX')
end

Then(/^an error will be displayed$/) do
  if (!page.body.include? 'exception') then
    raise "Expected an exception on the page, none was present"
  end
end

When(/^I view the register$/) do
  puts $PROPERTY_FRONTEND_DOMAIN + '/property/' + $data['titleNumber']
  visit($PROPERTY_FRONTEND_DOMAIN + '/property/' + $data['titleNumber'])
end
