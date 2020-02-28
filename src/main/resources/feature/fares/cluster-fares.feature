@fares
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between HCH and QMB
    Given a query between "HCH" and "QMB" on "2020-03-28" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1480" pence

  Scenario: Clustered fare overridden by an NLC flow between KEH and EDA
    Given a query between "KEH" and "EDA" on "2020-03-28" at "10:00"
    Then I should see a fare "SDS" on "01003" that is "5020" pence

  Scenario: Clustered fare overridden by an NLC flow between HPD and DON
    Given a query between "HPD" and "DON" on "2020-03-28" at "10:00"
    Then I should see a fare "SSS" on "00595" that is "7600" pence

  Scenario: Clustered fare overridden by an NLC flow between LTN and DON
    Given a query between "LTN" and "DON" on "2020-03-28" at "10:00"
    Then I should see a fare "SSR" on "00595" that is "8050" pence

  Scenario: Clustered fare overridden by an NLC flow between BRN and ARA
    Given a query between "BRN" and "ARA" on "2020-03-28" at "10:00"
    Then I should see a fare "SOR" on "00000" that is "6300" pence

