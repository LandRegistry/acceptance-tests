Given(/^I have login credentials$/) do
  $userdetails['email'] = 'landowner@mail.com'
  $userdetails['password'] = 'password'
end

When(/^I login with correct credentials$/) do
  fill_in('email', :with => $userdetails['email'])
  fill_in('password', :with => $userdetails['password'])
  click_button('Login')
end

Then(/^Audit is written$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am still authenticated$/) do
  pending # express the regexp above with the code you wish you had
end
