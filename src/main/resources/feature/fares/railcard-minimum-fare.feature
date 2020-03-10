@fares @not-summer
Feature: Railcard minimum fares
  A minimum fare should be applied to certain fares at certain times.
  Note that these scenarios don't apply in summer as min fares don't apply

  Scenario: Minimum fare of £12.00 between HGS and TON
    Given a query between "HGS" and "TON" on "a weekday" at "09:00" with a "YNG" railcard
    Then I should see a fare "SDS" on "01000" that is "1200" pence
    And I should see a fare "SDS" on "01000" that is "1135" pence

