Given(/^I navigate to Google$/) do
  visit "http://www.google.com"
end

Given(/^I took a screenshot$/) do
  page.save_screenshot "sshot-#{Time.new.to_i}.png"
end

When(/^I search for "(.*?)"$/) do |search_value|
  fill_in('q', :with => search_value)
end

When(/^I click the Google Search button$/) do
  click_button('Google Search')
end

Then(/^I have the results screen$/) do
  assert_selector(".//*[@id='resultStats']", text: /About (.*?) results/)
end
