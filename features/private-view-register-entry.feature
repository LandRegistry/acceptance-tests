@wip
Feature: login and view private register

Scenario: Invalid username login failed
Given I have login credentials
When I login with incorrect username
Then I fail to login

Scenario: Invalid password login failed
Given I have login credentials
When I login with incorrect password
Then I fail to login

Scenario: view register as new authenticated user
Given a register exists
And I have login credentials
When I login with correct credentials
And I view the register
Then the address of property is displayed
And Title Number is displayed
And Price Paid is displayed
And Tenure is displayed
And Class is displayed
And proprietors are displayed

Scenario: view register as existing authenticated user
Given a register exists
And I am still authenticated
When I view the register
Then the address of property is displayed
And Title Number is displayed
And Price Paid is displayed
And Tenure is displayed
And Class is displayed
And proprietors are displayed
