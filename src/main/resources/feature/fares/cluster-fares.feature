@fares
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between HNX and QMC
    Given a query between "HNX" and "QMC" on "2020-04-06" at "10:00"
    Then I should see a fare "SDR" on "00000" that is "2220" pence

  Scenario: Clustered fare overridden by an NLC flow between CPK and ELS
    Given a query between "CPK" and "ELS" on "2020-04-06" at "10:00"
    Then I should see a fare "SDR" on "00000" that is "2420" pence

  Scenario: Clustered fare overridden by an NLC flow between BTN and GRA
    Given a query between "BTN" and "GRA" on "2020-04-06" at "10:00"
    Then I should see a fare "SVS" on "00595" that is "6900" pence

  Scenario: Clustered fare overridden by an NLC flow between DMY and CRU
    Given a query between "DMY" and "CRU" on "2020-04-06" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3060" pence

  Scenario: Clustered fare overridden by an NLC flow between DMY and CTB
    Given a query between "DMY" and "CTB" on "2020-04-06" at "10:00"
    Then I should see a fare "SOR" on "00000" that is "7080" pence

