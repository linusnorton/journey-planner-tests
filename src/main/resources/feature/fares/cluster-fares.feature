Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "ELW" and "DFD" on "2020-03-25" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "480" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "DMC" and "ARA" on "2020-03-25" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3830" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "HLS" and "ECW" on "2020-03-25" at "10:00"
    Then I should see a fare "FDS" on "01000" that is "2870" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "DMR" and "CTB" on "2020-03-25" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "4195" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "PTK" and "CRU" on "2020-03-25" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3050" pence

