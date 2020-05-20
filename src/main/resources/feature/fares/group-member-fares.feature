@fares @pending
Feature: Group member fares fares
  A clustered fare should be overridden by a fare to an NLC

  Scenario: Clustered fare overridden by an NLC flow between 0254 and 1072
    Given a query between "0254" and "1072" on "2020-06-20" at "10:00"
    Then I should see a fare "FDS" on "00000" that is "5100" pence
    And I should see a fare "FDS" on "00131" that is "5430" pence

  Scenario: Clustered fare overridden by an NLC flow between 0254 and 1072
    Given a query between "0254" and "1072" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3180" pence
    And I should see a fare "SDS" on "00131" that is "3600" pence

  Scenario: Clustered fare overridden by an NLC flow between 0254 and 1072
    Given a query between "0254" and "1072" on "2020-06-20" at "10:00"
    Then I should see a fare "FDS" on "00000" that is "5100" pence
    And I should see a fare "FDS" on "00131" that is "5430" pence

  Scenario: Clustered fare overridden by an NLC flow between 0254 and 1072
    Given a query between "0254" and "1072" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "00000" that is "3180" pence
    And I should see a fare "SDS" on "00131" that is "3600" pence

  Scenario: Clustered fare overridden by an NLC flow between 0259 and 1072
    Given a query between "0259" and "1072" on "2020-06-20" at "10:00"
    Then I should see a fare "FDS" on "00000" that is "2690" pence
    And I should see a fare "FDS" on "00208" that is "2700" pence

