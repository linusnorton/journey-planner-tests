Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "ABC" and "XYZ" on "2020-02-11" at "11:30"
    Then I should see a service "C02530" that stops at
      | stop | arrival | departure |
      | ABC  | --:--   | 11:40     |
      | CDE  | 11:45   | 11:50     |
      | XYZ  | 12:00   | --:--     |
    When I query between "ABC" and "XYZ" on "2020-02-12" at "11:30"
    Then I should see a service "C02530" that stops at
      | stop | arrival | departure |
      | ABC  | --:--   | 11:41     |
      | CDE  | 11:46   | 11:51     |
      | XYZ  | 12:01   | --:--     |
