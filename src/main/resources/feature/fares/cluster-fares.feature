@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between DWN and QMC
    Given a query between "DWN" and "QMC" on "2020-05-09" at "10:00"
    Then I should see a fare "SDR" on "00396" that is "1830" pence

  Scenario: Clustered fare overridden by an NLC flow between NUM and HAT
    Given a query between "NUM" and "HAT" on "2020-05-09" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1740" pence

  Scenario: Clustered fare overridden by an NLC flow between DWN and QMA
    Given a query between "DWN" and "QMA" on "2020-05-09" at "10:00"
    Then I should see a fare "SDR" on "00396" that is "1490" pence

  Scenario: Clustered fare overridden by an NLC flow between CLY and QMB
    Given a query between "CLY" and "QMB" on "2020-05-09" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1300" pence

  Scenario: Clustered fare overridden by an NLC flow between CBL and EDA
    Given a query between "CBL" and "EDA" on "2020-05-09" at "10:00"
    Then I should see a fare "SDS" on "00643" that is "2020" pence

