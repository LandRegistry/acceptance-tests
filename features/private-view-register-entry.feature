@wip
Feature: login and view private register

Scenario: Invalid username login failed
Given I have login credentials
When I view the private register
And I login with incorrect username
Then I fail to login (incorrect username)

Scenario: Invalid password login failed
Given I have login credentials
When I view the private register
And I login with incorrect password
Then I fail to login (incorrect password)

Scenario: view register as new authenticated user
Given I have a registered property
And I have login credentials
When I view the private register
And I login with correct credentials
Then the address of property is displayed
And Title Number is displayed
And Price Paid is displayed
And Tenure is displayed
And Class is displayed
And proprietors are displayed

Scenario: view register as existing authenticated user
Given I have a registered property
And I am still authenticated
When I view the private register
Then the address of property is displayed
And Title Number is displayed
And Price Paid is displayed
And Tenure is displayed
And Class is displayed
And proprietors are displayed
