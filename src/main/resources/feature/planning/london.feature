@journey-planning
Feature: The journey planner should offer routes via London

  Scenario: Journeys between KGX and MAN can go via EUS using the underground
    Given a query between "KGX" and "MAN" on "a weekday" at "09:15"
    Then I should see the following transfer patterns
      | KGX, EUS, MAN |

  Scenario: Journeys between BMH and AFK should go via London not using the tube
    Given a query between "BMH" and "AFK" on "a weekday" at "09:00"
    Then I should see the following transfer patterns
      | BMH, CLJ, VIC, AFK |
