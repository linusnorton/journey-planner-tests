Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "BTN" and "VIC" on "2020-04-19" at "14:57"
    Then I should see a service "W20911" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 14:57     |
      | HSK  | 15:05   | 15:06     |
      | BUG  | 15:09   | 15:10     |
      | HHE  | 15:15   | 15:16     |
      | TBD  | 15:24   | 15:25     |
      | GTW  | 15:29   | 15:30     |
      | ECR  | 15:44   | 15:45     |
      | CLJ  | 15:54   | 15:55     |
      | VIC  | 16:02   | --:--     |
    When I query between "BTN" and "VIC" on "2020-04-26" at "14:57"
    Then I should see a service "W20911" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 14:57     |
      | HSK  | 15:05   | 15:06     |
      | BUG  | 15:09   | 15:10     |
      | HHE  | 15:15   | 15:16     |
      | TBD  | 15:24   | 15:25     |
      | GTW  | 15:29   | 15:30     |
      | ECR  | 15:50   | 15:51     |
      | CLJ  | 16:00   | 16:01     |
      | VIC  | 16:07   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "GCR" and "WEY" on "2020-04-18" at "08:42"
    Then I should see a service "Y95601" that stops at
      | stop | arrival | departure |
      | GCR  | --:--   | 08:42     |
      | CDU  | 08:54   | 08:55     |
      | YAE  | 09:08   | 09:08     |
      | BPW  | 09:17   | 09:18     |
      | FIT  | 09:21   | 09:21     |
      | BRI  | 09:30   | 09:40     |
      | KYN  | 09:46   | 09:47     |
      | OLF  | 09:53   | 09:54     |
      | BTH  | 09:56   | 09:58     |
      | FFD  | 10:07   | 10:07     |
      | AVF  | 10:10   | 10:10     |
      | BOA  | 10:13   | 10:14     |
      | TRO  | 10:20   | 10:20     |
      | WSB  | 10:27   | 10:29     |
      | FRO  | 10:38   | 10:39     |
      | BRU  | 10:50   | 10:51     |
      | CLC  | 10:55   | 10:56     |
      | YVP  | 11:08   | 11:10     |
      | THO  | 11:14   | 11:14     |
      | YET  | 11:17   | 11:17     |
      | CNO  | 11:21   | 11:21     |
      | MDN  | 11:32   | 11:34     |
      | DCW  | 11:45   | 11:53     |
      | UPW  | 12:01   | 12:01     |
      | WEY  | 12:07   | --:--     |
    When I query between "BRI" and "WEY" on "2020-04-25" at "08:42"
    Then I should see a service "Y95601" that stops at
      | stop | arrival | departure |
      | BRI  | --:--   | 09:41     |
      | KYN  | 09:47   | 09:48     |
      | OLF  | 09:54   | 09:55     |
      | BTH  | 09:57   | 09:58     |
      | FFD  | 10:07   | 10:07     |
      | AVF  | 10:10   | 10:10     |
      | BOA  | 10:13   | 10:14     |
      | TRO  | 10:20   | 10:20     |
      | WSB  | 10:27   | 10:29     |
      | FRO  | 10:38   | 10:39     |
      | BRU  | 10:50   | 10:51     |
      | CLC  | 10:55   | 10:56     |
      | YVP  | 11:08   | 11:10     |
      | THO  | 11:14   | 11:14     |
      | YET  | 11:17   | 11:17     |
      | CNO  | 11:21   | 11:21     |
      | MDN  | 11:32   | 11:34     |
      | DCW  | 11:45   | 11:53     |
      | UPW  | 12:01   | 12:01     |
      | WEY  | 12:07   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "GLC" and "EUS" on "2020-03-29" at "17:38"
    Then I should see a service "C73002" that stops at
      | stop | arrival | departure |
      | GLC  | --:--   | 17:38     |
      | LOC  | 18:31   | 18:32     |
      | CAR  | 18:50   | 18:52     |
      | PNR  | 19:05   | 19:06     |
      | OXN  | 19:28   | 19:29     |
      | LAN  | 19:43   | 19:44     |
      | PRE  | 20:02   | 20:05     |
      | WGN  | 20:16   | 20:17     |
      | WBQ  | 20:27   | 20:28     |
      | CRE  | 20:47   | 20:49     |
      | MKC  | 21:52   | 21:54     |
      | WFJ  | 22:31   | --:--     |
      | EUS  | 22:53   | --:--     |
    When I query between "PRE" and "EUS" on "2020-04-05" at "17:38"
    Then I should see a service "C73002" that stops at
      | stop | arrival | departure |
      | PRE  | --:--   | 20:05     |
      | WGN  | 20:16   | 20:17     |
      | WBQ  | 20:27   | 20:28     |
      | CRE  | 20:47   | 20:49     |
      | MKC  | 21:52   | 21:54     |
      | WFJ  | 22:31   | --:--     |
      | EUS  | 22:53   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "HHY" and "WCY" on "2020-04-06" at "15:32"
    Then I should see a service "L45896" that stops at
      | stop | arrival | departure |
      | HHY  | --:--   | 15:32     |
      | CNN  | 15:34   | 15:34     |
      | DLJ  | 15:36   | 15:37     |
      | HGG  | 15:39   | 15:39     |
      | HOX  | 15:41   | 15:41     |
      | SDC  | 15:43   | 15:43     |
      | ZLW  | 15:45   | 15:46     |
      | SDE  | 15:48   | 15:48     |
      | WPE  | 15:50   | 15:50     |
      | ROE  | 15:51   | 15:51     |
      | ZCW  | 15:53   | 15:53     |
      | SQE  | 15:55   | 15:55     |
      | NXG  | 15:59   | 16:00     |
      | BCY  | 16:02   | 16:02     |
      | HPA  | 16:05   | 16:05     |
      | FOH  | 16:07   | 16:07     |
      | SYD  | 16:10   | 16:11     |
      | PNW  | 16:13   | 16:13     |
      | ANZ  | 16:15   | 16:15     |
      | NWD  | 16:18   | 16:18     |
      | WCY  | 16:28   | --:--     |
    When I query between "HHY" and "WCY" on "2020-04-13" at "15:32"
    Then I should see a service "L45896" that stops at
      | stop | arrival | departure |
      | HHY  | --:--   | 15:32     |
      | CNN  | 15:34   | 15:34     |
      | DLJ  | 15:36   | 15:37     |
      | HGG  | 15:39   | 15:39     |
      | HOX  | 15:41   | 15:41     |
      | SDC  | 15:43   | 15:43     |
      | ZLW  | 15:45   | 15:46     |
      | SDE  | 15:48   | 15:48     |
      | WPE  | 15:50   | 15:50     |
      | ROE  | 15:51   | 15:51     |
      | ZCW  | 15:53   | 15:53     |
      | SQE  | 15:55   | 15:55     |
      | NXG  | 15:59   | 16:00     |
      | BCY  | 16:02   | 16:02     |
      | HPA  | 16:05   | 16:05     |
      | FOH  | 16:07   | 16:07     |
      | SYD  | 16:10   | 16:11     |
      | PNW  | 16:13   | 16:13     |
      | ANZ  | 16:15   | 16:15     |
      | NWD  | 16:18   | 16:18     |
      | WCY  | 16:29   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "RDG" and "PAD" on "2020-03-22" at "16:25"
    Then I should see a service "G37603" that stops at
      | stop | arrival | departure |
      | RDG  | --:--   | 16:25     |
      | TWY  | 16:30   | 16:31     |
      | MAI  | 16:37   | 16:38     |
      | TAP  | 16:41   | 16:41     |
      | BNM  | 16:44   | 16:44     |
      | SLO  | 16:48   | 16:48     |
      | LNY  | 16:52   | 16:52     |
      | IVR  | 16:55   | 16:55     |
      | WDT  | 16:58   | 16:58     |
      | HAY  | 17:02   | 17:02     |
      | STL  | 17:06   | 17:06     |
      | EAL  | 17:13   | 17:13     |
      | PAD  | 17:23   | --:--     |
    When I query between "RDG" and "PAD" on "2020-03-29" at "16:25"
    Then I should see a service "G37603" that stops at
      | stop | arrival | departure |
      | RDG  | --:--   | 16:25     |
      | TWY  | 16:30   | 16:31     |
      | MAI  | 16:37   | 16:38     |
      | TAP  | 16:41   | 16:41     |
      | BNM  | 16:44   | 16:44     |
      | SLO  | 16:48   | 16:48     |
      | LNY  | 16:52   | 16:52     |
      | IVR  | 16:55   | 16:55     |
      | WDT  | 16:58   | 16:58     |
      | HAY  | 17:02   | 17:02     |
      | STL  | 17:07   | 17:07     |
      | EAL  | 17:12   | 17:12     |
      | PAD  | 17:21   | --:--     |

