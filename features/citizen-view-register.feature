Feature: citizen view register

Scenario: view register as citizen
Given a register exists
And I am a citizen
When I view the register
Then the address of property is displayed
And Title Number is displayed
And Price Paid is displayed

Scenario: try to view register that does not exist
Given I am a citizen
When I try to view a register that does not exist
Then an error will be displayed
