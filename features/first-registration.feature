@webuitest
Feature: First Registration

Scenario: Processing Absoltule Freehold First Registration
Given I have received an application for a first registration
When I am processing a First Registration
And I enter a Property Address
And I choose a tenure of Freehold
And I select quality of Absolute
And I have a price paid
And I have a single Proprietor
And the deed type is transfer
And the date is valid
And Register the transaction
Then the first registration is registered
