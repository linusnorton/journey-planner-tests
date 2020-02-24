Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "SRA" and "CLJ" on "2020-04-25" at "18:23"
    Then I should see a service "L44557" that stops at
      | stop | arrival | departure |
      | SRA  | --:--   | 18:23     |
      | HKW  | 18:26   | 18:26     |
      | HMN  | 18:29   | 18:29     |
      | HKC  | 18:31   | 18:31     |
      | DLK  | 18:33   | 18:33     |
      | CNN  | 18:35   | 18:35     |
      | HHY  | 18:37   | 18:37     |
      | CIR  | 18:39   | 18:39     |
      | CMD  | 18:42   | 18:42     |
      | KTW  | 18:45   | 18:45     |
      | GPO  | 18:49   | 18:49     |
      | HDH  | 18:51   | 18:51     |
      | FNY  | 18:53   | 18:53     |
      | WHD  | 18:55   | 18:55     |
      | BSY  | 18:56   | 18:56     |
      | BSP  | 18:58   | 18:58     |
      | KNR  | 19:00   | 19:00     |
      | WIJ  | 19:04   | 19:05     |
      | SPB  | 19:11   | 19:11     |
      | KPA  | 19:13   | 19:13     |
      | WBP  | 19:16   | 19:16     |
      | IMW  | 19:19   | 19:19     |
      | CLJ  | 19:25   | --:--     |
    When I query between "SRA" and "CLJ" on "2020-05-02" at "18:23"
    Then I should see a service "L44557" that stops at
      | stop | arrival | departure |
      | SRA  | --:--   | 18:23     |
      | HKW  | 18:26   | 18:26     |
      | HMN  | 18:29   | 18:29     |
      | HKC  | 18:31   | 18:31     |
      | DLK  | 18:33   | 18:33     |
      | CNN  | 18:35   | 18:35     |
      | HHY  | 18:37   | 18:37     |
      | CIR  | 18:39   | 18:39     |
      | CMD  | 18:42   | 18:42     |
      | KTW  | 18:45   | 18:45     |
      | GPO  | 18:49   | 18:49     |
      | HDH  | 18:51   | 18:51     |
      | FNY  | 18:53   | 18:53     |
      | WHD  | 18:55   | 18:55     |
      | BSY  | 18:56   | 18:56     |
      | BSP  | 18:58   | 18:58     |
      | KNR  | 19:00   | 19:00     |
      | WIJ  | 19:04   | 19:05     |
      | SPB  | 19:11   | 19:11     |
      | KPA  | 19:13   | 19:13     |
      | WBP  | 19:16   | 19:16     |
      | IMW  | 19:19   | 19:19     |
      | CLJ  | 19:25   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "SRA" and "CLJ" on "2020-03-21" at "06:23"
    Then I should see a service "L44570" that stops at
      | stop | arrival | departure |
      | SRA  | --:--   | 06:23     |
      | HKW  | 06:27   | 06:27     |
      | HMN  | 06:30   | 06:30     |
      | HKC  | 06:32   | 06:32     |
      | DLK  | 06:34   | 06:34     |
      | CNN  | 06:36   | 06:36     |
      | HHY  | 06:38   | 06:38     |
      | CIR  | 06:40   | 06:40     |
      | CMD  | 06:43   | 06:43     |
      | KTW  | 06:46   | 06:46     |
      | GPO  | 06:49   | 06:49     |
      | HDH  | 06:51   | 06:51     |
      | FNY  | 06:53   | 06:53     |
      | WHD  | 06:55   | 06:55     |
      | BSY  | 06:56   | 06:56     |
      | BSP  | 06:58   | 06:58     |
      | KNR  | 07:00   | 07:00     |
      | WIJ  | 07:04   | 07:05     |
      | SPB  | 07:11   | 07:11     |
      | KPA  | 07:13   | 07:13     |
      | WBP  | 07:16   | 07:16     |
      | IMW  | 07:19   | 07:19     |
      | CLJ  | 07:25   | --:--     |
    When I query between "WIJ" and "CLJ" on "2020-03-28" at "06:23"
    Then I should see a service "L44570" that stops at
      | stop | arrival | departure |
      | WIJ  | --:--   | 07:05     |
      | SPB  | 07:11   | 07:11     |
      | KPA  | 07:13   | 07:13     |
      | WBP  | 07:16   | 07:16     |
      | IMW  | 07:19   | 07:19     |
      | CLJ  | 07:30   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "LBG" and "SUO" on "2020-04-12" at "08:30"
    Then I should see a service "W40056" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 08:30     |
      | TUH  | 08:43   | 08:46     |
      | STE  | 08:50   | 08:50     |
      | MTC  | 08:53   | 08:53     |
      | MIJ  | 08:56   | 08:56     |
      | HCB  | 08:59   | 08:59     |
      | CSH  | 09:02   | 09:02     |
      | SUO  | 09:05   | --:--     |
    When I query between "BFR" and "SUO" on "2020-04-19" at "08:30"
    Then I should see a service "W40056" that stops at
      | stop | arrival | departure |
      | BFR  | --:--   | 08:27     |
      | EPH  | 08:30   | 08:31     |
      | LGJ  | 08:36   | 08:36     |
      | HNH  | 08:39   | 08:41     |
      | TUH  | 08:45   | 08:45     |
      | STE  | 08:49   | 08:49     |
      | MTC  | 08:53   | 08:53     |
      | MIJ  | 08:56   | 08:56     |
      | HCB  | 08:59   | 08:59     |
      | CSH  | 09:01   | 09:01     |
      | SUO  | 09:05   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "FST" and "GRY" on "2020-05-04" at "20:25"
    Then I should see a service "L40696" that stops at
      | stop | arrival | departure |
      | FST  | --:--   | 20:25     |
      | LHS  | 20:29   | 20:29     |
      | WEH  | 20:34   | 20:34     |
      | BKG  | 20:39   | 20:40     |
      | DDK  | 20:44   | 20:44     |
      | RNM  | 20:48   | 20:48     |
      | PFL  | 20:54   | 20:55     |
      | GRY  | 21:01   | --:--     |
    When I query between "FST" and "GRY" on "2020-05-11" at "20:25"
    Then I should see a service "L40696" that stops at
      | stop | arrival | departure |
      | FST  | --:--   | 20:25     |
      | LHS  | 20:29   | 20:29     |
      | WEH  | 20:34   | 20:34     |
      | BKG  | 20:39   | 20:40     |
      | DDK  | 20:44   | 20:44     |
      | RNM  | 20:48   | 20:48     |
      | PFL  | 20:53   | 20:54     |
      | GRY  | 21:05   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "LBG" and "HRH" on "2020-03-22" at "18:21"
    Then I should see a service "L09842" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 18:21     |
      | NWD  | 18:33   | 18:33     |
      | ECR  | 18:37   | 18:37     |
      | CDS  | 18:44   | 18:44     |
      | MHM  | 18:49   | 18:49     |
      | RDH  | 18:53   | 18:53     |
      | HOR  | 18:59   | 18:59     |
      | GTW  | 19:02   | 19:03     |
      | TBD  | 19:08   | 19:09     |
      | CRW  | 19:12   | 19:13     |
      | IFI  | 19:15   | 19:15     |
      | LVN  | 19:21   | 19:21     |
      | HRH  | 19:25   | --:--     |
    When I query between "BFR" and "HRH" on "2020-03-29" at "18:21"
    Then I should see a service "L09842" that stops at
      | stop | arrival | departure |
      | BFR  | --:--   | 18:15     |
      | ECR  | 18:42   | 18:44     |
      | CDS  | 18:50   | 18:50     |
      | MHM  | 18:56   | 18:56     |
      | RDH  | 18:59   | 19:00     |
      | HOR  | 19:06   | 19:06     |
      | GTW  | 19:08   | 19:09     |
      | TBD  | 19:14   | 19:15     |
      | CRW  | 19:19   | 19:19     |
      | IFI  | 19:22   | 19:22     |
      | LVN  | 19:28   | 19:28     |
      | HRH  | 19:32   | --:--     |

