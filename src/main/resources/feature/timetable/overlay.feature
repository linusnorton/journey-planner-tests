Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "PAD" and "RDG" on "2020-05-03" at "22:03"
    Then I should see a service "G37676" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 22:03     |
      | EAL  | 22:11   | 22:11     |
      | STL  | 22:19   | 22:19     |
      | HAY  | 22:23   | 22:23     |
      | WDT  | 22:27   | 22:27     |
      | IVR  | 22:30   | 22:30     |
      | LNY  | 22:32   | 22:32     |
      | SLO  | 22:36   | 22:36     |
      | BNM  | 22:40   | 22:40     |
      | TAP  | 22:43   | 22:43     |
      | MAI  | 22:46   | 22:46     |
      | TWY  | 22:53   | 22:53     |
      | RDG  | 23:01   | --:--     |
    When I query between "PAD" and "RDG" on "2020-05-10" at "22:03"
    Then I should see a service "G37676" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 22:03     |
      | EAL  | 22:11   | 22:11     |
      | STL  | 22:19   | 22:19     |
      | HAY  | 22:23   | 22:23     |
      | WDT  | 22:27   | 22:27     |
      | IVR  | 22:30   | 22:30     |
      | LNY  | 22:32   | 22:32     |
      | SLO  | 22:36   | 22:36     |
      | BNM  | 22:40   | 22:40     |
      | TAP  | 22:43   | 22:43     |
      | MAI  | 22:46   | 22:46     |
      | TWY  | 22:53   | 22:53     |
      | RDG  | 23:03   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "PBO" and "HRH" on "2020-04-06" at "14:54"
    Then I should see a service "L09823" that stops at
      | stop | arrival | departure |
      | PBO  | --:--   | 14:54     |
      | HUN  | 15:08   | 15:11     |
      | SNO  | 15:18   | 15:18     |
      | SDY  | 15:26   | 15:26     |
      | BIW  | 15:29   | 15:30     |
      | ARL  | 15:34   | 15:34     |
      | HIT  | 15:41   | 15:41     |
      | SVG  | 15:46   | 15:47     |
      | FPK  | 16:07   | 16:08     |
      | STP  | 16:14   | 16:15     |
      | ZFD  | 16:19   | 16:19     |
      | CTK  | 16:21   | 16:21     |
      | BFR  | 16:23   | 16:24     |
      | LBG  | 16:29   | 16:30     |
      | ECR  | 16:44   | 16:46     |
      | CDS  | 16:56   | 16:56     |
      | MHM  | 17:02   | 17:02     |
      | RDH  | 17:06   | 17:06     |
      | GTW  | 17:15   | 17:16     |
      | TBD  | 17:21   | 17:25     |
      | CRW  | 17:28   | 17:29     |
      | IFI  | 17:31   | 17:31     |
      | FGT  | 17:35   | 17:35     |
      | LVN  | 17:39   | 17:40     |
      | HRH  | 17:45   | --:--     |
    When I query between "PBO" and "HRH" on "2020-04-13" at "14:54"
    Then I should see a service "L09823" that stops at
      | stop | arrival | departure |
      | PBO  | --:--   | 14:54     |
      | HUN  | 15:08   | 15:11     |
      | SNO  | 15:18   | 15:18     |
      | SDY  | 15:26   | 15:26     |
      | BIW  | 15:29   | 15:30     |
      | ARL  | 15:34   | 15:34     |
      | HIT  | 15:41   | 15:41     |
      | SVG  | 15:46   | 15:47     |
      | FPK  | 16:07   | 16:08     |
      | STP  | 16:14   | 16:15     |
      | ZFD  | 16:19   | 16:19     |
      | CTK  | 16:21   | 16:21     |
      | BFR  | 16:23   | 16:24     |
      | LBG  | 16:29   | 16:30     |
      | ECR  | 16:44   | 16:46     |
      | CDS  | 16:52   | 16:53     |
      | MHM  | 16:58   | 16:58     |
      | RDH  | 17:02   | 17:03     |
      | HOR  | 17:09   | 17:09     |
      | GTW  | 17:12   | 17:14     |
      | TBD  | 17:19   | 17:20     |
      | CRW  | 17:23   | 17:24     |
      | IFI  | 17:26   | 17:26     |
      | FGT  | 17:30   | 17:30     |
      | LVN  | 17:34   | 17:34     |
      | HRH  | 17:40   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "WNR" and "WAT" on "2020-04-25" at "22:53"
    Then I should see a service "W19504" that stops at
      | stop | arrival | departure |
      | WNR  | --:--   | 22:53     |
      | DAT  | 22:56   | 22:56     |
      | SNY  | 22:59   | 22:59     |
      | WRY  | 23:02   | 23:02     |
      | SNS  | 23:07   | 23:08     |
      | AFS  | 23:11   | 23:11     |
      | FEL  | 23:15   | 23:16     |
      | WTN  | 23:20   | 23:20     |
      | TWI  | 23:23   | 23:23     |
      | RMD  | 23:27   | 23:28     |
      | PUT  | 23:34   | 23:34     |
      | CLJ  | 23:38   | 23:39     |
      | VXH  | 23:44   | 23:45     |
      | WAT  | 23:49   | --:--     |
    When I query between "WNR" and "WAT" on "2020-05-02" at "22:53"
    Then I should see a service "W19504" that stops at
      | stop | arrival | departure |
      | WNR  | --:--   | 22:53     |
      | DAT  | 22:56   | 22:56     |
      | SNY  | 22:59   | 22:59     |
      | WRY  | 23:02   | 23:02     |
      | SNS  | 23:07   | 23:08     |
      | AFS  | 23:11   | 23:11     |
      | FEL  | 23:15   | 23:16     |
      | WTN  | 23:20   | 23:20     |
      | TWI  | 23:23   | 23:23     |
      | RMD  | 23:27   | 23:28     |
      | PUT  | 23:34   | 23:34     |
      | CLJ  | 23:38   | 23:39     |
      | VXH  | 23:44   | 23:45     |
      | WAT  | 23:49   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "ABD" and "KGX" on "2020-04-02" at "07:52"
    Then I should see a service "Y72757" that stops at
      | stop | arrival | departure |
      | ABD  | --:--   | 07:52     |
      | STN  | 08:09   | 08:10     |
      | MTS  | 08:31   | 08:33     |
      | ARB  | 08:48   | 08:49     |
      | DEE  | 09:06   | 09:08     |
      | LEU  | 09:20   | 09:22     |
      | KDY  | 09:45   | 09:47     |
      | INK  | 10:02   | 10:03     |
      | HYM  | 10:19   | 10:20     |
      | EDB  | 10:25   | 10:30     |
      | BWK  | 11:11   | 11:12     |
      | NCL  | 11:56   | 11:58     |
      | DAR  | 12:26   | 12:28     |
      | YRK  | 12:55   | 12:57     |
      | KGX  | 14:50   | --:--     |
    When I query between "ABD" and "KGX" on "2020-04-09" at "07:52"
    Then I should see a service "Y72757" that stops at
      | stop | arrival | departure |
      | ABD  | --:--   | 07:52     |
      | STN  | 08:09   | 08:10     |
      | MTS  | 08:31   | 08:33     |
      | ARB  | 08:48   | 08:49     |
      | DEE  | 09:06   | 09:08     |
      | LEU  | 09:20   | 09:22     |
      | KDY  | 09:45   | 09:47     |
      | INK  | 10:02   | 10:03     |
      | HYM  | 10:19   | --:--     |
      | EDB  | 10:25   | --:--     |
      | BWK  | 11:11   | 11:12     |
      | NCL  | 11:56   | 11:58     |
      | DAR  | 12:26   | 12:28     |
      | YRK  | 12:55   | 12:57     |
      | KGX  | 14:50   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "GMV" and "BRI" on "2020-04-07" at "21:16"
    Then I should see a service "Y95855" that stops at
      | stop | arrival | departure |
      | GMV  | --:--   | 21:16     |
      | MVL  | 21:18   | 21:19     |
      | WOF  | 21:27   | 21:29     |
      | WOS  | 21:31   | 21:33     |
      | ASC  | 21:50   | 21:50     |
      | CNM  | 21:59   | 22:00     |
      | GCR  | 22:08   | 22:11     |
      | CDU  | 22:23   | 22:23     |
      | YAE  | 22:36   | 22:36     |
      | BPW  | 22:45   | 22:45     |
      | FIT  | 22:48   | 22:49     |
      | BRI  | 22:57   | --:--     |
    When I query between "GMV" and "BRI" on "2020-04-14" at "21:16"
    Then I should see a service "Y95855" that stops at
      | stop | arrival | departure |
      | GMV  | --:--   | 21:16     |
      | MVL  | 21:18   | 21:19     |
      | WOF  | 21:27   | 21:29     |
      | WOS  | 21:31   | 21:33     |
      | ASC  | 21:50   | 21:50     |
      | CNM  | 21:59   | 22:00     |
      | GCR  | 22:08   | 22:11     |
      | CDU  | 22:23   | 22:23     |
      | YAE  | 22:36   | 22:36     |
      | BPW  | 22:45   | 22:45     |
      | FIT  | 22:48   | 22:49     |
      | BRI  | 22:57   | --:--     |

