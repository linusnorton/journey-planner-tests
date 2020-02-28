@timetable
Feature: Journey splits
  Journey planners should treat trains that split as a single journey

  Scenario: Train splits so there appears to be a single train between CHX and RAM
    Given a query between "CHX" and "RAM" on "2020-03-28" at "13:10"
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
    Given a query between "CHX" and "RAM" on "2020-03-28" at "13:10"
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
    Given a query between "CHX" and "RAM" on "2020-03-28" at "19:10"
    Then I should see a service "W47735" that stops at
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
      | AFK  | --:--   | 20:38     |
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
    Given a query between "CHX" and "CBW" on "2020-03-28" at "23:40"
    Then I should see a service "W47766" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 23:40     |
      | WAE  | 23:42   | 23:43     |
      | LBG  | 23:47   | 23:49     |
      | SEV  | 00:12   | 00:13     |
      | TON  | 00:21   | 00:22     |
      | PDW  | 00:28   | 00:29     |
      | MRN  | 00:34   | 00:34     |
      | SPU  | 00:38   | 00:38     |
      | HCN  | 00:44   | 00:44     |
      | AFK  | --:--   | 01:07     |
      | WYE  | 01:13   | --:--     |
      | CIL  | 01:19   | --:--     |
      | CRT  | 01:23   | --:--     |
      | CBW  | 01:30   | --:--     |

  Scenario: Train splits so there appears to be a single train between CHX and CBW
    Given a query between "CHX" and "CBW" on "2020-03-28" at "23:40"
    Then I should see a service "W47766" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 23:40     |
      | WAE  | 23:42   | 23:43     |
      | LBG  | 23:47   | 23:49     |
      | SEV  | 00:12   | 00:13     |
      | TON  | 00:21   | 00:22     |
      | PDW  | 00:28   | 00:29     |
      | MRN  | 00:34   | 00:34     |
      | SPU  | 00:38   | 00:38     |
      | HCN  | 00:44   | 00:44     |
      | AFK  | --:--   | 01:07     |
      | WYE  | 01:13   | --:--     |
      | CIL  | 01:19   | --:--     |
      | CRT  | 01:23   | --:--     |
      | CBW  | 01:30   | --:--     |

