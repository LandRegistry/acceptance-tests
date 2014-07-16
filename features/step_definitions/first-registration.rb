Given(/^I have received an application for a first registration$/) do
  $data = Hash.new()
  $data['titleNumber'] = 'TEST1234'
  $data['propertyHouseNumber'] = '3'
  $data['propertyRoad'] = 'The road'
  $data['propertyTown'] = 'Plymouth'
  $data['propertyPostcode'] = 'PL1 6GH'
  $data['pricePaid'] = '300453'
  $data['forename1'] = firstName()
  $data['surname1'] = 'Lewis'
  $data['forename2'] = 'Andy'
  $data['surname2'] = 'Moore'
end

Given(/^I am on the first registration entry screen$/) do
  visit('http://0.0.0.0:8004')

  #temporarily enter a title number until it generates itself
  fill_in('titleNumber', :with => $data['titleNumber'])
end

When(/^I enter a Property Address$/) do
  fill_in('houseNumber', :with => $data['propertyHouseNumber'])
  fill_in('road', :with => $data['propertyRoad'])
  fill_in('town', :with => $data['propertyTown'])
  fill_in('postcode', :with => $data['propertyPostcode'])
end

When(/^I choose a tenure of Freehold$/) do
  choose('freehold')
end

When(/^I select class of Absolute$/) do
  choose('absolute')
end

When(/^I enter a valid price paid$/) do
  fill_in('pricePaid', :with => $data['pricePaid'])
end

When(/^I enter 1 proprietor$/) do
  fill_in('firstName1', :with => $data['forename1'])
  fill_in('surname1', :with => $data['surname1'])
end

When(/^I enter 2 proprietors$/) do
  fill_in('firstName1', :with => $data['forename1'])
  fill_in('surname1', :with => $data['surname1'])
  fill_in('firstName2', :with => $data['forename2'])
  fill_in('surname2', :with => $data['surname2'])
end

When(/^I Register the transaction$/) do
  click_button('Register')
end

Then(/^the first registration is registered$/) do
  if (!page.body.include? 'Your Application was Successfully Registered') then
    raise "Expected registration message but was not present"
  end
end

When(/^I select class of Good$/) do
  choose('good')
end

When(/^I select class of Possessory$/) do
  choose('possessory')
end

When(/^I select class of Qualified$/) do
  choose('qualified')
end

When(/^I enter an invalid price paid$/) do
  $invalidPricePaid = "@£$%^&*Broken10"
  fill_in('pricePaid', :with => $invalidPricePaid)
end

Then(/^an error page will be displayed$/) do
  find(".//*[@id='error']")
end

Then(/^a Title Number is displayed$/) do
  if find(".//*[@id='titleNumber']").value == "" then
    raise "There is no titleNumber!"
  end
end

Then(/^Title Number is formatted correctly$/) do
  $titleNumber = find(".//*[@id='titleNumber']").text
  #need to check format here
end
