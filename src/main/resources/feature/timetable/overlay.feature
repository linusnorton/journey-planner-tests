@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between KGX and HFN
    Given a query between "KGX" and "HFN" on "2020-05-02" at "05:06"
    Then I should see a service "L03096" that stops at
      | stop | arrival | departure |
      | KGX  | --:--   | 05:06     |
      | FPK  | 05:12   | 05:13     |
      | HGY  | 05:16   | 05:16     |
      | HRN  | 05:18   | 05:18     |
      | AAP  | 05:21   | 05:21     |
      | PAL  | 05:25   | 05:25     |
      | WIH  | 05:27   | 05:27     |
      | ENC  | 05:30   | 05:30     |
      | GDH  | 05:32   | 05:33     |
      | CWH  | 05:36   | 05:36     |
      | CUF  | 05:39   | 05:39     |
      | BAY  | 05:43   | 05:43     |
      | HFN  | 05:49   | --:--     |
    When I query between "KGX" and "HFN" on "2020-05-09" at "05:06"
    Then I should see a service "L03096" that stops at
      | stop | arrival | departure |
      | KGX  | --:--   | 05:06     |
      | FPK  | 05:13   | 05:14     |
      | AAP  | 05:19   | 05:21     |
      | PAL  | 05:25   | 05:25     |
      | WIH  | 05:27   | 05:27     |
      | ENC  | 05:30   | 05:30     |
      | GDH  | 05:32   | 05:33     |
      | CWH  | 05:36   | 05:36     |
      | CUF  | 05:39   | 05:39     |
      | BAY  | 05:43   | 05:43     |
      | HFN  | 05:49   | --:--     |

  Scenario: Changing calling point stopping times between BTN and CBG
    Given a query between "BTN" and "CBG" on "2020-05-02" at "07:08"
    Then I should see a service "C03268" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 07:08     |
      | PRP  | 07:12   | 07:12     |
      | HSK  | 07:18   | 07:18     |
      | BUG  | 07:22   | 07:22     |
      | HHE  | 07:27   | 07:31     |
      | TBD  | 07:39   | 07:40     |
      | GTW  | 07:45   | 07:46     |
      | ECR  | 08:01   | 08:01     |
      | LBG  | 08:15   | 08:16     |
      | BFR  | 08:21   | 08:22     |
      | ZFD  | 08:26   | 08:26     |
      | STP  | 08:30   | 08:31     |
      | FPK  | 08:41   | 08:42     |
      | SVG  | 09:01   | 09:03     |
      | HIT  | 09:08   | 09:08     |
      | LET  | 09:13   | 09:14     |
      | BDK  | 09:17   | 09:17     |
      | RYS  | 09:24   | 09:25     |
      | CBG  | 09:40   | --:--     |
    When I query between "TBD" and "CBG" on "2020-05-09" at "07:41"
    Then I should see a service "C03268" that stops at
      | stop | arrival | departure |
      | TBD  | --:--   | 07:41     |
      | GTW  | 07:45   | 07:46     |
      | ECR  | 08:01   | 08:01     |
      | LBG  | 08:15   | 08:16     |
      | BFR  | 08:21   | 08:22     |
      | ZFD  | 08:26   | 08:26     |
      | STP  | 08:30   | 08:31     |
      | FPK  | 08:41   | 08:42     |
      | SVG  | 09:01   | 09:03     |
      | HIT  | 09:08   | 09:08     |
      | LET  | 09:13   | 09:14     |
      | BDK  | 09:17   | 09:17     |
      | RYS  | 09:24   | 09:25     |
      | CBG  | 09:40   | --:--     |

  Scenario: Changing calling point stopping times between SOU and BTN
    Given a query between "SOU" and "BTN" on "2020-05-02" at "11:28"
    Then I should see a service "W22697" that stops at
      | stop | arrival | departure |
      | SOU  | --:--   | 11:28     |
      | SNW  | 11:46   | 11:46     |
      | FRM  | 11:52   | 11:53     |
      | CSA  | 12:01   | 12:02     |
      | HAV  | 12:09   | 12:10     |
      | EMS  | 12:13   | 12:13     |
      | CCH  | 12:21   | 12:22     |
      | BAA  | 12:30   | 12:31     |
      | FOD  | 12:36   | 12:36     |
      | ANG  | 12:43   | 12:43     |
      | GBS  | 12:47   | 12:47     |
      | DUR  | 12:50   | 12:50     |
      | WWO  | 12:52   | 12:52     |
      | WRH  | 12:55   | 12:56     |
      | LAC  | 13:00   | 13:00     |
      | SSE  | 13:04   | 13:05     |
      | SWK  | 13:08   | 13:08     |
      | PLD  | 13:11   | 13:11     |
      | HOV  | 13:15   | 13:16     |
      | BTN  | 13:21   | --:--     |
    When I query between "SOU" and "BTN" on "2020-05-09" at "11:26"
    Then I should see a service "W22697" that stops at
      | stop | arrival | departure |
      | SOU  | --:--   | 11:26     |
      | SNW  | 11:46   | 11:46     |
      | FRM  | 11:52   | 11:53     |
      | PTC  | 11:58   | 11:58     |
      | CSA  | 12:02   | 12:02     |
      | HAV  | 12:09   | 12:10     |
      | EMS  | 12:13   | 12:13     |
      | SOB  | 12:16   | 12:16     |
      | CCH  | 12:23   | 12:24     |
      | BAA  | 12:32   | 12:34     |
      | FOD  | 12:39   | 12:39     |
      | ANG  | 12:49   | 12:49     |
      | GBS  | 12:53   | 12:53     |
      | DUR  | 12:56   | 12:56     |
      | WWO  | 12:58   | 12:58     |
      | WRH  | 13:01   | 13:01     |
      | LAC  | 13:05   | 13:05     |
      | SSE  | 13:09   | 13:09     |
      | SWK  | 13:12   | 13:12     |
      | PLD  | 13:16   | 13:16     |
      | HOV  | 13:19   | 13:19     |
      | BTN  | 13:23   | --:--     |

  Scenario: Changing calling point stopping times between SOV and LST
    Given a query between "SOV" and "LST" on "2020-05-02" at "23:00"
    Then I should see a service "L46725" that stops at
      | stop | arrival | departure |
      | SOV  | --:--   | 23:00     |
      | PRL  | 23:02   | 23:02     |
      | SIA  | 23:05   | 23:05     |
      | RFD  | 23:08   | 23:08     |
      | HOC  | 23:12   | 23:12     |
      | RLG  | 23:16   | 23:16     |
      | WIC  | 23:21   | 23:21     |
      | BIC  | 23:27   | 23:27     |
      | SNF  | 23:35   | 23:35     |
      | SRA  | 23:50   | 23:50     |
      | LST  | 23:58   | --:--     |
    When I query between "SOV" and "LST" on "2020-05-09" at "23:00"
    Then I should see a service "L46725" that stops at
      | stop | arrival | departure |
      | SOV  | --:--   | 23:00     |
      | PRL  | 23:02   | 23:02     |
      | SIA  | 23:05   | 23:05     |
      | RFD  | 23:08   | 23:08     |
      | HOC  | 23:12   | 23:12     |
      | RLG  | 23:16   | 23:16     |
      | WIC  | 23:21   | 23:21     |
      | BIC  | 23:27   | 23:27     |
      | SNF  | 23:35   | 23:35     |
      | SRA  | 23:50   | 23:50     |
      | LST  | 23:58   | --:--     |

  Scenario: Changing calling point stopping times between WAT and DKG
    Given a query between "WAT" and "DKG" on "2020-05-02" at "20:24"
    Then I should see a service "W16712" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 20:24     |
      | VXH  | 20:27   | 20:28     |
      | CLJ  | 20:32   | 20:33     |
      | EAD  | 20:36   | 20:36     |
      | WIM  | 20:40   | 20:40     |
      | RAY  | 20:43   | 20:43     |
      | MOT  | 20:46   | 20:46     |
      | WCP  | 20:49   | 20:49     |
      | SNL  | 20:52   | 20:52     |
      | EWW  | 20:54   | 20:54     |
      | EPS  | 20:58   | 20:58     |
      | AHD  | 21:02   | 21:02     |
      | LHD  | 21:06   | 21:06     |
      | BXW  | 21:11   | 21:11     |
      | DKG  | 21:13   | --:--     |
    When I query between "WAT" and "EPS" on "2020-05-09" at "20:24"
    Then I should see a service "W16712" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 20:24     |
      | VXH  | 20:27   | 20:28     |
      | CLJ  | 20:32   | 20:33     |
      | EAD  | 20:36   | 20:36     |
      | WIM  | 20:40   | 20:40     |
      | RAY  | 20:43   | 20:43     |
      | MOT  | 20:46   | 20:46     |
      | WCP  | 20:49   | 20:49     |
      | SNL  | 20:52   | 20:52     |
      | EWW  | 20:54   | 20:54     |
      | EPS  | 20:58   | --:--     |

