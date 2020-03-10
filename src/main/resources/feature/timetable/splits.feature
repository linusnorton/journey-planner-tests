@timetable
Feature: Journey splits
  Journey planners should treat trains that split as a single journey

  Scenario: Train splits so there appears to be a single train between CHX and CBW
    Given a query between "CHX" and "CBW" on "2020-04-06" at "07:37"
    Then I should see a service "W47656" that stops at
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
      | AFK  | --:--   | 09:08     |
      | WYE  | 09:14   | 09:14     |
      | CIL  | 09:20   | 09:20     |
      | CRT  | 09:24   | 09:24     |
      | CBW  | 09:30   | --:--     |

  Scenario: Train splits so there appears to be a single train between CHX and RAM
    Given a query between "CHX" and "RAM" on "2020-04-06" at "14:10"
    Then I should see a service "W47699" that stops at
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
      | AFK  | --:--   | 15:38     |
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
    Given a query between "CHX" and "RAM" on "2020-04-06" at "19:10"
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

  Scenario: Train splits so there appears to be a single train between CHX and DVP
    Given a query between "CHX" and "DVP" on "2020-04-06" at "07:09"
    Then I should see a service "W47652" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 07:09     |
      | WAE  | 07:11   | 07:12     |
      | LBG  | 07:16   | 07:18     |
      | SEV  | 07:41   | 07:42     |
      | TON  | 07:50   | 07:51     |
      | PDW  | 07:57   | 07:57     |
      | MRN  | 08:03   | 08:03     |
      | SPU  | 08:06   | 08:07     |
      | HCN  | 08:12   | 08:13     |
      | AFK  | --:--   | 08:38     |
      | WHA  | 08:46   | 08:46     |
      | SDG  | 08:49   | 08:49     |
      | FKW  | 08:55   | 08:55     |
      | FKC  | 08:57   | 08:58     |
      | DVP  | 09:11   | --:--     |

  Scenario: Train splits so there appears to be a single train between CHX and CBW
    Given a query between "CHX" and "CBW" on "2020-04-06" at "23:40"
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

