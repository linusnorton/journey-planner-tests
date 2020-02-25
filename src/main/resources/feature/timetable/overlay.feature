Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "PMH" and "BTN" on "2020-03-29" at "20:14"
    Then I should see a service "L06796" that stops at
      | stop | arrival | departure |
      | PMH  | --:--   | 20:14     |
      | PMS  | 20:17   | 20:18     |
      | FTN  | 20:21   | 20:22     |
      | BDH  | 20:30   | 20:30     |
      | HAV  | 20:33   | 20:33     |
      | WBL  | 20:35   | 20:35     |
      | EMS  | 20:38   | 20:38     |
      | SOB  | 20:41   | 20:41     |
      | NUT  | 20:44   | 20:44     |
      | BOH  | 20:47   | 20:47     |
      | FSB  | 20:50   | 20:50     |
      | CCH  | 20:53   | 20:53     |
      | BAA  | 21:01   | 21:02     |
      | FOD  | 21:06   | 21:06     |
      | LIT  | 21:11   | 21:15     |
      | ANG  | 21:25   | 21:25     |
      | GBS  | 21:29   | 21:29     |
      | DUR  | 21:32   | 21:32     |
      | WWO  | 21:34   | 21:34     |
      | WRH  | 21:37   | 21:37     |
      | EWR  | 21:40   | 21:40     |
      | LAC  | 21:43   | 21:43     |
      | SSE  | 21:47   | 21:47     |
      | SWK  | 21:50   | 21:50     |
      | FSG  | 21:52   | 21:52     |
      | PLD  | 21:54   | 21:54     |
      | AGT  | 21:57   | 21:57     |
      | HOV  | 21:59   | 22:00     |
      | BTN  | 22:04   | --:--     |
    When I query between "CCH" and "BTN" on "2020-04-05" at "20:14"
    Then I should see a service "L06796" that stops at
      | stop | arrival | departure |
      | CCH  | --:--   | 20:53     |
      | BAA  | 21:01   | 21:02     |
      | FOD  | 21:06   | 21:06     |
      | LIT  | 21:11   | 21:15     |
      | ANG  | 21:25   | 21:25     |
      | GBS  | 21:29   | 21:29     |
      | DUR  | 21:32   | 21:32     |
      | WWO  | 21:34   | 21:34     |
      | WRH  | 21:37   | 21:37     |
      | EWR  | 21:40   | 21:40     |
      | LAC  | 21:43   | 21:43     |
      | SSE  | 21:47   | 21:47     |
      | SWK  | 21:50   | 21:50     |
      | FSG  | 21:52   | 21:52     |
      | PLD  | 21:54   | 21:54     |
      | AGT  | 21:57   | 21:57     |
      | HOV  | 21:59   | 22:00     |
      | BTN  | 22:04   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "RDG" and "WAT" on "2020-03-21" at "07:12"
    Then I should see a service "W17434" that stops at
      | stop | arrival | departure |
      | RDG  | --:--   | 07:12     |
      | EAR  | 07:17   | 07:17     |
      | WTI  | 07:19   | 07:19     |
      | WNS  | 07:21   | 07:21     |
      | WKM  | 07:25   | 07:26     |
      | BCE  | 07:32   | 07:32     |
      | MAO  | 07:35   | 07:35     |
      | ACT  | 07:39   | 07:40     |
      | SNG  | 07:43   | 07:43     |
      | LNG  | 07:46   | 07:46     |
      | VIR  | 07:50   | 07:50     |
      | EGH  | 07:53   | 07:54     |
      | SNS  | 07:58   | 07:59     |
      | FEL  | 08:05   | 08:05     |
      | TWI  | 08:10   | 08:11     |
      | RMD  | 08:15   | 08:15     |
      | CLJ  | 08:23   | 08:24     |
      | WAT  | 08:36   | --:--     |
    When I query between "RDG" and "SNS" on "2020-03-28" at "07:12"
    Then I should see a service "W17434" that stops at
      | stop | arrival | departure |
      | RDG  | --:--   | 07:12     |
      | EAR  | 07:17   | 07:17     |
      | WTI  | 07:19   | 07:19     |
      | WNS  | 07:21   | 07:21     |
      | WKM  | 07:25   | 07:26     |
      | BCE  | 07:32   | 07:32     |
      | MAO  | 07:35   | 07:35     |
      | ACT  | 07:39   | 07:40     |
      | SNG  | 07:43   | 07:43     |
      | LNG  | 07:46   | 07:46     |
      | VIR  | 07:50   | 07:50     |
      | EGH  | 07:53   | 07:54     |
      | SNS  | 07:58   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "SRA" and "RMD" on "2020-03-29" at "18:58"
    Then I should see a service "L43614" that stops at
      | stop | arrival | departure |
      | SRA  | --:--   | 18:58     |
      | HKW  | 19:01   | 19:01     |
      | HMN  | 19:04   | 19:04     |
      | HKC  | 19:06   | 19:06     |
      | DLK  | 19:08   | 19:08     |
      | CNN  | 19:10   | 19:10     |
      | HHY  | 19:12   | 19:12     |
      | CIR  | 19:14   | 19:14     |
      | CMD  | 19:17   | 19:17     |
      | KTW  | 19:20   | 19:20     |
      | GPO  | 19:24   | 19:24     |
      | HDH  | 19:26   | 19:26     |
      | FNY  | 19:28   | 19:28     |
      | WHD  | 19:30   | 19:30     |
      | BSY  | 19:31   | 19:31     |
      | BSP  | 19:33   | 19:33     |
      | KNR  | 19:35   | 19:35     |
      | WIJ  | 19:40   | 19:41     |
      | ACC  | 19:46   | 19:46     |
      | SAT  | 19:49   | 19:49     |
      | GUN  | 19:52   | 19:52     |
      | KWG  | 19:55   | 19:55     |
      | RMD  | 20:00   | --:--     |
    When I query between "SRA" and "WIJ" on "2020-04-05" at "18:58"
    Then I should see a service "L43614" that stops at
      | stop | arrival | departure |
      | SRA  | --:--   | 18:58     |
      | HKW  | 19:01   | 19:01     |
      | HMN  | 19:04   | 19:04     |
      | HKC  | 19:06   | 19:06     |
      | DLK  | 19:08   | 19:08     |
      | CNN  | 19:10   | 19:10     |
      | HHY  | 19:12   | 19:12     |
      | CIR  | 19:14   | 19:14     |
      | CMD  | 19:17   | 19:17     |
      | KTW  | 19:20   | 19:20     |
      | GPO  | 19:24   | 19:24     |
      | HDH  | 19:26   | 19:26     |
      | FNY  | 19:28   | 19:28     |
      | WHD  | 19:30   | 19:30     |
      | BSY  | 19:31   | 19:31     |
      | BSP  | 19:33   | 19:33     |
      | KNR  | 19:35   | 19:35     |
      | WIJ  | 19:45   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "LUT" and "RAI" on "2020-04-03" at "11:48"
    Then I should see a service "W40302" that stops at
      | stop | arrival | departure |
      | LUT  | --:--   | 11:48     |
      | LTN  | 11:51   | 11:51     |
      | HPD  | 11:56   | 11:56     |
      | SAC  | 12:01   | 12:01     |
      | RDT  | 12:06   | 12:06     |
      | ELS  | 12:10   | 12:10     |
      | MIL  | 12:13   | 12:14     |
      | WHP  | 12:21   | 12:21     |
      | STP  | 12:32   | 12:32     |
      | ZFD  | 12:36   | 12:37     |
      | CTK  | 12:38   | 12:39     |
      | BFR  | 12:41   | 12:41     |
      | LBG  | 12:47   | 12:48     |
      | DEP  | 12:55   | 12:55     |
      | GNW  | 12:57   | 12:57     |
      | MZH  | 13:00   | 13:00     |
      | WCB  | 13:02   | 13:02     |
      | CTN  | 13:04   | 13:05     |
      | WWA  | 13:10   | 13:10     |
      | PLU  | 13:12   | 13:13     |
      | ABW  | 13:16   | 13:16     |
      | SGR  | 13:22   | 13:22     |
      | DFD  | 13:27   | 13:28     |
      | SCG  | 13:32   | 13:32     |
      | GNH  | 13:34   | 13:34     |
      | SWM  | 13:37   | 13:37     |
      | NFL  | 13:39   | 13:39     |
      | GRV  | 13:43   | 13:43     |
      | HGM  | 13:49   | 13:49     |
      | SOO  | 13:54   | 13:55     |
      | RTR  | 13:58   | 13:58     |
      | CTM  | 14:01   | 14:01     |
      | GLM  | 14:05   | 14:06     |
      | RAI  | 14:11   | --:--     |
    When I query between "KTN" and "RAI" on "2020-04-10" at "11:48"
    Then I should see a service "W40302" that stops at
      | stop | arrival | departure |
      | KTN  | --:--   | 12:26     |
      | STP  | 12:32   | 12:32     |
      | ZFD  | 12:36   | 12:37     |
      | CTK  | 12:38   | 12:39     |
      | BFR  | 12:41   | 12:41     |
      | LBG  | 12:47   | 12:48     |
      | DEP  | 12:55   | 12:55     |
      | GNW  | 12:57   | 12:57     |
      | MZH  | 13:00   | 13:00     |
      | WCB  | 13:02   | 13:02     |
      | CTN  | 13:04   | 13:05     |
      | WWA  | 13:10   | 13:10     |
      | PLU  | 13:12   | 13:13     |
      | ABW  | 13:16   | 13:16     |
      | SGR  | 13:22   | 13:22     |
      | DFD  | 13:27   | 13:28     |
      | SCG  | 13:32   | 13:32     |
      | GNH  | 13:34   | 13:34     |
      | SWM  | 13:37   | 13:37     |
      | NFL  | 13:39   | 13:39     |
      | GRV  | 13:43   | 13:43     |
      | HGM  | 13:49   | 13:49     |
      | SOO  | 13:54   | 13:55     |
      | RTR  | 13:58   | 13:58     |
      | CTM  | 14:01   | 14:01     |
      | GLM  | 14:05   | 14:06     |
      | RAI  | 14:11   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "NRW" and "LST" on "2020-04-21" at "07:05"
    Then I should see a service "L41917" that stops at
      | stop | arrival | departure |
      | NRW  | --:--   | 07:05     |
      | DIS  | 07:22   | 07:23     |
      | SMK  | 07:34   | 07:35     |
      | IPS  | 07:47   | 07:49     |
      | MNG  | 07:58   | 07:59     |
      | COL  | 08:08   | 08:10     |
      | SRA  | 08:53   | --:--     |
      | LST  | 09:04   | --:--     |
    When I query between "NRW" and "LST" on "2020-04-28" at "07:05"
    Then I should see a service "L41917" that stops at
      | stop | arrival | departure |
      | NRW  | --:--   | 07:05     |
      | DIS  | 07:22   | 07:23     |
      | SMK  | 07:34   | 07:35     |
      | IPS  | 07:47   | 07:49     |
      | MNG  | 07:58   | 07:59     |
      | COL  | 08:08   | 08:10     |
      | SRA  | 08:53   | --:--     |
      | LST  | 09:04   | --:--     |

