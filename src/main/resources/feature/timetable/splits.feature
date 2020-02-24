Feature: Journey splits
  Journey planners should treat trains that split as a single journey

  Scenario: Train splits
    Given a query between "CHX" and "SDW" on "2020-03-24" at "15:10"
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

  Scenario: Train splits
    Given a query between "CHX" and "SDW" on "2020-03-24" at "16:10"
    Then I should see a service "W47715" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 16:10     |
      | WAE  | 16:12   | 16:13     |
      | LBG  | 16:17   | 16:19     |
      | SEV  | 16:42   | 16:43     |
      | TON  | 16:51   | 16:52     |
      | PDW  | 16:58   | 16:59     |
      | MRN  | 17:04   | 17:04     |
      | SPU  | 17:08   | 17:08     |
      | HCN  | 17:14   | 17:14     |
      | AFK  | --:--   | 17:38     |
      | WHA  | 17:46   | 17:46     |
      | SDG  | 17:49   | 17:49     |
      | FKW  | 17:55   | 17:55     |
      | FKC  | 17:57   | 17:58     |
      | DVP  | 18:09   | 18:12     |
      | MTM  | 18:21   | 18:21     |
      | WAM  | 18:25   | 18:25     |
      | DEA  | 18:29   | 18:30     |
      | SDW  | 18:36   | 18:37     |

  Scenario: Train splits
    Given a query between "CHX" and "CRT" on "2020-03-24" at "07:37"
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

  Scenario: Train splits
    Given a query between "CHX" and "FKC" on "2020-03-24" at "07:09"
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

  Scenario: Train splits
    Given a query between "CHX" and "CRT" on "2020-03-24" at "23:40"
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

