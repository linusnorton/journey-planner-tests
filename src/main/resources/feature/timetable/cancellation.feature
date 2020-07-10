@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between GPO and BKG is cancelled on a particular day
    Given a query between "GPO" and "BKG" on "2020-08-03" at "22:22"
    Then I should see a service "C92372" that stops at
      | stop | arrival | departure |
      | GPO  | --:--   | 22:22     |
      | UHL  | 22:25   | 22:26     |
      | CRH  | 22:28   | 22:28     |
      | HRY  | 22:31   | 22:31     |
      | STO  | 22:35   | 22:36     |
      | BHO  | 22:39   | 22:39     |
      | WMW  | 22:41   | 22:41     |
      | LEM  | 22:44   | 22:45     |
      | LER  | 22:47   | 22:47     |
      | WNP  | 22:49   | 22:49     |
      | WGR  | 22:52   | 22:53     |
      | BKG  | 22:59   | --:--     |
    When I query between "GPO" and "BKG" on "2020-08-10" at "22:22"
    Then I should not see a service "C92372" in the results

  Scenario: Service between CHX and HYS is cancelled on a particular day
    Given a query between "CHX" and "HYS" on "2020-08-03" at "23:37"
    Then I should see a service "W56154" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 23:37     |
      | WAE  | 23:39   | 23:40     |
      | LBG  | 23:44   | 23:46     |
      | LAD  | 23:55   | 23:55     |
      | CFB  | 23:57   | 23:58     |
      | LSY  | 00:01   | 00:01     |
      | NBC  | 00:03   | 00:03     |
      | CLK  | 00:05   | 00:05     |
      | ELE  | 00:08   | 00:08     |
      | EDN  | 00:12   | 00:12     |
      | WWI  | 00:14   | 00:14     |
      | HYS  | 00:18   | --:--     |
    When I query between "CHX" and "HYS" on "2020-08-10" at "23:37"
    Then I should not see a service "W56154" in the results

  Scenario: Service between BKG and GPO is cancelled on a particular day
    Given a query between "BKG" and "GPO" on "2020-08-03" at "20:04"
    Then I should see a service "C92259" that stops at
      | stop | arrival | departure |
      | BKG  | --:--   | 20:04     |
      | WGR  | 20:07   | 20:07     |
      | WNP  | 20:10   | 20:10     |
      | LER  | 20:12   | 20:12     |
      | LEM  | 20:14   | 20:15     |
      | WMW  | 20:17   | 20:17     |
      | BHO  | 20:19   | 20:20     |
      | STO  | 20:23   | 20:24     |
      | HRY  | 20:27   | 20:27     |
      | CRH  | 20:30   | 20:30     |
      | UHL  | 20:32   | 20:33     |
      | GPO  | 20:42   | --:--     |
    When I query between "BKG" and "GPO" on "2020-08-10" at "20:04"
    Then I should not see a service "C92259" in the results

  Scenario: Service between GPO and BKG is cancelled on a particular day
    Given a query between "GPO" and "BKG" on "2020-08-03" at "20:50"
    Then I should see a service "C92312" that stops at
      | stop | arrival | departure |
      | GPO  | --:--   | 20:50     |
      | UHL  | 20:53   | 20:54     |
      | CRH  | 20:56   | 20:56     |
      | HRY  | 20:59   | 20:59     |
      | STO  | 21:03   | 21:03     |
      | BHO  | 21:06   | 21:07     |
      | WMW  | 21:09   | 21:09     |
      | LEM  | 21:11   | 21:12     |
      | LER  | 21:14   | 21:14     |
      | WNP  | 21:16   | 21:16     |
      | WGR  | 21:19   | 21:19     |
      | BKG  | 21:27   | --:--     |
    When I query between "GPO" and "BKG" on "2020-08-10" at "20:50"
    Then I should not see a service "C92312" in the results

  Scenario: Service between BKG and GPO is cancelled on a particular day
    Given a query between "BKG" and "GPO" on "2020-08-03" at "21:03"
    Then I should see a service "C92306" that stops at
      | stop | arrival | departure |
      | BKG  | --:--   | 21:03     |
      | WGR  | 21:07   | 21:07     |
      | WNP  | 21:10   | 21:10     |
      | LER  | 21:12   | 21:12     |
      | LEM  | 21:14   | 21:15     |
      | WMW  | 21:17   | 21:17     |
      | BHO  | 21:19   | 21:20     |
      | STO  | 21:23   | 21:24     |
      | HRY  | 21:27   | 21:27     |
      | CRH  | 21:30   | 21:30     |
      | UHL  | 21:32   | 21:33     |
      | GPO  | 21:38   | --:--     |
    When I query between "BKG" and "GPO" on "2020-08-10" at "21:03"
    Then I should not see a service "C92306" in the results

