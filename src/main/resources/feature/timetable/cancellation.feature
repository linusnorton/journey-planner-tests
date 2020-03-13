@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between LTV and LOB is cancelled on a particular day
    Given a query between "LTV" and "LOB" on "2020-04-06" at "09:50"
    Then I should see a service "P82486" that stops at
      | stop | arrival | departure |
      | LTV  | --:--   | 09:50     |
      | LIC  | 09:53   | 09:54     |
      | SEN  | 09:59   | 09:59     |
      | BKT  | 10:02   | 10:02     |
      | BUL  | 10:03   | 10:04     |
      | FOK  | 10:06   | 10:06     |
      | SUT  | 10:10   | 10:10     |
      | WYL  | 10:12   | 10:12     |
      | CRD  | 10:14   | 10:14     |
      | ERD  | 10:17   | 10:17     |
      | GVH  | 10:19   | 10:19     |
      | AST  | 10:23   | 10:23     |
      | BHM  | 10:31   | 10:33     |
      | FWY  | 10:36   | 10:37     |
      | UNI  | 10:40   | 10:41     |
      | SLY  | 10:43   | 10:43     |
      | BRV  | 10:46   | 10:46     |
      | KNN  | 10:48   | 10:49     |
      | NFD  | 10:52   | 10:52     |
      | LOB  | 10:54   | --:--     |
    When I query between "LTV" and "LOB" on "2020-04-13" at "09:50"
    Then I should not see a service "P82486" in the results

  Scenario: Service between EUS and SHR is cancelled on a particular day
    Given a query between "EUS" and "SHR" on "2020-04-06" at "18:23"
    Then I should see a service "C73635" that stops at
      | stop | arrival | departure |
      | EUS  | --:--   | 18:23     |
      | WFJ  | --:--   | 18:37     |
      | COV  | 19:22   | 19:22     |
      | BHI  | 19:33   | 19:33     |
      | BHM  | 19:44   | 19:50     |
      | SAD  | 19:58   | 19:59     |
      | WVH  | 20:11   | 20:18     |
      | TFC  | 20:34   | 20:35     |
      | WLN  | 20:41   | 20:42     |
      | SHR  | 20:55   | --:--     |
    When I query between "EUS" and "SHR" on "2020-04-13" at "18:23"
    Then I should not see a service "C73635" in the results

  Scenario: Service between EUS and WFJ is cancelled on a particular day
    Given a query between "EUS" and "WFJ" on "2020-04-06" at "14:45"
    Then I should see a service "L42490" that stops at
      | stop | arrival | departure |
      | EUS  | --:--   | 14:45     |
      | SOH  | 14:50   | 14:50     |
      | KBN  | 14:52   | 14:52     |
      | QPW  | 14:54   | 14:54     |
      | KNL  | 14:56   | 14:56     |
      | WIJ  | 14:59   | 14:59     |
      | HDN  | 15:01   | 15:01     |
      | SBP  | 15:04   | 15:04     |
      | WMB  | 15:06   | 15:06     |
      | NWB  | 15:08   | 15:08     |
      | SOK  | 15:10   | 15:10     |
      | KNT  | 15:12   | 15:12     |
      | HRW  | 15:15   | 15:15     |
      | HDL  | 15:18   | 15:18     |
      | HTE  | 15:20   | 15:20     |
      | CPK  | 15:23   | 15:23     |
      | BSH  | 15:26   | 15:26     |
      | WFH  | 15:29   | 15:29     |
      | WFJ  | 15:33   | --:--     |
    When I query between "EUS" and "WFJ" on "2020-04-13" at "14:45"
    Then I should not see a service "L42490" in the results

  Scenario: Service between SEF and BTN is cancelled on a particular day
    Given a query between "SEF" and "BTN" on "2020-04-06" at "09:53"
    Then I should see a service "L03661" that stops at
      | stop | arrival | departure |
      | SEF  | --:--   | 09:53     |
      | BIP  | 09:55   | 09:55     |
      | NVH  | 09:59   | 09:59     |
      | NVN  | 10:00   | 10:01     |
      | SEE  | 10:05   | 10:05     |
      | LWS  | 10:11   | 10:13     |
      | FMR  | 10:20   | 10:20     |
      | MCB  | 10:24   | 10:24     |
      | LRB  | 10:27   | 10:27     |
      | BTN  | 10:30   | --:--     |
    When I query between "SEF" and "BTN" on "2020-04-13" at "09:53"
    Then I should not see a service "L03661" in the results

  Scenario: Service between HSL and WAT is cancelled on a particular day
    Given a query between "HSL" and "WAT" on "2020-04-06" at "13:40"
    Then I should see a service "W19071" that stops at
      | stop | arrival | departure |
      | HSL  | --:--   | 13:40     |
      | WTY  | 13:46   | 13:46     |
      | MLF  | 13:50   | 13:50     |
      | GOD  | 13:53   | 13:54     |
      | FNC  | 13:57   | 13:57     |
      | GLD  | 14:02   | 14:04     |
      | WOK  | 14:11   | 14:12     |
      | CLJ  | 14:32   | 14:33     |
      | WAT  | 14:40   | --:--     |
    When I query between "HSL" and "WAT" on "2020-04-13" at "13:40"
    Then I should not see a service "W19071" in the results

