Then(/^the address of property is displayed$/) do

  if (!page.body.include? $regData['property']['address']['house_number'].to_s) then
    raise "House Number Missing"
  end
  if (!page.body.include? $regData['property']['address']['road']) then
    raise "Road Missing"
  end
  if (!page.body.include? $regData['property']['address']['town']) then
    raise "Town Missing"
  end
  if (!page.body.include? $regData['property']['address']['postcode']) then
    raise "Postcode Missing"
  end

end

Then(/^Title Number is displayed$/) do
  assert_selector(".//*[@id='content']/div/h1/span", text: /#{$regData['title_number']}/)
end

Then(/^Price Paid is displayed$/) do
  assert_selector(".//*[@id='price-paid']", text: /#{$regData['payment']['price_paid'].to_s.reverse.gsub(/...(?=.)/,'\&,').reverse}/)
end

When(/^I try to view a register that does not exist$/) do
  puts 'xxxxxxxxx'
  visit("http://#{$PROPERTY_FRONTEND_DOMAIN}/property/XXXXXXXXX")
end

Then(/^an error will be displayed$/) do
  if (!page.body.include? 'Page not found') then
    raise "Expected not to find the page"
  end
end

When(/^I view the register$/) do
  visit("http://#{$PROPERTY_FRONTEND_DOMAIN}/property/#{$regData['title_number']}")
end
