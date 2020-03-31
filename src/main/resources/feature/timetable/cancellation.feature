@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between TBD and BDM is cancelled on a particular day
    Given a query between "TBD" and "BDM" on "2020-04-21" at "04:15"
    Then I should see a service "W41228" that stops at
      | stop | arrival | departure |
      | TBD  | --:--   | 04:15     |
      | GTW  | 04:19   | 04:21     |
      | ECR  | 04:39   | 04:40     |
      | BFR  | 05:06   | 05:06     |
      | CTK  | 05:08   | 05:08     |
      | ZFD  | 05:10   | 05:11     |
      | STP  | 05:15   | 05:16     |
      | WHP  | 05:24   | 05:24     |
      | SAC  | 05:40   | 05:41     |
      | HPD  | 05:47   | 05:47     |
      | LTN  | 05:52   | 05:52     |
      | LUT  | 05:56   | 05:57     |
      | LEA  | 06:01   | 06:01     |
      | HLN  | 06:05   | 06:05     |
      | FLT  | 06:09   | 06:09     |
      | BDM  | 06:21   | --:--     |
    When I query between "TBD" and "BDM" on "2020-04-28" at "04:15"
    Then I should not see a service "W41228" in the results

  Scenario: Service between DLJ and CLJ is cancelled on a particular day
    Given a query between "DLJ" and "CLJ" on "2020-04-20" at "23:19"
    Then I should see a service "L46802" that stops at
      | stop | arrival | departure |
      | DLJ  | --:--   | 23:19     |
      | HGG  | 23:21   | 23:21     |
      | HOX  | 23:23   | 23:23     |
      | SDC  | 23:25   | 23:25     |
      | ZLW  | 23:27   | 23:28     |
      | SDE  | 23:30   | 23:30     |
      | WPE  | 23:32   | 23:32     |
      | ROE  | 23:33   | 23:33     |
      | ZCW  | 23:35   | 23:35     |
      | SQE  | 23:37   | 23:37     |
      | QRP  | 23:43   | 23:44     |
      | PMR  | 23:46   | 23:48     |
      | DMK  | 23:51   | 23:52     |
      | CLP  | 23:56   | 23:56     |
      | WWR  | 23:58   | 23:58     |
      | CLJ  | 00:09   | --:--     |
    When I query between "DLJ" and "CLJ" on "2020-04-27" at "23:19"
    Then I should not see a service "L46802" in the results

  Scenario: Service between AFK and CBW is cancelled on a particular day
    Given a query between "AFK" and "CBW" on "2020-04-23" at "01:07"
    Then I should see a service "W47768" that stops at
      | stop | arrival | departure |
      | AFK  | --:--   | 01:07     |
      | WYE  | 01:13   | --:--     |
      | CIL  | 01:19   | --:--     |
      | CRT  | 01:23   | --:--     |
      | CBW  | 01:30   | --:--     |
    When I query between "AFK" and "CBW" on "2020-04-30" at "01:07"
    Then I should not see a service "W47768" in the results

  Scenario: Service between BHM and HNF is cancelled on a particular day
    Given a query between "BHM" and "HNF" on "2020-04-20" at "23:18"
    Then I should see a service "P82191" that stops at
      | stop | arrival | departure |
      | BHM  | --:--   | 23:18     |
      | DUD  | 23:23   | 23:23     |
      | AST  | 23:26   | 23:27     |
      | WTT  | 23:29   | 23:29     |
      | PRY  | 23:31   | 23:32     |
      | HSD  | 23:35   | 23:35     |
      | TAB  | 23:38   | 23:39     |
      | BSC  | 23:41   | 23:41     |
      | WSL  | 23:47   | 23:48     |
      | BLX  | 23:53   | 23:53     |
      | BWN  | 23:55   | 23:55     |
      | LAW  | 23:59   | 23:59     |
      | CAO  | 00:03   | 00:04     |
      | HNF  | 00:08   | --:--     |
    When I query between "BHM" and "HNF" on "2020-04-27" at "23:18"
    Then I should not see a service "P82191" in the results

  Scenario: Service between DLJ and CLJ is cancelled on a particular day
    Given a query between "DLJ" and "CLJ" on "2020-04-20" at "23:04"
    Then I should see a service "L46799" that stops at
      | stop | arrival | departure |
      | DLJ  | --:--   | 23:04     |
      | HGG  | 23:06   | 23:06     |
      | HOX  | 23:08   | 23:08     |
      | SDC  | 23:10   | 23:10     |
      | ZLW  | 23:12   | 23:13     |
      | SDE  | 23:15   | 23:15     |
      | WPE  | 23:17   | 23:17     |
      | ROE  | 23:18   | 23:18     |
      | ZCW  | 23:20   | 23:20     |
      | SQE  | 23:22   | 23:22     |
      | QRP  | 23:28   | 23:29     |
      | PMR  | 23:31   | 23:33     |
      | DMK  | 23:36   | 23:37     |
      | CLP  | 23:41   | 23:41     |
      | WWR  | 23:43   | 23:43     |
      | CLJ  | 23:49   | --:--     |
    When I query between "DLJ" and "CLJ" on "2020-04-27" at "23:04"
    Then I should not see a service "L46799" in the results

