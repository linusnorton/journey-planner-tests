@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between AUD and EDR
    Given a query between "AUD" and "EDR" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1720" pence

  Scenario: Clustered fare overridden by an NLC flow between AUD and EDR
    Given a query between "AUD" and "EDR" on "2020-06-20" at "10:00"
    Then I should see a fare "FDS" on "00000" that is "2590" pence

  Scenario: Clustered fare overridden by an NLC flow between DYC and EDA
    Given a query between "DYC" and "EDA" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "01003" that is "4590" pence

  Scenario: Clustered fare overridden by an NLC flow between FCN and DFD
    Given a query between "FCN" and "DFD" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "480" pence

  Scenario: Clustered fare overridden by an NLC flow between MTG and DFD
    Given a query between "MTG" and "DFD" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "480" pence

