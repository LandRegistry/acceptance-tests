@wip
Feature: Confirm audit logs are written

@viewRegisterAudit
Scenario: view register audit log as new authenticated user
Given I have a title number with a register
And I have login credentials
When I login with correct credentials
And I view the register
Then Audit is written

@viewRegisterAudit
Scenario: view register audit log as existing authenticated user
Given I have a title number with a register
And I am still authenticated
When I view the register
Then Audit is written
