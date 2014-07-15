Given(/^I have received an application for a first registration$/) do
  $data = Hash.new()
  $data['forename1'] = 'Geoff'
  $data['surname1'] = 'Lewis'
end

Given(/^I am on the first registration entry screen$/) do
  visit('http://www.google.com')
end

When(/^I enter a Property Address$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I choose a tenure of Freehold$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I select class of Absolute$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I enter a valid price paid$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I enter 1 proprietor$/) do
  fill_in('forename????', :with => $data['forename1'])
  fill_in('surename????', :with => $data['surname1'])
end

When(/^I enter 2 proprietors$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I Register the transaction$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the first registration is registered$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I select class of Good$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I select class of Possessory$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I enter no proprietors$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I select class of Qualified$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I enter an invalid price paid$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^an error page will be displayed$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I am on the first registration entry screen$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^a Title Number is displayed$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Title Number is formatted correctly$/) do
  pending # express the regexp above with the code you wish you had
end
