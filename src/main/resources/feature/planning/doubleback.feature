@journey-planning
Feature: Some journeys may involve a valid doubleback

  Scenario: Journeys between CHM and BXB may involve a doubleback at Bethnel Green
    Given a query between "CHM" and "BXB" on "a weekday" at "08:15"
    Then I should see the following transfer patterns
      | CHM, SRA, BXB |
      | CHM, LST, BXB |

  Scenario: Journeys between SED and SSD may involve a doubleback at CBG
    Given a query between "SED" and "SSD" on "a weekday" at "09:30"
    Then I should see the following transfer patterns
      | SED, CBG, SSD |
