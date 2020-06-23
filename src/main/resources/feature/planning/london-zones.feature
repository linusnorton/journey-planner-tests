@journey-planning
Feature: The journey planner should offer routes via London using the London Underground

  Scenario: Journeys between KGX and MAN can go via EUS using the underground
    Given a query between "KGX" and "MAN" on "a weekday" at "09:15"
    Then I should see the following transfer patterns
      | KGX, EUS, MAN |
