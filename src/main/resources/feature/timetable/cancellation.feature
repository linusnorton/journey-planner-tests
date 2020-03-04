@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between TBW and TON is cancelled on a particular day
    Given a query between "TBW" and "TON" on "2020-03-24" at "00:35"
    Then I should see a service "W44928" that stops at
      | stop | arrival | departure |
      | TBW  | --:--   | 00:35     |
      | HIB  | 00:38   | 00:38     |
      | TON  | 00:45   | --:--     |
    When I query between "TBW" and "TON" on "2020-03-31" at "00:35"
    Then I should not see a service "W44928" in the results

  Scenario: Service between TBW and TON is cancelled on a particular day
    Given a query between "TBW" and "TON" on "2020-03-24" at "00:05"
    Then I should see a service "W44925" that stops at
      | stop | arrival | departure |
      | TBW  | --:--   | 00:05     |
      | HIB  | 00:08   | 00:08     |
      | TON  | 00:15   | --:--     |
    When I query between "TBW" and "TON" on "2020-03-31" at "00:05"
    Then I should not see a service "W44925" in the results

  Scenario: Service between KGX and SVG is cancelled on a particular day
    Given a query between "KGX" and "SVG" on "2020-03-24" at "00:40"
    Then I should see a service "C02687" that stops at
      | stop | arrival | departure |
      | KGX  | --:--   | 00:40     |
      | FPK  | 00:46   | 00:47     |
      | HGY  | 00:49   | 00:49     |
      | HRN  | 00:51   | 00:51     |
      | AAP  | 00:54   | 00:55     |
      | BOP  | 00:58   | 00:58     |
      | PAL  | 01:00   | 01:01     |
      | WIH  | 01:03   | 01:04     |
      | GPK  | 01:06   | 01:06     |
      | ENC  | 01:08   | 01:08     |
      | GDH  | 01:10   | 01:11     |
      | CWH  | 01:14   | 01:14     |
      | CUF  | 01:17   | 01:17     |
      | BAY  | 01:22   | 01:22     |
      | HFN  | 01:26   | 01:27     |
      | WAS  | 01:33   | 01:33     |
      | SVG  | 01:40   | --:--     |
    When I query between "KGX" and "SVG" on "2020-03-31" at "00:40"
    Then I should not see a service "C02687" in the results

