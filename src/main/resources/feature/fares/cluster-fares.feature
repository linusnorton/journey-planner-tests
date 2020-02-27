@fares
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between HPD and GRA
    Given a query between "HPD" and "GRA" on "2020-03-27" at "10:00"
    Then I should see a fare "SVR" on "00595" that is "9400" pence

  Scenario: Clustered fare overridden by an NLC flow between LCS and CTB
    Given a query between "LCS" and "CTB" on "2020-03-27" at "10:00"
    Then I should see a fare "SOR" on "01000" that is "7630" pence

  Scenario: Clustered fare overridden by an NLC flow between BCC and QDK
    Given a query between "BCC" and "QDK" on "2020-03-27" at "10:00"
    Then I should see a fare "SDS" on "00074" that is "1780" pence

  Scenario: Clustered fare overridden by an NLC flow between BSL and CTB
    Given a query between "BSL" and "CTB" on "2020-03-27" at "10:00"
    Then I should see a fare "SDS" on "01000" that is "4820" pence

  Scenario: Clustered fare overridden by an NLC flow between PLN and EDA
    Given a query between "PLN" and "EDA" on "2020-03-27" at "10:00"
    Then I should see a fare "SVR" on "01002" that is "6100" pence

