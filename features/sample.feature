Feature: Sample Feature file

Scenario: Lets see if webkits works
Given I navigate to Google
And I took a screenshot
When I search for "capybara"
And I took a screenshot
And I click the Google Search button
Then I have the results screen
And I took a screenshot
