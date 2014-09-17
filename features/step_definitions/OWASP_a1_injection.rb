Given(/^I have malicious python code instead of title number$/) do
  $regData = Hash.new()
  $regData['title_number'] = "'1=1"
end

Then(/^no property is found$/) do
  assert_selector(".//*/div[2]/p", text: /No results found/)
end
