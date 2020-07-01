@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between LST and SNF is cancelled on a particular day
    Given a query between "LST" and "SNF" on "2020-07-20" at "22:00"
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
    When I query between "LST" and "SNF" on "2020-07-27" at "22:00"
    Then I should not see a service "P60139" in the results

  Scenario: Service between MAN and HAZ is cancelled on a particular day
    Given a query between "MAN" and "HAZ" on "2020-07-24" at "23:24"
    Then I should see a service "C32654" that stops at
      | stop | arrival | departure |
      | MAN  | --:--   | 23:24     |
      | LVM  | 23:30   | 23:30     |
      | HTC  | 23:33   | 23:33     |
      | SPT  | 23:36   | 23:37     |
      | DVN  | 23:40   | 23:40     |
      | WSR  | 23:42   | 23:43     |
      | HAZ  | 23:45   | --:--     |
    When I query between "MAN" and "HAZ" on "2020-07-31" at "23:24"
    Then I should not see a service "C32654" in the results

  Scenario: Service between PRE and CNE is cancelled on a particular day
    Given a query between "PRE" and "CNE" on "2020-07-20" at "05:05"
    Then I should see a service "C33678" that stops at
      | stop | arrival | departure |
      | PRE  | --:--   | 05:05     |
      | BBN  | 05:22   | 05:23     |
      | RIS  | 05:28   | 05:28     |
      | CTW  | 05:31   | 05:31     |
      | ACR  | 05:34   | 05:34     |
      | HCT  | 05:39   | 05:39     |
      | HPN  | 05:42   | 05:42     |
      | RSG  | 05:45   | 05:45     |
      | BUB  | 05:48   | 05:48     |
      | BNC  | 05:51   | 05:51     |
      | BRF  | 05:56   | 05:56     |
      | NEL  | 05:59   | 05:59     |
      | CNE  | 06:06   | --:--     |
    When I query between "PRE" and "CNE" on "2020-07-27" at "05:05"
    Then I should not see a service "C33678" in the results

  Scenario: Service between SNF and LST is cancelled on a particular day
    Given a query between "SNF" and "LST" on "2020-07-20" at "21:34"
    Then I should see a service "P60678" that stops at
      | stop | arrival | departure |
      | SNF  | --:--   | 21:34     |
      | BRE  | 21:37   | 21:37     |
      | HRO  | 21:42   | 21:42     |
      | GDP  | 21:46   | 21:46     |
      | RMF  | 21:48   | 21:48     |
      | CTH  | 21:52   | 21:52     |
      | GMY  | 21:54   | 21:54     |
      | SVK  | 21:56   | 21:56     |
      | IFD  | 21:59   | 21:59     |
      | MNP  | 22:02   | 22:02     |
      | FOG  | 22:04   | 22:04     |
      | MYL  | 22:06   | 22:06     |
      | SRA  | 22:08   | 22:09     |
      | LST  | 22:17   | --:--     |
    When I query between "SNF" and "LST" on "2020-07-27" at "21:34"
    Then I should not see a service "P60678" in the results

  Scenario: Service between BPN and YRK is cancelled on a particular day
    Given a query between "BPN" and "YRK" on "2020-07-21" at "21:18"
    Then I should see a service "L17767" that stops at
      | stop | arrival | departure |
      | BPN  | --:--   | 21:18     |
      | PFY  | 21:23   | 21:24     |
      | PRE  | 21:40   | 21:44     |
      | BBN  | 22:01   | 22:01     |
      | ACR  | 22:09   | 22:09     |
      | BYM  | 22:18   | 22:18     |
      | HBD  | 22:39   | 22:40     |
      | HFX  | 22:50   | 22:51     |
      | BDI  | 23:03   | 23:05     |
      | NPD  | 23:13   | 23:14     |
      | LDS  | 23:24   | 23:25     |
      | CRG  | 23:31   | 23:31     |
      | GRF  | 23:35   | 23:35     |
      | EGF  | 23:37   | 23:37     |
      | MIK  | 23:40   | 23:41     |
      | CHF  | 23:46   | 23:47     |
      | YRK  | 23:59   | --:--     |
    When I query between "BPN" and "YRK" on "2020-07-28" at "21:18"
    Then I should not see a service "L17767" in the results

