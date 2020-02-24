Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "LUT" and "GRA" on "2020-03-24" at "10:00"
    Then I should see a fare "SVR" on "00595" that is "9400" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "ALW" and "NCL" on "2020-03-24" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1530" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "BTN" and "DON" on "2020-03-24" at "10:00"
    Then I should see a fare "SOR" on "00595" that is "21900" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "BIS" and "EDR" on "2020-03-24" at "10:00"
    Then I should see a fare "FDR" on "00000" that is "3650" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "BRN" and "ARA" on "2020-03-24" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3830" pence

