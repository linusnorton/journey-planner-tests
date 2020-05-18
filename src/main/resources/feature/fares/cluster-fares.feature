@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between DMY and CTB
    Given a query between "DMY" and "CTB" on "2020-06-18" at "10:00"
    Then I should see a fare "SVR" on "00000" that is "6690" pence

  Scenario: Clustered fare overridden by an NLC flow between GRS and CRU
    Given a query between "GRS" and "CRU" on "2020-06-18" at "10:00"
    Then I should see a fare "SVR" on "00000" that is "4350" pence

  Scenario: Clustered fare overridden by an NLC flow between DWN and QMC
    Given a query between "DWN" and "QMC" on "2020-06-18" at "10:00"
    Then I should see a fare "SDR" on "00396" that is "1830" pence

  Scenario: Clustered fare overridden by an NLC flow between BRN and LCB
    Given a query between "BRN" and "LCB" on "2020-06-18" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "4195" pence

  Scenario: Clustered fare overridden by an NLC flow between PLN and EDA
    Given a query between "PLN" and "EDA" on "2020-06-18" at "10:00"
    Then I should see a fare "SOR" on "01002" that is "7680" pence

