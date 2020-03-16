@fares @not-summer
Feature: Senior Railcards
  Senior railcards are only valid after the first off-peak train inside the Network Southeast Area

  Scenario: Application of UV restriction to journeys between Weymouth to Waterloo arriving in London before 9:30
    Given a query between "WEY" and "WAT" on "a weekday" at "06:15" with a "SRN" railcard
    Then I should see a fare "SDS" on "00637" that is "69.50" pence
    And I should see a fare "SDS" on "00637" that is "45.85" pence

