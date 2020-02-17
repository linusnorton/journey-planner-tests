Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "BHM" and "SHR" on "2020-04-05" at "19:00"
    Then I should see a service "P45482" that stops at
      | stop | arrival | departure |
      | BHM  | --:--   | 19:00     |
      | SGB  | 19:06   | 19:06     |
      | SAD  | 19:09   | 19:10     |
      | WVH  | 19:20   | 19:21     |
      | BBK  | 19:27   | 19:27     |
      | CSL  | 19:29   | 19:29     |
      | ALB  | 19:34   | 19:34     |
      | COS  | 19:37   | 19:37     |
      | SFN  | 19:41   | 19:42     |
      | TFC  | 19:47   | 19:47     |
      | OKN  | 19:49   | 19:49     |
      | WLN  | 19:54   | 19:54     |
      | SHR  | 20:07   | --:--     |
    When I query between "BHM" and "SHR" on "2020-04-12" at "19:00"
    Then I should see a service "P45482" that stops at
      | stop | arrival | departure |
      | BBK  | --:--   | 19:50     |
      | CSL  | 19:52   | 19:52     |
      | ALB  | 19:57   | 19:57     |
      | COS  | 20:00   | 20:00     |
      | SFN  | 20:04   | 20:05     |
      | TFC  | 20:10   | 20:10     |
      | OKN  | 20:12   | 20:12     |
      | WLN  | 20:17   | 20:17     |
      | SHR  | 20:30   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "PAD" and "SWA" on "2020-04-04" at "09:47"
    Then I should see a service "L97106" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 09:47     |
      | RDG  | 10:10   | 10:12     |
      | SWI  | 10:38   | 10:40     |
      | BPW  | 11:02   | 11:04     |
      | NWP  | 11:23   | 11:25     |
      | CDF  | 11:37   | 11:41     |
      | BGN  | 12:02   | 12:03     |
      | PTA  | 12:16   | 12:17     |
      | NTH  | 12:24   | 12:25     |
      | SWA  | 12:37   | --:--     |
    When I query between "PAD" and "SWA" on "2020-04-11" at "09:47"
    Then I should see a service "L97106" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 09:15     |
      | RDG  | 09:37   | 09:39     |
      | SWI  | 10:07   | 10:08     |
      | NWP  | 11:26   | 11:27     |
      | CDF  | 11:39   | 11:41     |
      | BGN  | 12:02   | 12:03     |
      | PTA  | 12:16   | 12:17     |
      | NTH  | 12:24   | 12:25     |
      | SWA  | 12:37   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "GRV" and "VIC" on "2020-03-21" at "09:50"
    Then I should see a service "W52777" that stops at
      | stop | arrival | departure |
      | GRV  | --:--   | 09:50     |
      | GNH  | 09:56   | 09:56     |
      | DFD  | 10:01   | 10:02     |
      | BNH  | 10:09   | 10:09     |
      | BXH  | 10:12   | 10:12     |
      | WLI  | 10:15   | 10:15     |
      | FCN  | 10:18   | 10:18     |
      | ELW  | 10:20   | 10:21     |
      | KDB  | 10:24   | 10:24     |
      | BKH  | 10:27   | 10:28     |
      | LEW  | 10:31   | 10:32     |
      | NHD  | 10:37   | 10:37     |
      | PMR  | 10:40   | 10:40     |
      | DMK  | 10:43   | 10:44     |
      | VIC  | 10:55   | --:--     |
    When I query between "GRV" and "VIC" on "2020-03-28" at "09:50"
    Then I should see a service "W52777" that stops at
      | stop | arrival | departure |
      | NFL  | --:--   | 09:48     |
      | SWM  | 09:50   | 09:50     |
      | GNH  | 09:53   | 09:54     |
      | SCG  | 09:56   | 09:57     |
      | DFD  | 10:01   | 10:02     |
      | BNH  | 10:09   | 10:09     |
      | BXH  | 10:12   | 10:12     |
      | WLI  | 10:15   | 10:15     |
      | FCN  | 10:18   | 10:18     |
      | ELW  | 10:20   | 10:21     |
      | KDB  | 10:24   | 10:24     |
      | BKH  | 10:27   | 10:28     |
      | LEW  | 10:31   | 10:32     |
      | NHD  | 10:37   | 10:37     |
      | PMR  | 10:40   | 10:40     |
      | DMK  | 10:43   | 10:44     |
      | VIC  | 10:55   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "SRA" and "RMD" on "2020-04-26" at "20:58"
    Then I should see a service "L43237" that stops at
      | stop | arrival | departure |
      | SRA  | --:--   | 20:58     |
      | HKW  | 21:01   | 21:01     |
      | HMN  | 21:04   | 21:04     |
      | HKC  | 21:06   | 21:06     |
      | DLK  | 21:08   | 21:08     |
      | CNN  | 21:10   | 21:10     |
      | HHY  | 21:12   | 21:12     |
      | CIR  | 21:14   | 21:14     |
      | CMD  | 21:17   | 21:17     |
      | KTW  | 21:20   | 21:20     |
      | GPO  | 21:24   | 21:24     |
      | HDH  | 21:26   | 21:26     |
      | FNY  | 21:28   | 21:28     |
      | WHD  | 21:30   | 21:30     |
      | BSY  | 21:31   | 21:31     |
      | BSP  | 21:33   | 21:33     |
      | KNR  | 21:35   | 21:35     |
      | WIJ  | 21:40   | 21:41     |
      | ACC  | 21:46   | 21:46     |
      | SAT  | 21:49   | 21:49     |
      | GUN  | 21:52   | 21:52     |
      | KWG  | 21:55   | 21:55     |
      | RMD  | 22:00   | --:--     |
    When I query between "SRA" and "RMD" on "2020-05-03" at "20:58"
    Then I should see a service "L43237" that stops at
      | stop | arrival | departure |
      | SRA  | --:--   | 20:58     |
      | HKW  | 21:01   | 21:01     |
      | HMN  | 21:04   | 21:04     |
      | HKC  | 21:06   | 21:06     |
      | DLK  | 21:08   | 21:08     |
      | CNN  | 21:10   | 21:10     |
      | HHY  | 21:12   | 21:12     |
      | CIR  | 21:14   | 21:14     |
      | CMD  | 21:17   | 21:17     |
      | KTW  | 21:20   | 21:20     |
      | GPO  | 21:24   | 21:24     |
      | HDH  | 21:26   | 21:26     |
      | FNY  | 21:28   | 21:28     |
      | WHD  | 21:30   | 21:30     |
      | BSY  | 21:31   | 21:31     |
      | BSP  | 21:33   | 21:33     |
      | KNR  | 21:35   | 21:35     |
      | WIJ  | 21:45   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "PBO" and "HRH" on "2020-04-03" at "21:24"
    Then I should see a service "C03265" that stops at
      | stop | arrival | departure |
      | PBO  | --:--   | 21:24     |
      | HUN  | 21:38   | 21:41     |
      | SNO  | 21:48   | 21:48     |
      | SDY  | 21:56   | 21:56     |
      | BIW  | 21:59   | 22:00     |
      | ARL  | 22:04   | 22:04     |
      | HIT  | 22:10   | 22:10     |
      | SVG  | 22:15   | 22:16     |
      | FPK  | 22:36   | 22:37     |
      | STP  | 22:44   | 22:45     |
      | ZFD  | 22:49   | 22:49     |
      | CTK  | 22:51   | 22:51     |
      | BFR  | 22:53   | 22:54     |
      | LBG  | 22:59   | 23:00     |
      | ECR  | 23:15   | 23:16     |
      | CDS  | 23:22   | 23:23     |
      | MHM  | 23:28   | 23:28     |
      | RDH  | 23:32   | 23:33     |
      | HOR  | 23:39   | 23:39     |
      | GTW  | 23:41   | 23:42     |
      | TBD  | 23:47   | 23:49     |
      | CRW  | 23:53   | 23:53     |
      | IFI  | 23:56   | 23:56     |
      | LVN  | 00:02   | 00:02     |
      | HRH  | 00:06   | --:--     |
    When I query between "PBO" and "HRH" on "2020-04-10" at "21:24"
    Then I should see a service "C03265" that stops at
      | stop | arrival | departure |
      | PBO  | --:--   | 21:24     |
      | HUN  | 21:38   | 21:41     |
      | SNO  | 21:48   | 21:48     |
      | SDY  | 21:56   | 21:56     |
      | BIW  | 21:59   | 22:00     |
      | ARL  | 22:04   | 22:04     |
      | HIT  | 22:11   | 22:11     |
      | SVG  | 22:16   | 22:17     |
      | FPK  | 22:36   | 22:37     |
      | STP  | 22:44   | 22:45     |
      | ZFD  | 22:49   | 22:49     |
      | BFR  | 22:53   | 22:54     |
      | LBG  | 22:59   | 23:00     |
      | ECR  | 23:15   | 23:16     |
      | CDS  | 23:22   | 23:23     |
      | MHM  | 23:28   | 23:28     |
      | RDH  | 23:32   | 23:33     |
      | HOR  | 23:39   | 23:39     |
      | GTW  | 23:41   | 23:42     |
      | TBD  | 23:47   | 23:49     |
      | CRW  | 23:53   | 23:53     |
      | IFI  | 23:56   | 23:56     |
      | LVN  | 00:02   | 00:02     |
      | HRH  | 00:06   | --:--     |

