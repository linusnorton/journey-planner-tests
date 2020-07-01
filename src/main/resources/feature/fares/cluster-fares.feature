@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between HLS and ECW
    Given a query between "HLS" and "ECW" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "01000" that is "2150" pence

  Scenario: Clustered fare overridden by an NLC flow between LNZ and EDA
    Given a query between "LNZ" and "EDA" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "00644" that is "1720" pence

  Scenario: Clustered fare overridden by an NLC flow between BVD and DFD
    Given a query between "BVD" and "DFD" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "410" pence

  Scenario: Clustered fare overridden by an NLC flow between ESM and EDR
    Given a query between "ESM" and "EDR" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1400" pence

  Scenario: Clustered fare overridden by an NLC flow between PTK and LCB
    Given a query between "PTK" and "LCB" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "4195" pence

