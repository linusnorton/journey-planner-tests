Feature: Clustered fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "HNT" and "EDA" on "2020-03-22" at "10:00"
    Then I should see a fare "SDS" on "01003" that is "4590" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "ANL" and "LCB" on "2020-03-22" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "4195" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "NUM" and "PBR" on "2020-03-22" at "10:00"
    Then I should see a fare "SDR" on "00000" that is "2070" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "ABD" and "EDA" on "2020-03-22" at "10:00"
    Then I should see a fare "SVR" on "01003" that is "5830" pence

  Scenario: Clustered fare overridden by an NLC flow
    Given a query between "DMY" and "CTB" on "2020-03-22" at "10:00"
    Then I should see a fare "SOR" on "00000" that is "7010" pence

