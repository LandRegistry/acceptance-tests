require "net/http"


Given(/^I have a registered property$/) do

  $regData = Hash.new()
  $regData['title_number'] = titleNumber()
  $regData['proprietors'] = Array.new()
  $regData['proprietors'][0] = Hash.new()
  $regData['proprietors'][0]['first_name'] = firstName()
  $regData['proprietors'][0]['last_name'] = surname()
  $regData['proprietors'][1] = Hash.new()
  $regData['proprietors'][1]['first_name'] = firstName()
  $regData['proprietors'][1]['last_name'] = surname()
  $regData['property'] = Hash.new()
  $regData['property']['address'] = Hash.new()
  $regData['property']['address']['house_number'] = houseNumber()
  $regData['property']['address']['road'] = road()
  $regData['property']['address']['town'] = town()
  $regData['property']['address']['postcode'] = postcode()
  $regData['property']['tenure'] = 'freehold'
  $regData['property']['class_of_title'] = 'absolute'
  $regData['payment'] = Hash.new()
  $regData['payment']['price_paid'] = pricePaid()
  $regData['payment']['titles'] = Array.new()
  $regData['payment']['titles'][0] = $regData['title_number']

  http = Net::HTTP.new($MINT_API_DOMAIN.split(':')[0],($MINT_API_DOMAIN.split(':')[1] || '80'))
  request = Net::HTTP::Post.new('/titles/' + $regData['title_number'],  initheader = {'Content-Type' =>'application/json'})
  request.body = $regData.to_json
  response = http.request(request)

  if (response.code != '201') then
    raise "Failed creating register: " + response.body
  end

  wait_for_register_to_be_created($regData['title_number'])

  sleep(1) # Really don't like sleeps, but using it as inserting too quickly before querying the data. Will fix later
end

Given(/^I am searching for that property$/) do
  visit('http://' + $SEARCH_FRONTEND_DOMAIN + '/search')
end

Given(/^I am a citizen$/) do
  # Nothing can be done here, maybe click a logout button if it exists?
end

When(/^I enter an incorrect Title Number \(non\-matching\)$/) do
  fill_in('search', :with => '123456')
end

When(/^I search$/) do
  click_button('Search')
end

Then(/^no results are found$/) do
  if (!page.body.include? 'No results found') then
    raise "Expected an error message saying no results found, however this wasn't present"
  end
end

When(/^I enter the exact Title Number$/) do
  fill_in('search', :with => $regData['title_number'])
end

Then(/^the citizen register is displayed$/) do
  # This step isn't ideal. I need something on the page to show it is the citizen registration.
  if (page.body.include? $regData['proprietors'][0]['first_name']) then
    raise "Expected to find no names on this register, this means it isn't the public register."
  end
end

Given(/^at least two registers with the same Title Number beginning exists$/) do
  # Currently I am unsure how to do this as the developer aren't sure how it will happen.
  step "I have a registered property"
  step "I have a registered property"
  # For now I am calling this step twice to create 2 registers, I will then search for TEST*
end

When(/^I enter a Title Number with the same prefix$/) do
  fill_in('search', :with => 'TEST')
end

Then(/^multiple results are displayed$/) do
  #Add the correct xpath here for the results
  if (page.all(".//*[@id='ordered']/li").count < 2) then
    raise "Less than 2 result returned"
  end
end

Then(/^results show address details$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^results show Title Number$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I select a result$/) do
  pending # express the regexp above with the code you wish you had
end
