@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between MLN and CRU
    Given a query between "MLN" and "CRU" on "2020-04-10" at "10:00"
    Then I should see a fare "SVR" on "00000" that is "4350" pence

  Scenario: Clustered fare overridden by an NLC flow between GRS and EDA
    Given a query between "GRS" and "EDA" on "2020-04-10" at "10:00"
    Then I should see a fare "SDR" on "00644" that is "3400" pence

  Scenario: Clustered fare overridden by an NLC flow between JOR and ARA
    Given a query between "JOR" and "ARA" on "2020-04-10" at "10:00"
    Then I should see a fare "SOR" on "00000" that is "6300" pence

  Scenario: Clustered fare overridden by an NLC flow between GTW and DON
    Given a query between "GTW" and "DON" on "2020-04-10" at "10:00"
    Then I should see a fare "SOR" on "00595" that is "18900" pence

  Scenario: Clustered fare overridden by an NLC flow between CYK and ARA
    Given a query between "CYK" and "ARA" on "2020-04-10" at "10:00"
    Then I should see a fare "SOR" on "00000" that is "6110" pence

