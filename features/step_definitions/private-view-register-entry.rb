Then(/^Tenure is displayed$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Class is displayed$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^proprietors are displayed$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I view the private register$/) do
  visit("http://#{$http_auth_name}:#{$http_auth_password}@#{$PRIVATE_PROPERTY_FRONTEND_DOMAIN}")
end
