@journey-planning @pending
Feature: The journey planner should offer routes via London and not via London with appropriate fares

  Scenario: Journeys between DFD and TON can go via WAE or via SOO
    Given a query between "DFD" and "TON" on "a weekday" at "09:15"
    Then I should see the following transfer patterns
      | DFD, WAE, TON |
      | DFD, SOO, TON |
    And I should see a fare "CDS" on "00331"
    And I should see a fare "CDS" on "00700"

  Scenario: Journeys between TON and GTW can go via LBG or via RDH
    Given a query between "TON" and "GTW" on "a weekday" at "09:15"
    Then I should see the following transfer patterns
      | TON, LBG, GTW |
      | TON, RDH, GTW |
    And I should see a fare "SDS" on "00000"
    And I should see a fare "SDS" on "00700"
