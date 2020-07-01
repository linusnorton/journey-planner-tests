@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between ACB and LJL
    Given a query between "ACB" and "LJL" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "00254" that is "860" pence

  Scenario: Clustered fare overridden by an NLC flow between CSA and ECW
    Given a query between "CSA" and "ECW" on "2020-08-01" at "10:00"
    Then I should see a fare "FDS" on "01000" that is "2700" pence

  Scenario: Clustered fare overridden by an NLC flow between BDG and EDA
    Given a query between "BDG" and "EDA" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "00643" that is "1620" pence

  Scenario: Clustered fare overridden by an NLC flow between NMK and QDK
    Given a query between "NMK" and "QDK" on "2020-08-01" at "10:00"
    Then I should see a fare "CDS" on "00074" that is "2200" pence

  Scenario: Clustered fare overridden by an NLC flow between BSH and ELS
    Given a query between "BSH" and "ELS" on "2020-08-01" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1490" pence

