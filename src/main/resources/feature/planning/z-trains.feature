@journey-planning
Feature: The journey planner should offer routes using Z trains

  Scenario: Journeys between RYD and WAT require a ferry service
    Given a query between "RYD" and "WAT" on "a weekday" at "09:00"
    Then I should see the following transfer patterns
      | RYD, XRD, SHV, PMS, WAT |
