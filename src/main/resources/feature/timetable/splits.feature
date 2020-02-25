Feature: Journey splits
  Journey planners should treat trains that split as a single journey

  Scenario: Train splits
    Given a query between "CHX" and "RAM" on "2020-03-25" at "13:10"
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

  Scenario: Train splits
    Given a query between "CHX" and "DVP" on "2020-03-25" at "07:09"
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

  Scenario: Train splits
    Given a query between "CHX" and "RAM" on "2020-03-25" at "13:10"
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

  Scenario: Train splits
    Given a query between "CHX" and "CBW" on "2020-03-25" at "23:40"
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

  Scenario: Train splits
    Given a query between "CHX" and "DVP" on "2020-03-25" at "16:39"
    Then I should see a service "W47719" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 16:39     |
      | WAE  | 16:41   | 16:42     |
      | LBG  | 16:46   | 16:48     |
      | SEV  | 17:11   | 17:12     |
      | TON  | 17:20   | 17:21     |
      | PDW  | 17:27   | 17:28     |
      | MRN  | 17:33   | 17:34     |
      | SPU  | 17:37   | 17:38     |
      | HCN  | 17:43   | 17:44     |
      | AFK  | --:--   | 18:05     |
      | WHA  | 18:13   | 18:13     |
      | SDG  | 18:16   | 18:16     |
      | FKW  | 18:22   | 18:22     |
      | FKC  | 18:24   | 18:25     |
      | DVP  | 18:39   | --:--     |

