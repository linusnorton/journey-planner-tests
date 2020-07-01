@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between VIC and BMS
    Given a query between "VIC" and "BMS" on "2020-07-25" at "06:43"
    Then I should see a service "W58093" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 06:43     |
      | BRX  | 06:50   | 06:50     |
      | HNH  | 06:52   | 06:53     |
      | WDU  | 06:55   | 06:55     |
      | SYH  | 06:57   | 06:57     |
      | PNE  | 07:00   | 07:01     |
      | KTH  | 07:03   | 07:03     |
      | BKJ  | 07:05   | 07:05     |
      | SRT  | 07:08   | 07:08     |
      | BMS  | 07:11   | --:--     |
    When I query between "VIC" and "BMS" on "2020-08-01" at "06:44"
    Then I should see a service "W58093" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 06:44     |
      | BRX  | 06:51   | 06:51     |
      | HNH  | 06:53   | 06:53     |
      | WDU  | 06:56   | 06:56     |
      | SYH  | 06:58   | 06:58     |
      | PNE  | 07:01   | 07:01     |
      | KTH  | 07:03   | 07:03     |
      | BKJ  | 07:05   | 07:05     |
      | SRT  | 07:08   | 07:08     |
      | BMS  | 07:11   | --:--     |

  Scenario: Changing calling point stopping times between EBB and CDF
    Given a query between "EBB" and "CDF" on "2020-07-25" at "21:37"
    Then I should see a service "C38195" that stops at
      | stop | arrival | departure |
      | EBB  | --:--   | 21:37     |
      | EBV  | 21:40   | 21:40     |
      | LTH  | 21:48   | 21:48     |
      | NBE  | 21:54   | 21:54     |
      | CKY  | 22:02   | 22:02     |
      | RCA  | 22:07   | 22:07     |
      | ROR  | 22:11   | 22:11     |
      | PYE  | 22:15   | 22:15     |
      | CDF  | 22:36   | --:--     |
    When I query between "EBB" and "CDF" on "2020-08-01" at "21:37"
    Then I should see a service "C38195" that stops at
      | stop | arrival | departure |
      | EBB  | --:--   | 21:37     |
      | EBV  | 21:40   | 21:40     |
      | LTH  | 21:49   | 21:49     |
      | NBE  | 21:55   | 21:56     |
      | CKY  | 22:03   | 22:04     |
      | RCA  | 22:09   | 22:09     |
      | ROR  | 22:13   | 22:13     |
      | PYE  | 22:17   | 22:17     |
      | NWP  | 22:29   | 22:46     |
      | CDF  | 23:06   | --:--     |

  Scenario: Changing calling point stopping times between WNR and WAT
    Given a query between "WNR" and "WAT" on "2020-07-25" at "06:23"
    Then I should see a service "W19398" that stops at
      | stop | arrival | departure |
      | WNR  | --:--   | 06:23     |
      | DAT  | 06:26   | 06:26     |
      | SNY  | 06:29   | 06:29     |
      | WRY  | 06:32   | 06:32     |
      | SNS  | 06:37   | 06:38     |
      | AFS  | 06:41   | 06:41     |
      | FEL  | 06:45   | 06:46     |
      | WTN  | 06:50   | 06:50     |
      | TWI  | 06:53   | 06:53     |
      | RMD  | 06:57   | 06:58     |
      | PUT  | 07:04   | 07:04     |
      | CLJ  | 07:08   | 07:09     |
      | VXH  | 07:14   | 07:15     |
      | WAT  | 07:19   | --:--     |
    When I query between "HOU" and "WAT" on "2020-08-01" at "06:42"
    Then I should see a service "W19398" that stops at
      | stop | arrival | departure |
      | HOU  | --:--   | 06:42     |
      | WTN  | 06:46   | 06:47     |
      | TWI  | 06:50   | 06:53     |
      | RMD  | 06:57   | 06:58     |
      | PUT  | 07:04   | 07:04     |
      | CLJ  | 07:08   | 07:09     |
      | VXH  | 07:14   | 07:15     |
      | WAT  | 07:19   | --:--     |

  Scenario: Changing calling point stopping times between WYB and WAT
    Given a query between "WYB" and "WAT" on "2020-07-25" at "09:33"
    Then I should see a service "W19261" that stops at
      | stop | arrival | departure |
      | WYB  | --:--   | 09:33     |
      | ASN  | 09:37   | 09:37     |
      | CHY  | 09:40   | 09:40     |
      | VIR  | 09:45   | 09:54     |
      | EGH  | 09:57   | 09:57     |
      | SNS  | 10:02   | 10:03     |
      | AFS  | 10:06   | 10:06     |
      | FEL  | 10:10   | 10:11     |
      | HOU  | 10:16   | 10:16     |
      | ISL  | 10:19   | 10:19     |
      | SYL  | 10:21   | 10:21     |
      | BFD  | 10:23   | 10:24     |
      | KWB  | 10:26   | 10:26     |
      | CHK  | 10:29   | 10:29     |
      | BNI  | 10:31   | 10:31     |
      | BNS  | 10:34   | 10:34     |
      | PUT  | 10:37   | 10:37     |
      | WNT  | 10:40   | 10:40     |
      | CLJ  | 10:43   | 10:43     |
      | QRB  | 10:46   | 10:46     |
      | VXH  | 10:49   | 10:50     |
      | WAT  | 10:56   | --:--     |
    When I query between "HOU" and "WAT" on "2020-08-01" at "10:16"
    Then I should see a service "W19261" that stops at
      | stop | arrival | departure |
      | HOU  | --:--   | 10:16     |
      | ISL  | 10:19   | 10:19     |
      | SYL  | 10:21   | 10:21     |
      | BFD  | 10:23   | 10:24     |
      | KWB  | 10:26   | 10:26     |
      | CHK  | 10:29   | 10:29     |
      | BNI  | 10:31   | 10:31     |
      | BNS  | 10:34   | 10:34     |
      | PUT  | 10:37   | 10:37     |
      | WNT  | 10:40   | 10:40     |
      | CLJ  | 10:43   | 10:43     |
      | QRB  | 10:46   | 10:46     |
      | VXH  | 10:49   | 10:50     |
      | WAT  | 10:56   | --:--     |

  Scenario: Changing calling point stopping times between RAM and VIC
    Given a query between "RAM" and "VIC" on "2020-07-25" at "08:53"
    Then I should see a service "W55878" that stops at
      | stop | arrival | departure |
      | RAM  | --:--   | 08:53     |
      | DMP  | 08:56   | 08:56     |
      | BSR  | 08:59   | 08:59     |
      | MAR  | 09:04   | 09:04     |
      | WGA  | 09:08   | 09:08     |
      | BCH  | 09:11   | 09:11     |
      | HNB  | 09:20   | 09:20     |
      | CSW  | 09:24   | 09:24     |
      | WHI  | 09:27   | 09:27     |
      | FAV  | 09:35   | 09:37     |
      | SIT  | 09:44   | 09:45     |
      | RAI  | 09:52   | 09:52     |
      | GLM  | 09:57   | 09:57     |
      | CTM  | 10:01   | 10:02     |
      | RTR  | 10:05   | 10:05     |
      | MEP  | 10:16   | 10:16     |
      | LGF  | 10:20   | 10:20     |
      | BMS  | 10:32   | 10:33     |
      | VIC  | 10:51   | --:--     |
    When I query between "RAM" and "VIC" on "2020-08-01" at "08:53"
    Then I should see a service "W55878" that stops at
      | stop | arrival | departure |
      | RAM  | --:--   | 08:53     |
      | DMP  | 08:56   | 08:56     |
      | BSR  | 08:59   | 08:59     |
      | MAR  | 09:04   | 09:04     |
      | WGA  | 09:08   | 09:08     |
      | BCH  | 09:11   | 09:11     |
      | HNB  | 09:20   | 09:20     |
      | CSW  | 09:24   | 09:24     |
      | WHI  | 09:27   | 09:27     |
      | FAV  | 09:35   | 09:37     |
      | SIT  | 09:44   | 09:45     |
      | RAI  | 09:52   | 09:52     |
      | GLM  | 09:57   | 09:57     |
      | CTM  | 10:01   | 10:02     |
      | RTR  | 10:05   | 10:05     |
      | MEP  | 10:16   | 10:16     |
      | LGF  | 10:20   | 10:20     |
      | BMS  | 10:32   | 10:33     |
      | VIC  | 10:51   | --:--     |

