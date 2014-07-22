Given(/^I have received an application for a first registration$/) do
  $data = Hash.new()
  $data['propertyHouseNumber'] = houseNumber()
  $data['propertyRoad'] = road()
  $data['propertyTown'] = town()
  $data['propertyPostcode'] = postcode()
  $data['pricePaid'] = pricePaid()
  $data['forename1'] = firstName()
  $data['surname1'] = surname()
  $data['forename2'] = firstName()
  $data['surname2'] = surname()
end

Given(/^I want to create a Register of Title$/) do
  visit('http://' + $CASEWORK_FRONTEND_DOMAIN + '/registration')

  $data['titleNumber'] = find(".//input[@id='title_number']", :visible => false).value
end

When(/^I enter a Property Address$/) do
  fill_in('house_number', :with => $data['propertyHouseNumber'])
  fill_in('road', :with => $data['propertyRoad'])
  fill_in('town', :with => $data['propertyTown'])
  fill_in('postcode', :with => $data['propertyPostcode'])
end

When(/^I choose a tenure of Freehold$/) do
  choose('property_tenure-0')
  #find('.//*[@value="freehold" AND @name="property_tenure"]').click
end

When(/^I choose a tenure of Leasehold$/) do
  choose('property_tenure-1')
end

When(/^I select class of Absolute$/) do
  choose('property_class-0')
end

When(/^I enter a valid price paid$/) do
  fill_in('price_paid', :with => $data['pricePaid'])
end

When(/^I enter 1 proprietor$/) do
  fill_in('first_name1', :with => $data['forename1'])
  fill_in('surname1', :with => $data['surname1'])
end

When(/^I enter 2 proprietors$/) do
  fill_in('first_name1', :with => $data['forename1'])
  fill_in('surname1', :with => $data['surname1'])
  fill_in('first_name2', :with => $data['forename2'])
  fill_in('surname2', :with => $data['surname2'])
end

When(/^I submit the title details$/) do
  click_button('submit')
end

Then(/^the first registration is registered$/) do
  wait_for_register_to_be_created($data['titleNumber'])
end

Then(/^the user will be prompted again for a proprietor$/) do
  if (!page.body.include? 'first_name1 - error This field is required') then
    raise "There was no prompt for first_name1 to be re-entered"
  end
  if (!page.body.include? 'surname1 - error This field is required') then
    raise "There was no prompt for surname1 to be re-entered"
  end
end

Then(/^the user will be prompted again for required address fields$/) do
  if (!page.body.include? 'town - error This field is required') then
    raise "There was no prompt for town to be re-entered"
  end
  if (!page.body.include? 'road - error This field is required') then
    raise "There was no prompt for road to be re-entered"
  end
  if (!page.body.include? 'postcode - error This field is required') then
    raise "There was no prompt for postcode to be re-entered"
  end
  if (!page.body.include? 'house_number - error This field is required') then
    raise "There was no prompt for house number to be re-entered"
  end
end

When(/^I select class of Good$/) do
  choose('property_class-1')
end

When(/^I select class of Possessory$/) do
  choose('property_class-2')
end

When(/^I select class of Qualified$/) do
  choose('property_class-3')
end

When(/^I enter an invalid price paid$/) do
  $data['pricePaid'] = "@£$%^&*Broken10"
  fill_in('price_paid', :with => $data['pricePaid'])
end

Then(/^an error page will be displayed$/) do
  if (!page.body.include? 'Creation of title with number') then
    raise "Expected error message but was not present"
  end
end

Then(/^a Title Number is displayed$/) do
  if find(".//*[@id='title_number']").value == "" then
    raise "There is no titleNumber!"
  end
end

Then(/^Title Number is formatted correctly$/) do
  $titleNumber = find(".//*[@id='title_number']").text
end

Then(/^I have received confirmation that it has been registered$/) do
  if (!page.body.include? 'Successfully created title with number') then
    raise "Expected registration message but was not present"
  end
end

Then(/^Title Number is unique$/) do
  step "I am searching for that property"
  step "I enter the exact Title Number"
  step "I search"
  if (page.all(".//*[@id='ordered']/li").count != 1) then
    raise "Expected only 1 result"
  end
end
