@timetable
Feature: Journey splits
  Journey planners should treat trains that split as a single journey

  Scenario: Train splits so there appears to be a single train between CHX and RAM
    Given a query between "CHX" and "RAM" on "2020-04-10" at "13:10"
    Then I should see a service "W47692" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 13:10     |
      | WAE  | 13:12   | 13:13     |
      | LBG  | 13:17   | 13:19     |
      | SEV  | 13:42   | 13:43     |
      | TON  | 13:51   | 13:52     |
      | PDW  | 13:58   | 13:59     |
      | MRN  | 14:04   | 14:04     |
      | SPU  | 14:08   | 14:08     |
      | HCN  | 14:14   | 14:14     |
      | AFK  | --:--   | 14:38     |
      | WHA  | 14:46   | 14:46     |
      | SDG  | 14:49   | 14:49     |
      | FKW  | 14:55   | 14:55     |
      | FKC  | 14:57   | 14:58     |
      | DVP  | 15:09   | 15:25     |
      | MTM  | 15:34   | 15:34     |
      | WAM  | 15:38   | 15:38     |
      | DEA  | 15:42   | 15:42     |
      | SDW  | 15:48   | 15:50     |
      | MSR  | 15:57   | 16:02     |
      | RAM  | 16:13   | --:--     |

  Scenario: Train splits so there appears to be a single train between CHX and RAM
    Given a query between "CHX" and "RAM" on "2020-04-10" at "15:10"
    Then I should see a service "W52434" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 15:10     |
      | WAE  | 15:12   | 15:13     |
      | LBG  | 15:17   | 15:19     |
      | SEV  | 15:42   | 15:43     |
      | TON  | 15:51   | 15:52     |
      | PDW  | 15:58   | 15:59     |
      | MRN  | 16:04   | 16:04     |
      | SPU  | 16:08   | 16:08     |
      | HCN  | 16:14   | 16:14     |
      | AFK  | --:--   | 16:38     |
      | WHA  | 16:46   | 16:46     |
      | SDG  | 16:49   | 16:49     |
      | FKW  | 16:55   | 16:55     |
      | FKC  | 16:57   | 16:58     |
      | DVP  | 17:09   | 17:11     |
      | MTM  | 17:20   | 17:20     |
      | WAM  | 17:24   | 17:24     |
      | DEA  | 17:28   | 17:28     |
      | SDW  | 17:34   | 17:35     |
      | RAM  | 17:49   | --:--     |

