Feature: Non-derivable fares
  A non-derivable fare should be used instead of a flow fare provided they have the same
  origin, destination route code

  Scenario: Non-derivable overriding a flow fare
    Given a query between "CNM" and "GCR" on "2020-03-24" at "10:00"
    Then I should see a fare "SDR" on "00271" that is "470" pence

  Scenario: Non-derivable overriding a flow fare
    Given a query between "GCR" and "CNM" on "2020-03-24" at "10:00"
    Then I should see a fare "SDR" on "00271" that is "470" pence

  Scenario: Non-derivable overriding a flow fare
    Given a query between "RYP" and "PMH" on "2020-03-24" at "10:00"
    Then I should see a fare "SDR" on "00981" that is "1760" pence

  Scenario: Non-derivable overriding a flow fare
    Given a query between "HAB" and "RET" on "2020-03-24" at "10:00"
    Then I should see a fare "SDR" on "00631" that is "1750" pence

  Scenario: Non-derivable overriding a flow fare
    Given a query between "BTB" and "RET" on "2020-03-24" at "10:00"
    Then I should see a fare "SDR" on "00631" that is "1750" pence

