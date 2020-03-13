@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between LCL and CTB
    Given a query between "LCL" and "CTB" on "2020-04-13" at "10:00"
    Then I should see a fare "SDS" on "01000" that is "4820" pence

  Scenario: Clustered fare overridden by an NLC flow between JOR and ARA
    Given a query between "JOR" and "ARA" on "2020-04-13" at "10:00"
    Then I should see a fare "SVR" on "00000" that is "5730" pence

  Scenario: Clustered fare overridden by an NLC flow between KPT and CRU
    Given a query between "KPT" and "CRU" on "2020-04-13" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3060" pence

  Scenario: Clustered fare overridden by an NLC flow between KIN and EDA
    Given a query between "KIN" and "EDA" on "2020-04-13" at "10:00"
    Then I should see a fare "SVR" on "01002" that is "5640" pence

  Scenario: Clustered fare overridden by an NLC flow between BSL and CTB
    Given a query between "BSL" and "CTB" on "2020-04-13" at "10:00"
    Then I should see a fare "SOR" on "01000" that is "7630" pence

