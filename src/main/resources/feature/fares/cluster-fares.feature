@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between BEG and EBD
    Given a query between "BEG" and "EBD" on "2020-07-08" at "10:00"
    Then I should see a fare "CDS" on "00131" that is "2030" pence

  Scenario: Clustered fare overridden by an NLC flow between DHM and DUU
    Given a query between "DHM" and "DUU" on "2020-07-08" at "10:00"
    Then I should see a fare "ODS" on "00481" that is "2780" pence

  Scenario: Clustered fare overridden by an NLC flow between GRC and EDR
    Given a query between "GRC" and "EDR" on "2020-07-08" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1860" pence

  Scenario: Clustered fare overridden by an NLC flow between CHC and ARA
    Given a query between "CHC" and "ARA" on "2020-07-08" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3840" pence

  Scenario: Clustered fare overridden by an NLC flow between BBG and EDA
    Given a query between "BBG" and "EDA" on "2020-07-08" at "10:00"
    Then I should see a fare "SDS" on "00643" that is "1830" pence

