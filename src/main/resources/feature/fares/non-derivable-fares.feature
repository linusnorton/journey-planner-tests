@fares @pending
Feature: Non-derivable fares
  A non-derivable fare should be used instead of a flow fare provided they have the same
  origin, destination route code

  Scenario: Non-derivable overriding a flow fare between CNM and GCR
    Given a query between "CNM" and "GCR" on "2020-04-10" at "10:00"
    Then I should see a fare "SDR" on "00271" that is "470" pence

  Scenario: Non-derivable overriding a flow fare between CNM and GCR
    Given a query between "CNM" and "GCR" on "2020-04-10" at "10:00"
    Then I should see a fare "SDR" on "00271" that is "470" pence

  Scenario: Non-derivable overriding a flow fare between CNM and GCR
    Given a query between "CNM" and "GCR" on "2020-04-10" at "10:00"
    Then I should see a fare "SDR" on "00271" that is "470" pence

  Scenario: Non-derivable overriding a flow fare between GCR and CNM
    Given a query between "GCR" and "CNM" on "2020-04-10" at "10:00"
    Then I should see a fare "SDR" on "00271" that is "470" pence

  Scenario: Non-derivable overriding a flow fare between GCR and CNM
    Given a query between "GCR" and "CNM" on "2020-04-10" at "10:00"
    Then I should see a fare "SDR" on "00271" that is "470" pence

