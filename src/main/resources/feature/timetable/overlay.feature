@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between WYB and WAT
    Given a query between "WYB" and "WAT" on "2020-07-25" at "12:03"
    Then I should see a service "W19278" that stops at
      | stop | arrival | departure |
      | WYB  | --:--   | 12:03     |
      | ASN  | 12:07   | 12:07     |
      | CHY  | 12:10   | 12:10     |
      | VIR  | 12:15   | 12:24     |
      | EGH  | 12:27   | 12:27     |
      | SNS  | 12:32   | 12:33     |
      | AFS  | 12:36   | 12:36     |
      | FEL  | 12:40   | 12:41     |
      | HOU  | 12:46   | 12:46     |
      | ISL  | 12:49   | 12:49     |
      | SYL  | 12:51   | 12:51     |
      | BFD  | 12:53   | 12:54     |
      | KWB  | 12:56   | 12:56     |
      | CHK  | 12:59   | 12:59     |
      | BNI  | 13:01   | 13:01     |
      | BNS  | 13:04   | 13:04     |
      | PUT  | 13:07   | 13:07     |
      | WNT  | 13:10   | 13:10     |
      | CLJ  | 13:13   | 13:13     |
      | QRB  | 13:16   | 13:16     |
      | VXH  | 13:19   | 13:20     |
      | WAT  | 13:26   | --:--     |
    When I query between "HOU" and "WAT" on "2020-08-01" at "12:46"
    Then I should see a service "W19278" that stops at
      | stop | arrival | departure |
      | HOU  | --:--   | 12:46     |
      | ISL  | 12:49   | 12:49     |
      | SYL  | 12:51   | 12:51     |
      | BFD  | 12:53   | 12:54     |
      | KWB  | 12:56   | 12:56     |
      | CHK  | 12:59   | 12:59     |
      | BNI  | 13:01   | 13:01     |
      | BNS  | 13:04   | 13:04     |
      | PUT  | 13:07   | 13:07     |
      | WNT  | 13:10   | 13:10     |
      | CLJ  | 13:13   | 13:13     |
      | QRB  | 13:16   | 13:16     |
      | VXH  | 13:19   | 13:20     |
      | WAT  | 13:26   | --:--     |

  Scenario: Changing calling point stopping times between HGS and TON
    Given a query between "HGS" and "TON" on "2020-07-25" at "22:50"
    Then I should see a service "W55505" that stops at
      | stop | arrival | departure |
      | HGS  | --:--   | 22:50     |
      | SLQ  | 22:53   | 22:53     |
      | WLD  | 22:56   | 22:57     |
      | CWU  | 23:03   | 23:03     |
      | BAT  | 23:06   | 23:07     |
      | RBR  | 23:14   | 23:14     |
      | ETC  | 23:17   | 23:18     |
      | SOG  | 23:23   | 23:23     |
      | WAD  | 23:29   | 23:29     |
      | FRT  | 23:33   | 23:33     |
      | TBW  | 23:38   | 23:39     |
      | HIB  | 23:42   | 23:42     |
      | TON  | 23:49   | --:--     |
    When I query between "HGS" and "TON" on "2020-08-01" at "22:50"
    Then I should see a service "W55505" that stops at
      | stop | arrival | departure |
      | HGS  | --:--   | 22:50     |
      | SLQ  | 22:53   | 22:53     |
      | WLD  | 22:56   | 22:57     |
      | CWU  | 23:03   | 23:03     |
      | BAT  | 23:06   | 23:07     |
      | RBR  | 23:14   | 23:14     |
      | ETC  | 23:17   | 23:18     |
      | SOG  | 23:23   | 23:23     |
      | WAD  | 23:29   | 23:29     |
      | FRT  | 23:33   | 23:33     |
      | TBW  | 23:38   | 23:39     |
      | HIB  | 23:42   | 23:42     |
      | TON  | 23:51   | --:--     |

  Scenario: Changing calling point stopping times between RDG and WAT
    Given a query between "RDG" and "WAT" on "2020-07-25" at "19:12"
    Then I should see a service "W17561" that stops at
      | stop | arrival | departure |
      | RDG  | --:--   | 19:12     |
      | EAR  | 19:17   | 19:17     |
      | WTI  | 19:19   | 19:19     |
      | WNS  | 19:21   | 19:21     |
      | WKM  | 19:25   | 19:26     |
      | BCE  | 19:32   | 19:32     |
      | MAO  | 19:35   | 19:35     |
      | ACT  | 19:39   | 19:40     |
      | SNG  | 19:43   | 19:43     |
      | LNG  | 19:46   | 19:46     |
      | VIR  | 19:50   | 19:50     |
      | EGH  | 19:53   | 19:54     |
      | SNS  | 19:58   | 19:59     |
      | FEL  | 20:05   | 20:05     |
      | TWI  | 20:10   | 20:11     |
      | RMD  | 20:15   | 20:15     |
      | CLJ  | 20:23   | 20:24     |
      | WAT  | 20:34   | --:--     |
    When I query between "RDG" and "SNS" on "2020-08-01" at "19:12"
    Then I should see a service "W17561" that stops at
      | stop | arrival | departure |
      | RDG  | --:--   | 19:12     |
      | EAR  | 19:17   | 19:17     |
      | WTI  | 19:19   | 19:19     |
      | WNS  | 19:21   | 19:21     |
      | WKM  | 19:25   | 19:26     |
      | BCE  | 19:32   | 19:32     |
      | MAO  | 19:35   | 19:35     |
      | ACT  | 19:39   | 19:40     |
      | SNG  | 19:43   | 19:43     |
      | LNG  | 19:46   | 19:46     |
      | VIR  | 19:50   | 19:50     |
      | EGH  | 19:53   | 19:54     |
      | SNS  | 19:58   | --:--     |

  Scenario: Changing calling point stopping times between WYB and WAT
    Given a query between "WYB" and "WAT" on "2020-07-25" at "20:33"
    Then I should see a service "W19346" that stops at
      | stop | arrival | departure |
      | WYB  | --:--   | 20:33     |
      | ASN  | 20:37   | 20:37     |
      | CHY  | 20:40   | 20:40     |
      | VIR  | 20:45   | 20:54     |
      | EGH  | 20:57   | 20:57     |
      | SNS  | 21:02   | 21:03     |
      | AFS  | 21:06   | 21:06     |
      | FEL  | 21:10   | 21:11     |
      | HOU  | 21:16   | 21:16     |
      | ISL  | 21:19   | 21:19     |
      | SYL  | 21:21   | 21:21     |
      | BFD  | 21:23   | 21:24     |
      | KWB  | 21:26   | 21:26     |
      | CHK  | 21:29   | 21:29     |
      | BNI  | 21:31   | 21:31     |
      | BNS  | 21:34   | 21:34     |
      | PUT  | 21:37   | 21:37     |
      | WNT  | 21:40   | 21:40     |
      | CLJ  | 21:43   | 21:43     |
      | QRB  | 21:46   | 21:46     |
      | VXH  | 21:49   | 21:50     |
      | WAT  | 21:56   | --:--     |
    When I query between "HOU" and "WAT" on "2020-08-01" at "21:16"
    Then I should see a service "W19346" that stops at
      | stop | arrival | departure |
      | HOU  | --:--   | 21:16     |
      | ISL  | 21:19   | 21:19     |
      | SYL  | 21:21   | 21:21     |
      | BFD  | 21:23   | 21:24     |
      | KWB  | 21:26   | 21:26     |
      | CHK  | 21:29   | 21:29     |
      | BNI  | 21:31   | 21:31     |
      | BNS  | 21:34   | 21:34     |
      | PUT  | 21:37   | 21:37     |
      | WNT  | 21:40   | 21:40     |
      | CLJ  | 21:43   | 21:43     |
      | QRB  | 21:46   | 21:46     |
      | VXH  | 21:49   | 21:50     |
      | WAT  | 21:56   | --:--     |

  Scenario: Changing calling point stopping times between CST and CST
    Given a query between "CST" and "CST" on "2020-07-25" at "06:05"
    Then I should see a service "W58590" that stops at
      | stop | arrival | departure |
      | CST  | --:--   | 06:05     |
      | LBG  | 06:08   | 06:09     |
      | DEP  | 06:15   | 06:15     |
      | GNW  | 06:17   | 06:17     |
      | MZH  | 06:20   | 06:20     |
      | WCB  | 06:22   | 06:22     |
      | CTN  | 06:24   | 06:25     |
      | WWD  | 06:28   | 06:28     |
      | WWA  | 06:30   | 06:31     |
      | PLU  | 06:33   | 06:33     |
      | ABW  | 06:36   | 06:36     |
      | BVD  | 06:39   | 06:39     |
      | ERH  | 06:42   | 06:42     |
      | SGR  | 06:45   | 06:46     |
      | CRY  | 06:59   | 07:01     |
      | BXY  | 07:04   | 07:04     |
      | AYP  | 07:06   | 07:06     |
      | SID  | 07:09   | 07:09     |
      | NEH  | 07:12   | 07:13     |
      | MTG  | 07:15   | 07:15     |
      | LEE  | 07:18   | 07:18     |
      | HGR  | 07:21   | 07:21     |
      | LEW  | 07:26   | 07:27     |
      | SAJ  | 07:29   | 07:29     |
      | NWX  | 07:31   | 07:31     |
      | LBG  | 07:37   | 07:39     |
      | CST  | 07:43   | --:--     |
    When I query between "CST" and "CST" on "2020-08-01" at "06:05"
    Then I should see a service "W58590" that stops at
      | stop | arrival | departure |
      | CST  | --:--   | 06:05     |
      | LBG  | 06:08   | 06:09     |
      | DEP  | 06:15   | 06:15     |
      | GNW  | 06:17   | 06:17     |
      | MZH  | 06:20   | 06:20     |
      | WCB  | 06:22   | 06:22     |
      | CTN  | 06:24   | 06:25     |
      | WWD  | 06:28   | 06:28     |
      | WWA  | 06:30   | 06:31     |
      | PLU  | 06:33   | 06:33     |
      | ABW  | 06:36   | 06:36     |
      | BVD  | 06:39   | 06:39     |
      | ERH  | 06:42   | 06:42     |
      | SGR  | 06:45   | 06:46     |
      | CRY  | 06:59   | 07:01     |
      | BXY  | 07:04   | 07:04     |
      | AYP  | 07:06   | 07:06     |
      | SID  | 07:09   | 07:09     |
      | NEH  | 07:12   | 07:13     |
      | MTG  | 07:15   | 07:15     |
      | LEE  | 07:18   | 07:18     |
      | HGR  | 07:21   | 07:21     |
      | LEW  | 07:26   | 07:27     |
      | SAJ  | 07:29   | 07:29     |
      | NWX  | 07:31   | 07:31     |
      | LBG  | 07:37   | 07:39     |
      | CST  | 07:43   | --:--     |

