@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between BSV and QMB
    Given a query between "BSV" and "QMB" on "2020-04-30" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1430" pence

  Scenario: Clustered fare overridden by an NLC flow between HPD and DON
    Given a query between "HPD" and "DON" on "2020-04-30" at "10:00"
    Then I should see a fare "SSR" on "00595" that is "8350" pence

  Scenario: Clustered fare overridden by an NLC flow between BRO and ARA
    Given a query between "BRO" and "ARA" on "2020-04-30" at "10:00"
    Then I should see a fare "SDS" on "01000" that is "3440" pence

  Scenario: Clustered fare overridden by an NLC flow between PTK and ARA
    Given a query between "PTK" and "ARA" on "2020-04-30" at "10:00"
    Then I should see a fare "SOR" on "00000" that is "6490" pence

  Scenario: Clustered fare overridden by an NLC flow between BDG and EDA
    Given a query between "BDG" and "EDA" on "2020-04-30" at "10:00"
    Then I should see a fare "SDR" on "00643" that is "2810" pence

