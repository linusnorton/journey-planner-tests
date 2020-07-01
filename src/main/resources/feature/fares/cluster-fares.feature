@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between HTF and LJL
    Given a query between "HTF" and "LJL" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "00254" that is "990" pence

  Scenario: Clustered fare overridden by an NLC flow between NCL and DUU
    Given a query between "NCL" and "DUU" on "2020-08-01" at "10:00"
    Then I should see a fare "ODS" on "00481" that is "2780" pence

  Scenario: Clustered fare overridden by an NLC flow between NWE and EDR
    Given a query between "NWE" and "EDR" on "2020-08-01" at "10:00"
    Then I should see a fare "FDS" on "00000" that is "2360" pence

  Scenario: Clustered fare overridden by an NLC flow between PTK and LCB
    Given a query between "PTK" and "LCB" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "4195" pence

  Scenario: Clustered fare overridden by an NLC flow between NMT and QDK
    Given a query between "NMT" and "QDK" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "00074" that is "1810" pence

