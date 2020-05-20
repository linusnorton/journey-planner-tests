@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between SOV and LST is cancelled on a particular day
    Given a query between "SOV" and "LST" on "2020-06-08" at "21:10"
    Then I should see a service "P07557" that stops at
      | stop | arrival | departure |
      | SOV  | --:--   | 21:10     |
      | PRL  | 21:12   | 21:12     |
      | SIA  | 21:15   | 21:15     |
      | RFD  | 21:18   | 21:18     |
      | HOC  | 21:22   | 21:22     |
      | RLG  | 21:26   | 21:26     |
      | WIC  | 21:31   | 21:31     |
      | BIC  | 21:37   | 21:37     |
      | SNF  | 21:45   | 21:45     |
      | RMF  | 21:53   | 21:53     |
      | SRA  | 22:02   | 22:02     |
      | LST  | 22:10   | --:--     |
    When I query between "SOV" and "LST" on "2020-06-15" at "21:10"
    Then I should not see a service "P07557" in the results

  Scenario: Service between LST and SNF is cancelled on a particular day
    Given a query between "LST" and "SNF" on "2020-06-08" at "21:00"
    Then I should see a service "P60644" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 21:00     |
      | SRA  | 21:07   | 21:07     |
      | MYL  | 21:09   | 21:09     |
      | FOG  | 21:11   | 21:11     |
      | MNP  | 21:13   | 21:13     |
      | IFD  | 21:16   | 21:16     |
      | SVK  | 21:18   | 21:18     |
      | GMY  | 21:20   | 21:20     |
      | CTH  | 21:22   | 21:22     |
      | RMF  | 21:26   | 21:26     |
      | GDP  | 21:30   | 21:30     |
      | HRO  | 21:33   | 21:33     |
      | BRE  | 21:37   | 21:37     |
      | SNF  | 21:43   | --:--     |
    When I query between "LST" and "SNF" on "2020-06-15" at "21:00"
    Then I should not see a service "P60644" in the results

  Scenario: Service between LST and SNF is cancelled on a particular day
    Given a query between "LST" and "SNF" on "2020-06-08" at "22:00"
    Then I should see a service "P60139" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 22:00     |
      | SRA  | 22:07   | 22:07     |
      | MYL  | 22:09   | 22:09     |
      | FOG  | 22:11   | 22:11     |
      | MNP  | 22:13   | 22:13     |
      | IFD  | 22:16   | 22:16     |
      | SVK  | 22:18   | 22:18     |
      | GMY  | 22:20   | 22:20     |
      | CTH  | 22:22   | 22:22     |
      | RMF  | 22:26   | 22:26     |
      | GDP  | 22:30   | 22:30     |
      | HRO  | 22:33   | 22:33     |
      | BRE  | 22:37   | 22:37     |
      | SNF  | 22:43   | --:--     |
    When I query between "LST" and "SNF" on "2020-06-15" at "22:00"
    Then I should not see a service "P60139" in the results

  Scenario: Service between LDS and HUD is cancelled on a particular day
    Given a query between "LDS" and "HUD" on "2020-06-08" at "23:47"
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
    When I query between "LDS" and "HUD" on "2020-06-15" at "23:47"
    Then I should not see a service "C05448" in the results

  Scenario: Service between LST and SOV is cancelled on a particular day
    Given a query between "LST" and "SOV" on "2020-06-08" at "21:35"
    Then I should see a service "P05843" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 21:35     |
      | SRA  | 21:42   | 21:42     |
      | SNF  | 21:57   | 21:59     |
      | BIC  | 22:05   | 22:05     |
      | WIC  | 22:11   | 22:11     |
      | RLG  | 22:16   | 22:16     |
      | HOC  | 22:21   | 22:21     |
      | RFD  | 22:24   | 22:24     |
      | SIA  | 22:27   | 22:27     |
      | PRL  | 22:29   | 22:30     |
      | SOV  | 22:34   | --:--     |
    When I query between "LST" and "SOV" on "2020-06-15" at "21:35"
    Then I should not see a service "P05843" in the results

