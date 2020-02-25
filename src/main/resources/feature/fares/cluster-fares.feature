Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "GRS" and "CRU" on "2020-03-25" at "10:00"
    Then I should see a fare "SOR" on "00000" that is "4720" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "EXG" and "ARA" on "2020-03-25" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3830" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "NUM" and "HAT" on "2020-03-25" at "10:00"
    Then I should see a fare "SDR" on "00000" that is "2250" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "GLF" and "CRU" on "2020-03-25" at "10:00"
    Then I should see a fare "SVR" on "01000" that is "4810" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "BSL" and "CRU" on "2020-03-25" at "10:00"
    Then I should see a fare "SDS" on "01000" that is "3640" pence

