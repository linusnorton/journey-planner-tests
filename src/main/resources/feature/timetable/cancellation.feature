@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between LDS and HUD is cancelled on a particular day
    Given a query between "LDS" and "HUD" on "2020-07-20" at "23:47"
    Then I should see a service "C05448" that stops at
      | stop | arrival | departure |
      | LDS  | --:--   | 23:47     |
      | COT  | 23:52   | 23:52     |
      | MLY  | 23:55   | 23:56     |
      | BTL  | 00:01   | 00:02     |
      | DEW  | 00:03   | 00:03     |
      | RVN  | 00:06   | 00:07     |
      | MIR  | 00:10   | 00:11     |
      | DHN  | 00:17   | 00:17     |
      | HUD  | 00:22   | --:--     |
    When I query between "LDS" and "HUD" on "2020-07-27" at "23:47"
    Then I should not see a service "C05448" in the results

  Scenario: Service between HUD and LDS is cancelled on a particular day
    Given a query between "HUD" and "LDS" on "2020-07-20" at "23:54"
    Then I should see a service "C05445" that stops at
      | stop | arrival | departure |
      | HUD  | --:--   | 23:54     |
      | DHN  | 23:57   | 23:58     |
      | MIR  | 00:03   | 00:03     |
      | RVN  | 00:07   | 00:08     |
      | DEW  | 00:10   | 00:10     |
      | BTL  | 00:13   | 00:13     |
      | MLY  | 00:18   | 00:18     |
      | COT  | 00:21   | 00:22     |
      | LDS  | 00:29   | --:--     |
    When I query between "HUD" and "LDS" on "2020-07-27" at "23:54"
    Then I should not see a service "C05445" in the results

