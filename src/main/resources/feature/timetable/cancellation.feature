@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between EDB and MIA is cancelled on a particular day
    Given a query between "EDB" and "MIA" on "2020-11-13" at "22:12"
    Then I should see a service "C05041" that stops at
      | stop | arrival | departure |
      | EDB  | --:--   | 22:12     |
      | HYM  | --:--   | 22:16     |
      | LOC  | 23:15   | 23:16     |
      | CAR  | 23:38   | 23:39     |
      | PRE  | 00:46   | 00:47     |
      | MAN  | 01:40   | 01:44     |
      | MIA  | 01:59   | --:--     |
    When I query between "EDB" and "MIA" on "2020-11-20" at "22:12"
    Then I should not see a service "C05041" in the results

  Scenario: Service between MYB and BSW is cancelled on a particular day
    Given a query between "MYB" and "BSW" on "2020-04-06" at "17:46"
    Then I should see a service "C79773" that stops at
      | stop | arrival | departure |
      | MYB  | --:--   | 17:46     |
      | HDM  | 18:22   | 18:23     |
      | BCS  | 18:33   | 18:35     |
      | BAN  | 18:47   | 18:48     |
      | LMS  | 19:05   | 19:05     |
      | WRW  | 19:09   | 19:09     |
      | WRP  | 19:12   | 19:13     |
      | DDG  | 19:22   | 19:23     |
      | SOL  | 19:28   | 19:29     |
      | BMO  | 19:37   | 19:39     |
      | BSW  | 19:46   | --:--     |
    When I query between "MYB" and "BSW" on "2020-04-13" at "17:46"
    Then I should not see a service "C79773" in the results

  Scenario: Service between AHT and ACT is cancelled on a particular day
    Given a query between "AHT" and "ACT" on "2020-05-01" at "22:00"
    Then I should see a service "W13777" that stops at
      | stop | arrival | departure |
      | AHT  | --:--   | 22:00     |
      | AHV  | 22:04   | 22:04     |
      | FML  | 22:10   | 22:10     |
      | CAM  | 22:14   | 22:18     |
      | BAG  | 22:23   | 22:23     |
      | ACT  | 22:30   | --:--     |
    When I query between "AHT" and "ACT" on "2020-05-08" at "22:00"
    Then I should not see a service "W13777" in the results

  Scenario: Service between AON and WAT is cancelled on a particular day
    Given a query between "AON" and "WAT" on "2020-04-06" at "22:44"
    Then I should see a service "W16602" that stops at
      | stop | arrival | departure |
      | AON  | --:--   | 22:44     |
      | BTY  | 22:50   | 22:51     |
      | FNH  | 22:56   | 22:58     |
      | AHT  | 23:04   | 23:04     |
      | AHV  | 23:08   | 23:09     |
      | BKO  | 23:16   | 23:16     |
      | WOK  | 23:21   | 23:22     |
      | WBY  | 23:27   | 23:27     |
      | SUR  | 23:37   | 23:38     |
      | CLJ  | 23:50   | 23:51     |
      | WAT  | 00:05   | --:--     |
    When I query between "AON" and "WAT" on "2020-04-13" at "22:44"
    Then I should not see a service "W16602" in the results

  Scenario: Service between SHF and LDS is cancelled on a particular day
    Given a query between "SHF" and "LDS" on "2020-05-01" at "21:02"
    Then I should see a service "Y56779" that stops at
      | stop | arrival | departure |
      | SHF  | --:--   | 21:02     |
      | MHS  | 21:07   | 21:08     |
      | CLN  | 21:14   | 21:14     |
      | ELR  | 21:19   | 21:20     |
      | WOM  | 21:23   | 21:23     |
      | BNY  | 21:29   | 21:30     |
      | DRT  | 21:35   | 21:35     |
      | WKK  | 21:48   | 21:49     |
      | NOR  | 21:54   | 21:56     |
      | CFD  | 22:01   | 22:04     |
      | WDS  | 22:13   | 22:13     |
      | LDS  | 22:25   | --:--     |
    When I query between "SHF" and "LDS" on "2020-05-08" at "21:02"
    Then I should not see a service "Y56779" in the results

