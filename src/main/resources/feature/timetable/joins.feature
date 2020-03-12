@timetable
Feature: Journey joins another train
  Journey planners should treat trains that join another train as a single journey

  Scenario: Train joins another train to form a single train between RAM and CHX
    Given a query between "RAM" and "CHX" on "2020-03-19" at "17:18"
    Then I should see a service "W48744" that stops at
      | stop | arrival | departure |
      | RAM  | --:--   | 17:18     |
      | MSR  | 17:24   | 17:24     |
      | STU  | 17:35   | 17:35     |
      | CBW  | 17:39   | 17:40     |
      | WYE  | 17:51   | 17:52     |
      | AFK  | 17:58   | 18:02     |
      | PLC  | 18:08   | 18:08     |
      | HCN  | 18:15   | 18:15     |
      | SPU  | 18:19   | 18:20     |
      | MRN  | 18:24   | 18:24     |
      | PDW  | 18:29   | 18:30     |
      | TON  | 18:40   | 18:42     |
      | SEV  | 18:50   | 18:51     |
      | LBG  | 19:13   | 19:15     |
      | WAE  | 19:21   | 19:21     |
      | CHX  | 19:24   | --:--     |

  Scenario: Train joins another train to form a single train between RAM and CHX
    Given a query between "RAM" and "CHX" on "2020-03-19" at "09:08"
    Then I should see a service "W48694" that stops at
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
    Given a query between "RAM" and "CHX" on "2020-03-19" at "07:12"
    Then I should see a service "W52869" that stops at
      | stop | arrival | departure |
      | RAM  | --:--   | 07:12     |
      | MSR  | 07:18   | 07:18     |
      | STU  | 07:29   | 07:30     |
      | CBW  | 07:34   | 07:36     |
      | CRT  | 07:41   | 07:41     |
      | CIL  | 07:44   | 07:44     |
      | WYE  | 07:50   | 07:51     |
      | AFK  | 07:58   | 08:03     |
      | PLC  | 08:09   | 08:09     |
      | HCN  | 08:16   | 08:16     |
      | SPU  | 08:21   | 08:21     |
      | MRN  | 08:25   | 08:25     |
      | PDW  | 08:31   | 08:31     |
      | TON  | 08:39   | 08:40     |
      | SEV  | 08:50   | 08:51     |
      | LBG  | 09:15   | 09:17     |
      | WAE  | 09:21   | 09:22     |
      | CHX  | 09:29   | --:--     |

  Scenario: Train joins another train to form a single train between RAM and CHX
    Given a query between "RAM" and "CHX" on "2020-03-19" at "08:14"
    Then I should see a service "W48687" that stops at
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

  Scenario: Train joins another train to form a single train between RAM and CHX
    Given a query between "RAM" and "CHX" on "2020-03-19" at "16:17"
    Then I should see a service "W48737" that stops at
      | stop | arrival | departure |
      | RAM  | --:--   | 16:17     |
      | MSR  | 16:23   | 16:24     |
      | STU  | 16:35   | 16:35     |
      | CBW  | 16:39   | 16:40     |
      | WYE  | 16:51   | 16:52     |
      | AFK  | 16:58   | 17:02     |
      | PLC  | 17:08   | 17:08     |
      | HCN  | 17:15   | 17:15     |
      | SPU  | 17:19   | 17:20     |
      | MRN  | 17:24   | 17:24     |
      | PDW  | 17:29   | 17:30     |
      | TON  | 17:38   | 17:39     |
      | HLB  | 17:43   | 17:43     |
      | SEV  | 17:49   | 17:50     |
      | CLD  | 17:57   | 17:58     |
      | ORP  | 18:02   | 18:03     |
      | LBG  | 18:19   | 18:21     |
      | WAE  | 18:26   | 18:27     |
      | CHX  | 18:32   | --:--     |

