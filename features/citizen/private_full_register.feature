Feature: Citizen view full register of title

@performance_test_script
Scenario: Full register of title

  Given I am a citizen
  And a registered title with characteristics
    | CHARACTERISTICS           |
    | two proprietors           |
  When I view the full register of title
  Then I can see the following information displayed
    | INFORMATION      |
    | Title Number     |
    | Property Address |
    | Price Paid       |
  And Audit for private citizen register view written

Scenario: Register of title with a charge but no restriction

  Given I am a citizen
  And a registered title with characteristics
    | CHARACTERISTICS           |
    | has a charge              |
    | has no charge restriction |
  When I view the full register of title
  Then I can see the following information displayed
    | INFORMATION                          |
    | Register Details          |
    | Company Charge With No Restriction   |
  And I do not have the option to edit the register

Scenario: Register of title with a charge and a restriction

  Given I am a citizen
  And a registered title with characteristics
    | CHARACTERISTICS            |
    | has a charge               |
    | has a charge restriction   |
  When I view the full register of title
  Then I can see the following information displayed
    | INFORMATION                          |
    | Register Details                     |
    | Company Charge With A Restriction    |

Scenario: Register of title with lease with different lessee and without clauses

  Given I am a citizen
  And a registered title with characteristics
    | CHARACTERISTICS                               |
    | leasehold                                     |
    | has no lease clauses                          |
    | has a lessee name different to the proprietor |
  When I view the full register of title
  Then I can see the following information displayed
    | INFORMATION           |
    | Register Details      |
    | Date Of Lease         |
    | Lease Term            |
    | Lease Term Start Date |
    | Lessor Name           |
    | Lessee Name           |
  And I cannot see the following information displayed
    | INFORMATION           |
    | Lease Clauses         |

Scenario: Register of title with clauses and lessee as proprietor

  Given I am a citizen
  And a registered title with characteristics
    | CHARACTERISTICS                            |
    | leasehold                                  |
    | has lease clauses                          |
    | has a lessee name matching the proprietor  |
  When I view the full register of title
  Then I can see the following information displayed
    | INFORMATION           |
    | Register Details      |
    | Date Of Lease         |
    | Lease Term            |
    | Lease Term Start Date |
    | Lessor Name           |
    | Lessee Name           |
    | Lease Clauses         |

Scenario: Proprietor can edit the register

  Given I am a citizen
  And I am the proprietor of a registered title
  When I view the full register of title
  Then I have the option to edit the register

Scenario: Non proprietor cannot edit the register

  Given I am a citizen
  And a registered title
  When I view the full register of title
  Then I do not have the option to edit the register

Scenario: Citizen can only view private register if logged in

  Given a registered title
  When I view the private register
  Then I am prompted to login as a private citizen

Scenario: Private Register with Title Extents

  Given I am a citizen
  And a registered title with characteristics
    | CHARACTERISTICS                   |
    | has a polygon with easement       |
    | has a doughnut polygon            |
  When I view the full register of title
  And I check the title plan (private view)
  Then I can see the following information displayed
    | INFORMATION                   |
    | multiple polygons             |
    | whole polygin is in view      |
    | the polygons match the title  |
    | the polygons are edged in red |
    | there is a donut polygon      |
    | there is a normal polygon     |
    | there is an easement          |
    | the map can't be zoomed       |
    | the map can't be moved        |
    | the polygons are over a map   |
