@fares
Feature: Group member fares fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between STP and 1072
    Given a query between "STP" and "1072" on "2020-03-28" at "10:00"
    Then I should see a fare "FDR" on "00000" that is "9690" pence
    And I should see a fare "FDR" on "00131" that is "10230" pence

  Scenario: Clustered fare overridden by an NLC flow between STP and 1072
    Given a query between "STP" and "1072" on "2020-03-28" at "10:00"
    Then I should see a fare "FDS" on "00000" that is "5100" pence
    And I should see a fare "FDS" on "00131" that is "5430" pence

  Scenario: Clustered fare overridden by an NLC flow between STP and 1072
    Given a query between "STP" and "1072" on "2020-03-28" at "10:00"
    Then I should see a fare "SDR" on "00000" that is "5680" pence
    And I should see a fare "SDR" on "00131" that is "6440" pence

  Scenario: Clustered fare overridden by an NLC flow between STP and 1072
    Given a query between "STP" and "1072" on "2020-03-28" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3180" pence
    And I should see a fare "SDS" on "00131" that is "3600" pence

  Scenario: Clustered fare overridden by an NLC flow between STP and 1072
    Given a query between "STP" and "1072" on "2020-03-28" at "10:00"
    Then I should see a fare "SVR" on "00000" that is "3920" pence
    And I should see a fare "SVR" on "00131" that is "4750" pence

