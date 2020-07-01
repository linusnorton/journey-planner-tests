@timetable
Feature: Journey joins another train
  Journey planners should treat trains that join another train as a single journey

  Scenario: Train joins another train to form a single train between RAM and CHX
    Given a query between "RAM" and "CHX" on "2020-07-08" at "09:08"
    Then I should see a service "W59664" that stops at
      | stop | arrival | departure |
      | RAM  | --:--   | 09:08     |
      | MSR  | 09:14   | 09:19     |
      | STU  | 09:30   | 09:31     |
      | CBW  | 09:35   | 09:36     |
      | CRT  | 09:41   | 09:41     |
      | CIL  | 09:44   | 09:44     |
      | WYE  | 09:50   | 09:51     |
      | AFK  | 09:58   | 10:02     |
      | PLC  | 10:08   | 10:08     |
      | HCN  | 10:15   | 10:15     |
      | SPU  | 10:19   | 10:20     |
      | MRN  | 10:24   | 10:24     |
      | PDW  | 10:29   | 10:30     |
      | TON  | 10:38   | 10:39     |
      | SEV  | 10:48   | 10:49     |
      | LBG  | 11:11   | 11:13     |
      | WAE  | 11:17   | 11:18     |
      | CHX  | 11:22   | --:--     |

  Scenario: Train joins another train to form a single train between RAM and CHX
    Given a query between "RAM" and "CHX" on "2020-07-08" at "08:14"
    Then I should see a service "P95748" that stops at
      | stop | arrival | departure |
      | RAM  | --:--   | 08:14     |
      | MSR  | 08:20   | 08:20     |
      | STU  | 08:31   | 08:31     |
      | CBW  | 08:35   | 08:36     |
      | CRT  | 08:41   | 08:41     |
      | CIL  | 08:44   | 08:44     |
      | WYE  | 08:50   | 08:51     |
      | AFK  | 08:58   | 09:02     |
      | PLC  | 09:08   | 09:08     |
      | HCN  | 09:15   | 09:15     |
      | SPU  | 09:19   | 09:20     |
      | MRN  | 09:24   | 09:24     |
      | PDW  | 09:29   | 09:30     |
      | TON  | 09:37   | 09:39     |
      | SEV  | 09:48   | 09:49     |
      | LBG  | 10:11   | 10:13     |
      | WAE  | 10:17   | 10:18     |
      | CHX  | 10:24   | --:--     |

