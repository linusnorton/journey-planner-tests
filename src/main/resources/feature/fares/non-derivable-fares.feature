@fares
Feature: Non-derivable fares
  A non-derivable fare should be used instead of a flow fare provided they have the same
  origin, destination route code

  Scenario: Non-derivable overriding a flow fare between RYP and PMH
    Given a query between "RYP" and "PMH" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "00243" that is "1610" pence

  Scenario: Non-derivable overriding a flow fare between HAB and RET
    Given a query between "HAB" and "RET" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "00631" that is "1500" pence

  Scenario: Non-derivable overriding a flow fare between BTB and RET
    Given a query between "BTB" and "RET" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "00631" that is "1500" pence

  Scenario: Non-derivable overriding a flow fare between SCU and RET
    Given a query between "SCU" and "RET" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "00631" that is "1300" pence

  Scenario: Non-derivable overriding a flow fare between RET and HAB
    Given a query between "RET" and "HAB" on "2020-06-20" at "10:00"
    Then I should see a fare "SDS" on "00631" that is "1500" pence

