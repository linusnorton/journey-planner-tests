@journey-planning @pending
Feature: Some journeys may require the routeing guide maps to be divided at a via station

  Scenario: Journeys between Nuneaton and York should show a journey via Peterborough that is only valid if
            the routeing maps from Nuneaton to Peterborough are combined with the maps from Peterborough to York
    Given a query between "NUN" and "YRK" on "a weekday" at "07:30"
    Then I should see the following transfer patterns
      | NUN, PBO, YRK |
      | NUN, TAM, YRK |
      | NUN, LEI, DBY, YRK |
      | NUN, BHM, YRK |
    And I should see a fare "SOS" on "00072"
