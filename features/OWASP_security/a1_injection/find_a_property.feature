Feature: A1 OWASP Injection Attacks for finding a property

Scenario: Inject python into search for property
Given I have malicious python code instead of title number
When I search for the property on gov.uk
Then no property is found
