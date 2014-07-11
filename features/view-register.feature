@webuitest
Feature: View Register

Scenario: View public register details
Given I have two registered property listed in search results
and am not authenticated
When I select a register
then I will see the public register details

Scenario: View private register details
Given I have two registered property listed in search results
and I am authenticated
When I select a register
then I will the full register details
