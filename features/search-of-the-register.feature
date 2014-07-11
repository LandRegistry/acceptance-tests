@webuitest
Feature: Search of the register

Scenario: Get public register details from a full title number search
Given I have a registered property
and am not authenticated
When I search for the registered property by full title number
Then I will see the public register details

Scenario: Get multiple results from property search
Given I have a registered property with title number "ABCD1234"
And I have a registered property with title number "ABCD1235"
and I am on the search property screen
and am not authenticated
When I search for the registered property by "ABCD"
Then I see 2 properties listed

Scenario: Get no results from property search
When I search by title for a register that doesn’t exist
Then no results are displayed.
