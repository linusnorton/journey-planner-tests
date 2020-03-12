@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between JOR and CTB
    Given a query between "JOR" and "CTB" on "2020-04-12" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "4230" pence

  Scenario: Clustered fare overridden by an NLC flow between DEN and BPO
    Given a query between "DEN" and "BPO" on "2020-04-12" at "10:00"
    Then I should see a fare "FDR" on "00000" that is "5840" pence

  Scenario: Clustered fare overridden by an NLC flow between BES and QMB
    Given a query between "BES" and "QMB" on "2020-04-12" at "10:00"
    Then I should see a fare "SDS" on "00327" that is "1560" pence

  Scenario: Clustered fare overridden by an NLC flow between ADC and QMC
    Given a query between "ADC" and "QMC" on "2020-04-12" at "10:00"
    Then I should see a fare "SDR" on "00325" that is "1860" pence

  Scenario: Clustered fare overridden by an NLC flow between DMY and CRU
    Given a query between "DMY" and "CRU" on "2020-04-12" at "10:00"
    Then I should see a fare "SOR" on "00000" that is "4740" pence

