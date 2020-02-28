@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between LDS and SHF is cancelled on a particular day
    Given a query between "LDS" and "SHF" on "2020-03-21" at "17:48"
    Then I should see a service "Y21880" that stops at
      | stop | arrival | departure |
      | LDS  | --:--   | 17:48     |
      | OUT  | 17:59   | 17:59     |
      | WKF  | 18:03   | 18:03     |
      | SNA  | 18:07   | 18:07     |
      | FZW  | 18:13   | 18:14     |
      | MRP  | 18:20   | 18:20     |
      | THC  | 18:26   | 18:26     |
      | GOE  | 18:29   | 18:29     |
      | BTD  | 18:31   | 18:32     |
      | SWN  | 18:36   | 18:36     |
      | RMC  | 18:45   | 18:45     |
      | MHS  | 18:51   | 18:51     |
      | SHF  | 19:01   | --:--     |
    When I query between "LDS" and "SHF" on "2020-03-28" at "17:48"
    Then I should not see a service "Y21880" in the results

  Scenario: Service between LDS and SHF is cancelled on a particular day
    Given a query between "LDS" and "SHF" on "2020-03-21" at "15:48"
    Then I should see a service "Y21863" that stops at
      | stop | arrival | departure |
      | LDS  | --:--   | 15:48     |
      | OUT  | 15:59   | 15:59     |
      | WKF  | 16:03   | 16:03     |
      | SNA  | 16:07   | 16:07     |
      | FZW  | 16:14   | 16:14     |
      | MRP  | 16:20   | 16:20     |
      | THC  | 16:26   | 16:26     |
      | GOE  | 16:29   | 16:29     |
      | BTD  | 16:31   | 16:32     |
      | SWN  | 16:36   | 16:36     |
      | RMC  | 16:45   | 16:45     |
      | MHS  | 16:51   | 16:51     |
      | SHF  | 17:01   | --:--     |
    When I query between "LDS" and "SHF" on "2020-03-28" at "15:48"
    Then I should not see a service "Y21863" in the results

  Scenario: Service between SHF and LDS is cancelled on a particular day
    Given a query between "SHF" and "LDS" on "2020-03-21" at "10:15"
    Then I should see a service "Y21800" that stops at
      | stop | arrival | departure |
      | SHF  | --:--   | 10:15     |
      | MHS  | 10:20   | 10:21     |
      | RMC  | 10:27   | 10:28     |
      | SWN  | 10:36   | 10:36     |
      | BTD  | 10:40   | 10:41     |
      | GOE  | 10:44   | 10:44     |
      | THC  | 10:46   | 10:47     |
      | MRP  | 10:52   | 10:53     |
      | FZW  | 10:59   | 11:00     |
      | SNA  | 11:07   | 11:08     |
      | WKF  | 11:12   | 11:14     |
      | OUT  | 11:19   | 11:19     |
      | LDS  | 11:31   | --:--     |
    When I query between "SHF" and "LDS" on "2020-03-28" at "10:15"
    Then I should not see a service "Y21800" in the results

  Scenario: Service between LDS and SHF is cancelled on a particular day
    Given a query between "LDS" and "SHF" on "2020-03-21" at "12:48"
    Then I should see a service "Y21819" that stops at
      | stop | arrival | departure |
      | LDS  | --:--   | 12:48     |
      | OUT  | 12:59   | 12:59     |
      | WKF  | 13:03   | 13:03     |
      | SNA  | 13:07   | 13:07     |
      | FZW  | 13:14   | 13:14     |
      | MRP  | 13:20   | 13:20     |
      | THC  | 13:26   | 13:26     |
      | GOE  | 13:29   | 13:29     |
      | BTD  | 13:31   | 13:32     |
      | SWN  | 13:36   | 13:36     |
      | RMC  | 13:45   | 13:45     |
      | MHS  | 13:51   | 13:51     |
      | SHF  | 14:01   | --:--     |
    When I query between "LDS" and "SHF" on "2020-03-28" at "12:48"
    Then I should not see a service "Y21819" in the results

  Scenario: Service between LDS and SHF is cancelled on a particular day
    Given a query between "LDS" and "SHF" on "2020-03-21" at "20:48"
    Then I should see a service "Y21900" that stops at
      | stop | arrival | departure |
      | LDS  | --:--   | 20:48     |
      | OUT  | 20:59   | 20:59     |
      | WKF  | 21:03   | 21:03     |
      | SNA  | 21:07   | 21:07     |
      | FZW  | 21:14   | 21:14     |
      | MRP  | 21:20   | 21:20     |
      | THC  | 21:26   | 21:26     |
      | GOE  | 21:29   | 21:29     |
      | BTD  | 21:31   | 21:32     |
      | SWN  | 21:36   | 21:36     |
      | RMC  | 21:44   | 21:44     |
      | MHS  | 21:51   | 21:51     |
      | SHF  | 21:59   | --:--     |
    When I query between "LDS" and "SHF" on "2020-03-28" at "20:48"
    Then I should not see a service "Y21900" in the results

