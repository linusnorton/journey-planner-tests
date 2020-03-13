@timetable
Feature: Journey splits
  Journey planners should treat trains that split as a single journey

  Scenario: Train splits so there appears to be a single train between CHX and RAM
    Given a query between "CHX" and "RAM" on "2020-03-20" at "13:10"
    Then I should see a service "W52427" that stops at
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
      | PLC  | 14:20   | 14:20     |
      | AFK  | 14:29   | 14:38     |
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
    Given a query between "CHX" and "RAM" on "2020-03-20" at "13:10"
    Then I should see a service "W52427" that stops at
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
      | PLC  | 14:20   | 14:20     |
      | AFK  | 14:29   | 14:38     |
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
    Given a query between "CHX" and "RAM" on "2020-03-20" at "14:10"
    Then I should see a service "W47702" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 14:10     |
      | WAE  | 14:12   | 14:13     |
      | LBG  | 14:17   | 14:19     |
      | SEV  | 14:42   | 14:43     |
      | TON  | 14:51   | 14:52     |
      | PDW  | 14:58   | 14:59     |
      | MRN  | 15:04   | 15:04     |
      | SPU  | 15:08   | 15:08     |
      | HCN  | 15:14   | 15:14     |
      | PLC  | 15:20   | 15:20     |
      | AFK  | 15:30   | 15:38     |
      | WHA  | 15:46   | 15:46     |
      | SDG  | 15:49   | 15:49     |
      | FKW  | 15:55   | 15:55     |
      | FKC  | 15:57   | 15:58     |
      | DVP  | 16:09   | 16:10     |
      | MTM  | 16:19   | 16:19     |
      | WAM  | 16:23   | 16:23     |
      | DEA  | 16:27   | 16:28     |
      | SDW  | 16:34   | 16:36     |
      | MSR  | 16:43   | 16:48     |
      | RAM  | 16:54   | --:--     |

  Scenario: Train splits so there appears to be a single train between CHX and RAM
    Given a query between "CHX" and "RAM" on "2020-03-20" at "19:10"
    Then I should see a service "W47738" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 19:10     |
      | WAE  | 19:12   | 19:13     |
      | LBG  | 19:17   | 19:19     |
      | SEV  | 19:42   | 19:43     |
      | TON  | 19:51   | 19:53     |
      | PDW  | 19:59   | 19:59     |
      | MRN  | 20:05   | 20:05     |
      | SPU  | 20:08   | 20:09     |
      | HCN  | 20:14   | 20:15     |
      | PLC  | 20:21   | 20:21     |
      | AFK  | 20:31   | 20:38     |
      | WHA  | 20:46   | 20:46     |
      | SDG  | 20:49   | 20:49     |
      | FKW  | 20:55   | 20:55     |
      | FKC  | 20:57   | 20:58     |
      | DVP  | 21:09   | 21:10     |
      | MTM  | 21:19   | 21:19     |
      | WAM  | 21:23   | 21:23     |
      | DEA  | 21:27   | 21:27     |
      | SDW  | 21:33   | 21:34     |
      | RAM  | 21:50   | --:--     |

  Scenario: Train splits so there appears to be a single train between CHX and CBW
    Given a query between "CHX" and "CBW" on "2020-03-20" at "07:37"
    Then I should see a service "W47657" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 07:37     |
      | WAE  | 07:39   | 07:40     |
      | LBG  | 07:44   | 07:46     |
      | SEV  | 08:12   | 08:13     |
      | TON  | 08:21   | 08:22     |
      | PDW  | 08:28   | 08:29     |
      | MRN  | 08:34   | 08:34     |
      | SPU  | 08:38   | 08:38     |
      | HCN  | 08:44   | 08:44     |
      | PLC  | 08:50   | 08:50     |
      | AFK  | 09:00   | 09:08     |
      | WYE  | 09:14   | 09:14     |
      | CIL  | 09:20   | 09:20     |
      | CRT  | 09:24   | 09:24     |
      | CBW  | 09:30   | --:--     |

