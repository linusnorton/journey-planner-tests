@journey-planning @pending
Feature: Some journeys may involve a valid doubleback

  Scenario: Journeys between CHM and BXB may involve a doubleback at Bethnel Green
    Given a query between "CHM" and "BXB" on "a weekday" at "08:15"
    Then I should see the following transfer patterns
      | CHM, SRA, BXB |
      | CHM, LST, BXB |

  Scenario: Journeys between SAJ and TON may involve a doubleback
    Given a query between "SAJ" and "TON" on "a weekday" at "08:15"
    Then I should see the following transfer patterns
      | SAJ, LBG, TON |
