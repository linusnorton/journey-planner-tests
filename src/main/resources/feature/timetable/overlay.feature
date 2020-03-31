@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between GLD and WAT
    Given a query between "GLD" and "WAT" on "2020-04-20" at "14:37"
    Then I should see a service "W18065" that stops at
      | stop | arrival | departure |
      | GLD  | --:--   | 14:37     |
      | LRD  | 14:41   | 14:41     |
      | CLA  | 14:46   | 14:46     |
      | HSY  | 14:50   | 14:50     |
      | EFF  | 14:53   | 14:53     |
      | CSD  | 14:57   | 14:57     |
      | OXS  | 15:00   | 15:00     |
      | CLG  | 15:03   | 15:03     |
      | HYW  | 15:06   | 15:06     |
      | SUR  | 15:10   | 15:11     |
      | WIM  | 15:20   | 15:20     |
      | EAD  | 15:24   | 15:24     |
      | CLJ  | 15:27   | 15:28     |
      | VXH  | 15:32   | 15:33     |
      | WAT  | 15:37   | --:--     |
    When I query between "GLD" and "WAT" on "2020-04-27" at "14:37"
    Then I should see a service "W18065" that stops at
      | stop | arrival | departure |
      | GLD  | --:--   | 14:37     |
      | LRD  | 14:41   | 14:41     |
      | CLA  | 14:46   | 14:46     |
      | HSY  | 14:50   | 14:50     |
      | EFF  | 14:53   | 14:53     |
      | CSD  | 14:57   | 14:57     |
      | OXS  | 15:00   | 15:00     |
      | CLG  | 15:03   | 15:03     |
      | HYW  | 15:06   | 15:06     |
      | SUR  | 15:10   | 15:11     |
      | WIM  | 15:20   | 15:20     |
      | EAD  | 15:24   | 15:24     |
      | CLJ  | 15:27   | 15:28     |
      | VXH  | 15:32   | 15:33     |
      | WAT  | 15:37   | --:--     |

  Scenario: Changing calling point stopping times between WAT and AON
    Given a query between "WAT" and "AON" on "2020-04-20" at "10:23"
    Then I should see a service "W16494" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 10:23     |
      | CLJ  | --:--   | 10:30     |
      | SUR  | 10:40   | 10:41     |
      | WBY  | 10:51   | 10:51     |
      | WOK  | 10:59   | 11:00     |
      | BKO  | 11:06   | 11:06     |
      | AHV  | 11:14   | 11:14     |
      | AHT  | 11:19   | 11:20     |
      | FNH  | 11:25   | 11:26     |
      | AON  | 11:37   | --:--     |
    When I query between "WAT" and "AON" on "2020-04-27" at "10:23"
    Then I should see a service "W16494" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 10:23     |
      | CLJ  | --:--   | 10:30     |
      | SUR  | 10:40   | 10:41     |
      | WBY  | 10:51   | 10:51     |
      | WOK  | 10:59   | 11:00     |
      | BKO  | 11:06   | 11:06     |
      | AHV  | 11:14   | 11:14     |
      | AHT  | 11:19   | 11:20     |
      | FNH  | 11:25   | 11:26     |
      | AON  | 11:37   | --:--     |

  Scenario: Changing calling point stopping times between VIC and HGS
    Given a query between "VIC" and "HGS" on "2020-04-20" at "20:46"
    Then I should see a service "L00794" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 20:46     |
      | CLJ  | 20:52   | 20:53     |
      | ECR  | 21:02   | 21:03     |
      | GTW  | 21:17   | 21:20     |
      | HHE  | 21:31   | 21:35     |
      | PMP  | 21:45   | 21:45     |
      | LWS  | 21:53   | 21:54     |
      | PLG  | 22:06   | 22:06     |
      | EBN  | 22:14   | 22:20     |
      | HMD  | 22:24   | 22:24     |
      | PEV  | 22:29   | 22:29     |
      | COB  | 22:36   | 22:36     |
      | CLL  | 22:39   | 22:39     |
      | BEX  | 22:41   | 22:42     |
      | SLQ  | 22:48   | 22:49     |
      | HGS  | 22:53   | --:--     |
    When I query between "VIC" and "LWS" on "2020-04-27" at "20:46"
    Then I should see a service "L00794" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 20:46     |
      | CLJ  | 20:52   | 20:53     |
      | ECR  | 21:02   | 21:03     |
      | GTW  | 21:17   | 21:20     |
      | HHE  | 21:31   | 21:35     |
      | PMP  | 21:45   | 21:45     |
      | LWS  | 21:53   | --:--     |

  Scenario: Changing calling point stopping times between WAT and RDG
    Given a query between "WAT" and "RDG" on "2020-04-20" at "19:35"
    Then I should see a service "W17617" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 19:35     |
      | VXH  | 19:39   | 19:39     |
      | CLJ  | 19:44   | 19:45     |
      | RMD  | 19:53   | 19:53     |
      | TWI  | 19:57   | 19:57     |
      | FEL  | 20:03   | 20:04     |
      | AFS  | 20:08   | 20:08     |
      | SNS  | 20:12   | 20:12     |
      | EGH  | 20:17   | 20:17     |
      | VIR  | 20:21   | 20:21     |
      | LNG  | 20:24   | 20:24     |
      | SNG  | 20:28   | 20:28     |
      | ACT  | 20:32   | 20:32     |
      | MAO  | 20:36   | 20:36     |
      | BCE  | 20:39   | 20:40     |
      | WKM  | 20:48   | 20:49     |
      | RDG  | 20:59   | --:--     |
    When I query between "WAT" and "RDG" on "2020-04-27" at "19:35"
    Then I should see a service "W17617" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 19:35     |
      | VXH  | 19:39   | 19:39     |
      | CLJ  | 19:44   | 19:45     |
      | RMD  | 19:53   | 19:53     |
      | TWI  | 19:57   | 19:57     |
      | FEL  | 20:03   | 20:04     |
      | AFS  | 20:08   | 20:08     |
      | SNS  | 20:12   | 20:12     |
      | EGH  | 20:17   | 20:17     |
      | VIR  | 20:21   | 20:21     |
      | LNG  | 20:24   | 20:24     |
      | SNG  | 20:28   | 20:28     |
      | ACT  | 20:32   | 20:32     |
      | MAO  | 20:36   | 20:36     |
      | BCE  | 20:39   | 20:40     |
      | WKM  | 20:48   | 20:49     |
      | RDG  | 20:59   | --:--     |

  Scenario: Changing calling point stopping times between HOT and TWY
    Given a query between "HOT" and "TWY" on "2020-04-21" at "22:01"
    Then I should see a service "Y95185" that stops at
      | stop | arrival | departure |
      | HOT  | --:--   | 22:01     |
      | SHI  | 22:05   | 22:05     |
      | WGV  | 22:08   | 22:08     |
      | TWY  | 22:13   | --:--     |
    When I query between "HOT" and "TWY" on "2020-04-28" at "22:08"
    Then I should see a service "Y95185" that stops at
      | stop | arrival | departure |
      | HOT  | --:--   | 22:08     |
      | SHI  | 22:12   | 22:12     |
      | WGV  | 22:15   | 22:15     |
      | TWY  | 22:20   | --:--     |

