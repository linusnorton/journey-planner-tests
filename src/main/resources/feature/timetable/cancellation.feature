@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between SNF and LST is cancelled on a particular day
    Given a query between "SNF" and "LST" on "2020-06-08" at "21:34"
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
    When I query between "SNF" and "LST" on "2020-06-15" at "21:34"
    Then I should not see a service "P60678" in the results

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

  Scenario: Service between EXD and YVJ is cancelled on a particular day
    Given a query between "EXD" and "YVJ" on "2020-06-08" at "23:27"
    Then I should see a service "W16934" that stops at
      | stop | arrival | departure |
      | EXD  | --:--   | 23:27     |
      | EXC  | 23:30   | 23:31     |
      | YVJ  | 00:30   | --:--     |
    When I query between "EXD" and "YVJ" on "2020-06-15" at "23:27"
    Then I should not see a service "W16934" in the results

  Scenario: Service between LST and ENF is cancelled on a particular day
    Given a query between "LST" and "ENF" on "2020-06-08" at "22:30"
    Then I should see a service "C93923" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 22:30     |
      | BET  | 22:33   | 22:33     |
      | CBH  | 22:35   | 22:35     |
      | LOF  | 22:37   | 22:37     |
      | HAC  | 22:39   | 22:39     |
      | REC  | 22:42   | 22:42     |
      | SKW  | 22:43   | 22:43     |
      | SMH  | 22:45   | 22:45     |
      | SVS  | 22:47   | 22:48     |
      | BCV  | 22:50   | 22:50     |
      | WHL  | 22:52   | 22:52     |
      | SLV  | 22:54   | 22:54     |
      | EDR  | 22:56   | 22:56     |
      | BHK  | 22:59   | 22:59     |
      | ENF  | 23:03   | --:--     |
    When I query between "LST" and "ENF" on "2020-06-15" at "22:30"
    Then I should not see a service "C93923" in the results

  Scenario: Service between LST and CHN is cancelled on a particular day
    Given a query between "LST" and "CHN" on "2020-06-08" at "23:15"
    Then I should see a service "C92054" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 23:15     |
      | BET  | 23:18   | 23:18     |
      | CBH  | 23:20   | 23:20     |
      | LOF  | 23:22   | 23:22     |
      | HAC  | 23:24   | 23:24     |
      | REC  | 23:27   | 23:27     |
      | SKW  | 23:28   | 23:28     |
      | SMH  | 23:30   | 23:30     |
      | SVS  | 23:32   | 23:33     |
      | BCV  | 23:35   | 23:35     |
      | WHL  | 23:37   | 23:37     |
      | SLV  | 23:39   | 23:39     |
      | EDR  | 23:41   | 23:41     |
      | SBU  | 23:44   | 23:44     |
      | TUR  | 23:47   | 23:47     |
      | TEO  | 23:50   | 23:50     |
      | CHN  | 23:54   | --:--     |
    When I query between "LST" and "CHN" on "2020-06-15" at "23:15"
    Then I should not see a service "C92054" in the results

