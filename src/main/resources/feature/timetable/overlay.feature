Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "ORP" and "VIC" on "2020-03-29" at "20:24"
    Then I should see a service "W44823" that stops at
      | stop | arrival | departure |
      | ORP  | --:--   | 20:24     |
      | PET  | 20:27   | 20:27     |
      | BKL  | 20:31   | 20:31     |
      | BMS  | 20:34   | 20:34     |
      | SRT  | 20:37   | 20:37     |
      | BKJ  | 20:40   | 20:40     |
      | KTH  | 20:42   | 20:42     |
      | PNE  | 20:44   | 20:44     |
      | SYH  | 20:47   | 20:48     |
      | WDU  | 20:50   | 20:50     |
      | HNH  | 20:52   | 20:53     |
      | BRX  | 20:55   | 20:56     |
      | VIC  | 21:04   | --:--     |
    When I query between "BKJ" and "VIC" on "2020-04-05" at "20:24"
    Then I should see a service "W44823" that stops at
      | stop | arrival | departure |
      | BKJ  | --:--   | 20:40     |
      | KTH  | 20:42   | 20:42     |
      | PNE  | 20:44   | 20:44     |
      | SYH  | 20:47   | 20:48     |
      | WDU  | 20:50   | 20:50     |
      | HNH  | 20:54   | 20:55     |
      | BRX  | 20:57   | 20:58     |
      | VIC  | 21:06   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "NOT" and "STP" on "2020-04-19" at "21:21"
    Then I should see a service "C64076" that stops at
      | stop | arrival | departure |
      | NOT  | --:--   | 21:21     |
      | EMD  | 21:30   | 21:31     |
      | LBO  | 21:38   | 21:39     |
      | LEI  | 21:53   | 21:54     |
      | MHR  | 22:07   | 22:08     |
      | KET  | 22:17   | 22:18     |
      | WEL  | 22:24   | 22:25     |
      | BDM  | 22:39   | 22:39     |
      | LUT  | 22:54   | 22:54     |
      | STP  | 23:24   | --:--     |
    When I query between "NOT" and "STP" on "2020-04-26" at "21:21"
    Then I should see a service "C64076" that stops at
      | stop | arrival | departure |
      | NOT  | --:--   | 21:21     |
      | EMD  | 21:30   | 21:31     |
      | LBO  | 21:38   | 21:39     |
      | LEI  | 21:53   | 21:54     |
      | MHR  | 22:07   | 22:08     |
      | KET  | 22:17   | 22:18     |
      | WEL  | 22:24   | 22:25     |
      | BDM  | 22:39   | 22:39     |
      | LUT  | 22:54   | 22:54     |
      | STP  | 23:27   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "DFD" and "VIC" on "2020-03-15" at "09:02"
    Then I should see a service "W52766" that stops at
      | stop | arrival | departure |
      | DFD  | --:--   | 09:02     |
      | BNH  | 09:09   | 09:09     |
      | BXH  | 09:12   | 09:12     |
      | WLI  | 09:15   | 09:15     |
      | FCN  | 09:18   | 09:18     |
      | ELW  | 09:20   | 09:21     |
      | KDB  | 09:24   | 09:24     |
      | BKH  | 09:27   | 09:28     |
      | LEW  | 09:31   | 09:32     |
      | NHD  | 09:37   | 09:37     |
      | PMR  | 09:40   | 09:40     |
      | DMK  | 09:43   | 09:44     |
      | VIC  | 09:56   | --:--     |
    When I query between "DFD" and "VIC" on "2020-03-22" at "09:02"
    Then I should see a service "W52766" that stops at
      | stop | arrival | departure |
      | DFD  | --:--   | 09:02     |
      | BNH  | 09:09   | 09:09     |
      | BXH  | 09:12   | 09:12     |
      | WLI  | 09:15   | 09:15     |
      | FCN  | 09:18   | 09:18     |
      | ELW  | 09:20   | 09:21     |
      | KDB  | 09:24   | 09:24     |
      | BKH  | 09:27   | 09:28     |
      | LEW  | 09:31   | 09:35     |
      | NHD  | 09:40   | 09:40     |
      | PMR  | 09:43   | 09:43     |
      | DMK  | 09:45   | 09:46     |
      | VIC  | 09:56   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "SAL" and "ROM" on "2020-04-25" at "15:56"
    Then I should see a service "W14176" that stops at
      | stop | arrival | departure |
      | SAL  | --:--   | 15:56     |
      | DEN  | 16:08   | 16:08     |
      | DBG  | 16:14   | 16:14     |
      | ROM  | 16:19   | 16:20     |
      | RDB  | 16:27   | 16:27     |
      | MBK  | 16:31   | 16:31     |
      | SOU  | 16:34   | 16:35     |
      | SDN  | 16:40   | 16:40     |
      | SWG  | 16:43   | 16:43     |
      | SOA  | 16:45   | 16:46     |
      | ESL  | 16:49   | 16:50     |
      | CFR  | 16:55   | 16:55     |
      | ROM  | 17:03   | --:--     |
    When I query between "SAL" and "SOU" on "2020-05-02" at "15:56"
    Then I should see a service "W14176" that stops at
      | stop | arrival | departure |
      | SAL  | --:--   | 15:56     |
      | DEN  | 16:08   | 16:08     |
      | DBG  | 16:14   | 16:14     |
      | ROM  | 16:19   | 16:20     |
      | RDB  | 16:27   | 16:27     |
      | MBK  | 16:31   | 16:31     |
      | SOU  | 16:33   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "BHM" and "EUS" on "2020-04-26" at "20:17"
    Then I should see a service "P84088" that stops at
      | stop | arrival | departure |
      | BHM  | --:--   | 20:17     |
      | MGN  | 20:25   | 20:25     |
      | BHI  | 20:28   | 20:28     |
      | HIA  | 20:31   | 20:31     |
      | THL  | 20:37   | 20:37     |
      | CNL  | 20:40   | 20:41     |
      | COV  | 20:44   | 20:44     |
      | RUG  | 20:54   | 20:55     |
      | LBK  | 21:04   | 21:04     |
      | NMP  | 21:17   | 21:29     |
      | WOL  | 21:40   | 21:41     |
      | MKC  | 21:45   | 21:45     |
      | BLY  | 21:49   | 21:50     |
      | LBZ  | 21:57   | 21:57     |
      | BKM  | 22:12   | 22:12     |
      | HML  | 22:16   | 22:16     |
      | APS  | 22:19   | 22:19     |
      | KGL  | 22:22   | 22:22     |
      | WFJ  | 22:27   | 22:27     |
      | HRW  | 22:33   | 22:33     |
      | EUS  | 22:47   | --:--     |
    When I query between "BHM" and "MKC" on "2020-05-03" at "20:17"
    Then I should see a service "P84088" that stops at
      | stop | arrival | departure |
      | BHM  | --:--   | 20:17     |
      | MGN  | 20:25   | 20:25     |
      | BHI  | 20:28   | 20:28     |
      | HIA  | 20:31   | 20:31     |
      | THL  | 20:37   | 20:37     |
      | CNL  | 20:40   | 20:41     |
      | COV  | 20:44   | 20:44     |
      | RUG  | 20:54   | 20:55     |
      | LBK  | 21:04   | 21:04     |
      | NMP  | 21:17   | 21:29     |
      | WOL  | 21:40   | 21:40     |
      | MKC  | 21:44   | --:--     |

