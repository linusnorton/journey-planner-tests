@fares
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between GRC and EDR
    Given a query between "GRC" and "EDR" on "2020-04-04" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1860" pence

  Scenario: Clustered fare overridden by an NLC flow between MLG and CTB
    Given a query between "MLG" and "CTB" on "2020-04-04" at "10:00"
    Then I should see a fare "SDS" on "01000" that is "5150" pence

  Scenario: Clustered fare overridden by an NLC flow between NWR and EDA
    Given a query between "NWR" and "EDA" on "2020-04-04" at "10:00"
    Then I should see a fare "SDS" on "01003" that is "4300" pence

  Scenario: Clustered fare overridden by an NLC flow between BRN and LCB
    Given a query between "BRN" and "LCB" on "2020-04-04" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "4195" pence

  Scenario: Clustered fare overridden by an NLC flow between DAL and ARA
    Given a query between "DAL" and "ARA" on "2020-04-04" at "10:00"
    Then I should see a fare "SOR" on "01000" that is "5490" pence

