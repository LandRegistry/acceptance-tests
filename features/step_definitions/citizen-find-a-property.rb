Given(/^I have a title number with a register$/) do
  step "I have received an application for a first registration"
  step "I want to create a Register of Title"
  step "I enter a Property Address"
  step "I choose a tenure of Freehold"
  step "I select class of Absolute"
  step "I enter a valid price paid"
  step "I enter 1 proprietor"
  step "I submit the title details"
end

Given(/^I am searching for that property$/) do
  visit($SEARCH_FRONTEND_URL + '/search')
end

Given(/^I am a citizen$/) do
  # Nothing can be done here, maybe click a logout button if it exists?
end

When(/^I enter an incorrect Title Number \(non\-matching\)$/) do
  fill_in('q', :with => '123456')
end

When(/^I search$/) do
  click_button('Search')
end

Then(/^no results are found$/) do
  pending
  #if (!page.body.include? 'Some text saying no resultd') then
  #  raise "Expected an error message saying no results, however this wasn't present"
  #end
end

When(/^I enter the exact Title Number$/) do
  fill_in('q', :with => $data['titleNumber'])
end

Then(/^the citizen register is displayed$/) do
  pending # express the regexp above with the code you wish you had
  #if (!page.body.include? 'Some text saying you aren't logged in or something') then
  #  raise "Expected an error message saying it is only a citizen register, however this wasn't present"
  #end
end

Given(/^at least two registers with the same Title Number beginning exists$/) do
  # Currently I am unsure how to do this as the developer aren't sure how it will happen.
  step "I have a title number with a register"
  step "I have a title number with a register"
  # For now I am calling this step twice to create 2 registers, I will then search for TEST*
end

When(/^I enter a Title Number with the same prefix$/) do
  fill_in('q', :with => 'TEST')
end

Then(/^multiple results are displayed$/) do
  #Add the correct xpath here for the results
  if (page.all('.//somexpathhere').count < 2) then
    raise "Less than 2 result returned"
  end

end

Then(/^results show address details$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^results show Title Number$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I have multiple search results$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I select a result$/) do
  pending # express the regexp above with the code you wish you had
end
