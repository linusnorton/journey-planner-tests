@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between BRI and EXD is cancelled on a particular day
    Given a query between "BRI" and "EXD" on "2020-03-30" at "23:05"
    Then I should see a service "Y94907" that stops at
      | stop | arrival | departure |
      | BRI  | --:--   | 23:05     |
      | BMT  | 23:08   | 23:08     |
      | PSN  | 23:10   | 23:10     |
      | NLS  | 23:17   | 23:18     |
      | YAT  | 23:23   | 23:23     |
      | WOR  | 23:29   | 23:29     |
      | WNM  | 23:34   | 23:34     |
      | WSM  | 23:38   | 23:39     |
      | HIG  | 23:50   | 23:50     |
      | BWT  | 23:57   | 23:57     |
      | TAU  | 00:08   | --:--     |
      | TVP  | 00:24   | --:--     |
      | EXD  | 00:40   | --:--     |
    When I query between "BRI" and "EXD" on "2020-04-06" at "23:05"
    Then I should not see a service "Y94907" in the results

