Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "DEN" and "BPO" on "2020-03-22" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3550" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "CRR" and "ARA" on "2020-03-22" at "10:00"
    Then I should see a fare "SDS" on "01000" that is "2750" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "MYT" and "QMA" on "2020-03-22" at "10:00"
    Then I should see a fare "SDS" on "00106" that is "1200" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "EVE" and "LMN" on "2020-03-22" at "10:00"
    Then I should see a fare "SDS" on "01000" that is "750" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "AND" and "ARA" on "2020-03-22" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3830" pence

