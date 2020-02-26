Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "JOR" and "ARA" on "2020-03-26" at "10:00"
    Then I should see a fare "SOR" on "00000" that is "6280" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "CLY" and "QMA" on "2020-03-26" at "10:00"
    Then I should see a fare "CDS" on "00000" that is "1140" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "CRR" and "ARA" on "2020-03-26" at "10:00"
    Then I should see a fare "SDS" on "01000" that is "2750" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "CLY" and "QMC" on "2020-03-26" at "10:00"
    Then I should see a fare "CDS" on "00000" that is "1380" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "CYK" and "ARA" on "2020-03-26" at "10:00"
    Then I should see a fare "SVR" on "00000" that is "5540" pence

