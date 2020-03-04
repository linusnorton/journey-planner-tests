@timetable
Feature: Journey splits
  Journey planners should treat trains that split as a single journey

  Scenario: Train splits so there appears to be a single train between VIC and CBW
    Given a query between "VIC" and "CBW" on "2020-04-04" at "23:42"
    Then I should see a service "W47759" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 23:42     |
      | BMS  | 23:58   | 23:59     |
      | SEV  | 00:14   | 00:14     |
      | TON  | 00:22   | 00:22     |
      | PDW  | 00:29   | 00:29     |
      | MRN  | 00:34   | 00:34     |
      | SPU  | 00:38   | 00:38     |
      | HCN  | 00:44   | 00:44     |
      | AFK  | --:--   | 01:07     |
      | WYE  | 01:13   | --:--     |
      | CIL  | 01:19   | --:--     |
      | CRT  | 01:23   | --:--     |
      | CBW  | 01:30   | --:--     |

  Scenario: Train splits so there appears to be a single train between CHX and RAM
    Given a query between "CHX" and "RAM" on "2020-04-04" at "16:10"
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
      | RAM  | 18:53   | --:--     |

  Scenario: Train splits so there appears to be a single train between CHX and DVP
    Given a query between "CHX" and "DVP" on "2020-04-04" at "16:39"
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

  Scenario: Train splits so there appears to be a single train between CHX and DVP
    Given a query between "CHX" and "DVP" on "2020-04-04" at "07:09"
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

  Scenario: Train splits so there appears to be a single train between CHX and RAM
    Given a query between "CHX" and "RAM" on "2020-04-04" at "19:10"
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

