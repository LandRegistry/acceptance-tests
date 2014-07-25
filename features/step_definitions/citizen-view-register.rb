Then(/^the address of property is displayed$/) do


  assert_selector(".//*[@id='content']/div[2]/div[1]/div[1]", text: /#{$regData['property']['address']['house_number']}/)
  assert_selector(".//*[@id='content']/div[2]/div[1]/div[1]", text: /#{$regData['property']['address']['road']}/)

  assert_selector(".//*[@id='content']/div[2]/div[1]/div[2]", text: /#{$regData['property']['address']['town']}/)
  assert_selector(".//*[@id='content']/div/div[1]/div[3]", text: /#{$regData['property']['address']['postcode']}/)

end

Then(/^Title Number is displayed$/) do
  assert_selector(".//*[@id='content']/div/h1/span", text: /#{$regData['title_number']}/)
end

Then(/^Price Paid is displayed$/) do
  assert_selector(".//*[@id='price-paid']", text: /#{$regData['payment']['price_paid']}/)
end

When(/^I try to view a register that does not exist$/) do
  puts 'xxxxxxxxx'
  visit("http://#{$http_auth_name}:#{$http_auth_password}@#{$PROPERTY_FRONTEND_DOMAIN}/property/XXXXXXXXX")
end

Then(/^an error will be displayed$/) do
  if (!page.body.include? 'Page not found') then
    raise "Expected not to find the page"
  end
end

When(/^I view the register$/) do
  visit("http://#{$http_auth_name}:#{$http_auth_password}@#{$PROPERTY_FRONTEND_DOMAIN}/property/#{$regData['title_number']}")
end
