@wip
Feature: W3C Compliance

Scenario: First Registration Page
Given I have received an application for a first registration
And I want to create a Register of Title
Then the page is W3C compliant

Scenario: First Registration Page with error message
Given I have received an application for a first registration
And I want to create a Register of Title
And I submit the title details
Then the page is W3C compliant
