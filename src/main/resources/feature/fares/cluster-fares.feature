@fares @pending
Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between BLG and EDA
    Given a query between "BLG" and "EDA" on "2020-08-10" at "10:00"
    Then I should see a fare "SDS" on "00644" that is "1970" pence

  Scenario: Clustered fare overridden by an NLC flow between PLU and DFD
    Given a query between "PLU" and "DFD" on "2020-08-10" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "480" pence

  Scenario: Clustered fare overridden by an NLC flow between LNZ and EDA
    Given a query between "LNZ" and "EDA" on "2020-08-10" at "10:00"
    Then I should see a fare "SDS" on "00643" that is "1780" pence

  Scenario: Clustered fare overridden by an NLC flow between EVE and LMN
    Given a query between "EVE" and "LMN" on "2020-08-10" at "10:00"
    Then I should see a fare "SDS" on "01000" that is "750" pence

  Scenario: Clustered fare overridden by an NLC flow between ALW and NCL
    Given a query between "ALW" and "NCL" on "2020-08-10" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "1530" pence

