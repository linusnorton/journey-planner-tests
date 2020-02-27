@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between  and 
    Given a query between "RDH" and "RDG" on "2020-04-19" at "12:43"
    Then I should see a service "Y95986" that stops at
      | stop | arrival | departure |
      | RDH  | --:--   | 12:43     |
      | REI  | 12:47   | 12:48     |
      | DPD  | 12:55   | 12:55     |
      | GOM  | 13:03   | 13:04     |
      | CHL  | 13:10   | 13:10     |
      | SFR  | 13:14   | 13:15     |
      | GLD  | 13:20   | 13:22     |
      | ASH  | 13:31   | 13:31     |
      | NCM  | 13:35   | 13:36     |
      | FNN  | 13:39   | 13:40     |
      | BAW  | 13:44   | 13:44     |
      | SND  | 13:47   | 13:48     |
      | CRN  | 13:52   | 13:52     |
      | WKM  | 13:57   | 13:58     |
      | RDG  | 14:07   | --:--     |
    When I query between "ASH" and "RDG" on "2020-04-26" at "12:43"
    Then I should see a service "Y95986" that stops at
      | stop | arrival | departure |
      | ASH  | --:--   | 13:40     |
      | NCM  | 13:43   | 13:45     |
      | FNN  | 13:48   | 13:49     |
      | BAW  | 13:53   | 13:53     |
      | SND  | 13:56   | 13:57     |
      | CRN  | 14:00   | 14:01     |
      | WKM  | 14:05   | 14:06     |
      | RDG  | 14:17   | --:--     |

  Scenario: Changing calling point stopping times between  and 
    Given a query between "EUS" and "WVH" on "2020-04-20" at "23:30"
    Then I should see a service "C73619" that stops at
      | stop | arrival | departure |
      | EUS  | --:--   | 23:30     |
      | MKC  | 00:27   | 00:28     |
      | RUG  | 01:00   | 01:00     |
      | COV  | 01:13   | 01:13     |
      | BHI  | 01:23   | 01:23     |
      | BHM  | 01:35   | 01:37     |
      | WVH  | 02:04   | --:--     |
    When I query between "EUS" and "WVH" on "2020-04-27" at "23:30"
    Then I should see a service "C73619" that stops at
      | stop | arrival | departure |
      | EUS  | --:--   | 23:30     |
      | MKC  | 00:27   | 00:28     |
      | RUG  | 01:00   | 01:00     |
      | COV  | 01:13   | 01:13     |
      | BHI  | 01:23   | 01:23     |
      | BHM  | 01:35   | 01:37     |
      | WVH  | 01:57   | --:--     |

  Scenario: Changing calling point stopping times between  and 
    Given a query between "BPN" and "MCV" on "2020-04-26" at "10:15"
    Then I should see a service "C03826" that stops at
      | stop | arrival | departure |
      | BPN  | --:--   | 10:15     |
      | LAY  | 10:18   | 10:18     |
      | PFY  | 10:21   | 10:21     |
      | KKM  | 10:30   | 10:30     |
      | PRE  | 10:41   | 10:42     |
      | LEY  | 10:47   | 10:47     |
      | BSV  | 10:52   | 10:52     |
      | CRL  | 10:55   | 10:56     |
      | ADL  | 11:00   | 11:00     |
      | BLK  | 11:04   | 11:04     |
      | HWI  | 11:07   | 11:08     |
      | LOT  | 11:11   | 11:11     |
      | BON  | 11:16   | 11:22     |
      | SLD  | 11:36   | 11:37     |
      | SFD  | 11:39   | 11:41     |
      | MCV  | 11:44   | --:--     |
    When I query between "BPN" and "PRE" on "2020-05-03" at "10:15"
    Then I should see a service "C03826" that stops at
      | stop | arrival | departure |
      | BPN  | --:--   | 10:45     |
      | LAY  | 10:48   | 10:48     |
      | PFY  | 10:51   | 10:51     |
      | KKM  | 11:00   | 11:00     |
      | PRE  | 11:10   | --:--     |

  Scenario: Changing calling point stopping times between  and 
    Given a query between "DKG" and "WAT" on "2020-05-03" at "09:07"
    Then I should see a service "W16667" that stops at
      | stop | arrival | departure |
      | DKG  | --:--   | 09:07     |
      | BXW  | 09:10   | 09:10     |
      | LHD  | 09:15   | 09:15     |
      | AHD  | 09:18   | 09:18     |
      | EPS  | 09:23   | 09:23     |
      | EWW  | 09:27   | 09:27     |
      | SNL  | 09:29   | 09:29     |
      | WCP  | 09:32   | 09:32     |
      | MOT  | 09:35   | 09:35     |
      | RAY  | 09:38   | 09:38     |
      | WIM  | 09:44   | 09:44     |
      | EAD  | 09:48   | 09:48     |
      | CLJ  | 09:51   | 09:52     |
      | VXH  | 09:56   | 09:57     |
      | WAT  | 10:03   | --:--     |
    When I query between "EPS" and "WAT" on "2020-05-10" at "09:07"
    Then I should see a service "W16667" that stops at
      | stop | arrival | departure |
      | EPS  | --:--   | 09:24     |
      | EWW  | 09:27   | 09:28     |
      | SNL  | 09:30   | 09:30     |
      | WCP  | 09:33   | 09:33     |
      | MOT  | 09:36   | 09:36     |
      | RAY  | 09:39   | 09:42     |
      | WIM  | 09:49   | 09:49     |
      | EAD  | 09:53   | 09:53     |
      | CLJ  | 09:56   | 09:57     |
      | VXH  | 10:01   | 10:02     |
      | WAT  | 10:09   | --:--     |

  Scenario: Changing calling point stopping times between  and 
    Given a query between "WSL" and "WVH" on "2020-04-26" at "11:31"
    Then I should see a service "P83922" that stops at
      | stop | arrival | departure |
      | WSL  | --:--   | 11:31     |
      | BSC  | 11:35   | 11:35     |
      | TAB  | 11:37   | 11:38     |
      | HSD  | 11:41   | 11:41     |
      | PRY  | 11:44   | 11:44     |
      | WTT  | 11:46   | 11:46     |
      | AST  | 11:48   | 11:49     |
      | DUD  | 11:52   | 11:52     |
      | BHM  | 11:56   | 12:03     |
      | SMR  | 12:09   | 12:09     |
      | SGB  | 12:11   | 12:11     |
      | SAD  | 12:14   | 12:14     |
      | DDP  | 12:17   | 12:17     |
      | TIP  | 12:19   | 12:19     |
      | CSY  | 12:22   | 12:22     |
      | WVH  | 12:27   | --:--     |
    When I query between "WSL" and "TIP" on "2020-05-03" at "11:31"
    Then I should see a service "P83922" that stops at
      | stop | arrival | departure |
      | WSL  | --:--   | 11:31     |
      | BSC  | 11:35   | 11:35     |
      | TAB  | 11:37   | 11:38     |
      | HSD  | 11:41   | 11:41     |
      | PRY  | 11:44   | 11:44     |
      | WTT  | 11:46   | 11:46     |
      | AST  | 11:48   | 11:49     |
      | DUD  | 11:52   | 11:52     |
      | BHM  | 11:56   | 12:03     |
      | SMR  | 12:09   | 12:09     |
      | SGB  | 12:11   | 12:11     |
      | SAD  | 12:14   | 12:14     |
      | DDP  | 12:17   | 12:17     |
      | TIP  | 12:19   | --:--     |

