@wip
Feature: View Register

Scenario: View public register details
Given I have two registered property listed in search results
And am not authenticated
When I select a register
Then I will see the public register details

Scenario: View private register details
Given I have two registered property listed in search results
And I am authenticated
When I select a register
Then I will the full register details
