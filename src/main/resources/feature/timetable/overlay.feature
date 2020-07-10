@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between MER and BGN
    Given a query between "MER" and "BGN" on "2020-08-03" at "21:38"
    Then I should see a service "C38077" that stops at
      | stop | arrival | departure |
      | MER  | --:--   | 21:38     |
      | PTB  | 21:41   | 21:42     |
      | TRD  | 21:44   | 21:45     |
      | MEV  | 21:48   | 21:50     |
      | QYD  | 21:55   | 21:55     |
      | ACY  | 21:59   | 22:00     |
      | PPD  | 22:08   | 22:08     |
      | TRF  | 22:10   | 22:11     |
      | TRE  | 22:15   | 22:15     |
      | TAF  | 22:19   | 22:19     |
      | RDR  | 22:23   | 22:23     |
      | LLN  | 22:26   | 22:26     |
      | CYS  | 22:30   | 22:31     |
      | CDQ  | 22:35   | 22:36     |
      | CDF  | 22:40   | 22:43     |
      | GTN  | 22:47   | 22:47     |
      | CGN  | 22:50   | 22:50     |
      | EBK  | 22:53   | 22:53     |
      | DNS  | 22:55   | 22:55     |
      | CAD  | 22:59   | 22:59     |
      | BYD  | 23:02   | 23:02     |
      | BRY  | 23:06   | 23:06     |
      | RIA  | 23:13   | 23:13     |
      | LWM  | 23:23   | 23:23     |
      | BGN  | 23:39   | --:--     |
    When I query between "MER" and "BGN" on "2020-08-10" at "21:38"
    Then I should see a service "C38077" that stops at
      | stop | arrival | departure |
      | MER  | --:--   | 21:38     |
      | PTB  | 21:41   | 21:42     |
      | TRD  | 21:44   | 21:45     |
      | MEV  | 21:48   | 21:50     |
      | QYD  | 21:55   | 21:55     |
      | ACY  | 21:59   | 22:00     |
      | PPD  | 22:08   | 22:08     |
      | TRF  | 22:10   | 22:11     |
      | TRE  | 22:15   | 22:15     |
      | TAF  | 22:19   | 22:19     |
      | RDR  | 22:23   | 22:23     |
      | LLN  | 22:26   | 22:26     |
      | CYS  | 22:30   | 22:31     |
      | CDQ  | 22:35   | 22:36     |
      | CDF  | 22:40   | 22:43     |
      | GTN  | 22:47   | 22:47     |
      | CGN  | 22:50   | 22:50     |
      | EBK  | 22:53   | 22:53     |
      | DNS  | 22:55   | 22:55     |
      | CAD  | 22:59   | 22:59     |
      | BYD  | 23:02   | 23:02     |
      | BRY  | 23:06   | 23:06     |
      | RIA  | 23:13   | 23:13     |
      | LWM  | 23:23   | 23:23     |
      | BGN  | 23:39   | --:--     |

  Scenario: Changing calling point stopping times between SCA and MIA
    Given a query between "SCA" and "MIA" on "2020-08-03" at "21:34"
    Then I should see a service "C05301" that stops at
      | stop | arrival | departure |
      | SCA  | --:--   | 21:34     |
      | SEM  | 21:39   | 21:40     |
      | MLT  | 21:57   | 21:58     |
      | YRK  | 22:24   | 22:28     |
      | GRF  | 22:46   | 22:47     |
      | LDS  | 22:58   | 23:00     |
      | HUD  | 23:17   | 23:18     |
      | SYB  | 23:36   | 23:37     |
      | MCV  | 23:50   | 23:55     |
      | MCO  | 00:01   | 00:02     |
      | MAN  | 00:05   | 00:07     |
      | MIA  | 00:22   | --:--     |
    When I query between "SCA" and "MIA" on "2020-08-10" at "21:34"
    Then I should see a service "C05301" that stops at
      | stop | arrival | departure |
      | SCA  | --:--   | 21:34     |
      | SEM  | 21:39   | 21:40     |
      | MLT  | 21:57   | 21:58     |
      | YRK  | 22:25   | 22:28     |
      | GRF  | 22:46   | 22:47     |
      | LDS  | 22:58   | 23:00     |
      | HUD  | 23:17   | 23:18     |
      | SYB  | 23:36   | 23:37     |
      | MAN  | 23:50   | 00:03     |
      | MIA  | 00:17   | --:--     |

  Scenario: Changing calling point stopping times between MAN and CMN
    Given a query between "MAN" and "CMN" on "2020-08-03" at "18:31"
    Then I should see a service "C37747" that stops at
      | stop | arrival | departure |
      | MAN  | --:--   | 18:31     |
      | SPT  | 18:39   | 18:39     |
      | WML  | 18:47   | 18:47     |
      | CRE  | 19:07   | 19:08     |
      | NAN  | 19:16   | 19:17     |
      | WRE  | 19:23   | 19:23     |
      | WTC  | 19:29   | 19:29     |
      | PRS  | 19:35   | 19:35     |
      | WEM  | 19:40   | 19:40     |
      | YRT  | 19:45   | 19:45     |
      | SHR  | 19:56   | 19:56     |
      | CTT  | 20:11   | 20:11     |
      | CRV  | 20:19   | 20:19     |
      | LUD  | 20:26   | 20:27     |
      | LEO  | 20:37   | 20:37     |
      | HFD  | 20:54   | 20:54     |
      | AGV  | 21:22   | 21:22     |
      | PPL  | 21:32   | 21:32     |
      | CWM  | 21:37   | 21:37     |
      | NWP  | 21:51   | 21:56     |
      | CDF  | 22:11   | 22:18     |
      | PYC  | 22:30   | 22:30     |
      | LLR  | 22:35   | 22:35     |
      | PCD  | 22:39   | 22:39     |
      | BGN  | 22:45   | 22:45     |
      | PTA  | 22:58   | 22:58     |
      | LLE  | 23:28   | 23:29     |
      | PBY  | 23:34   | 23:34     |
      | KWL  | 23:40   | 23:40     |
      | FYS  | 23:46   | 23:46     |
      | CMN  | 23:59   | --:--     |
    When I query between "MAN" and "CMN" on "2020-08-10" at "18:31"
    Then I should see a service "C37747" that stops at
      | stop | arrival | departure |
      | MAN  | --:--   | 18:31     |
      | SPT  | 18:39   | 18:39     |
      | WML  | 18:47   | 18:47     |
      | CRE  | 19:07   | 19:08     |
      | NAN  | 19:16   | 19:17     |
      | WRE  | 19:23   | 19:23     |
      | WTC  | 19:29   | 19:29     |
      | PRS  | 19:35   | 19:35     |
      | WEM  | 19:40   | 19:40     |
      | YRT  | 19:45   | 19:45     |
      | SHR  | 19:56   | 19:56     |
      | CTT  | 20:11   | 20:11     |
      | CRV  | 20:19   | 20:19     |
      | LUD  | 20:26   | 20:27     |
      | LEO  | 20:37   | 20:37     |
      | HFD  | 20:54   | 20:54     |
      | AGV  | 21:22   | 21:22     |
      | PPL  | 21:32   | 21:32     |
      | CWM  | 21:37   | 21:37     |
      | NWP  | 21:51   | 21:56     |
      | CDF  | 22:11   | 22:21     |
      | PYC  | 22:36   | 22:36     |
      | LLR  | 22:40   | 22:41     |
      | PCD  | 22:45   | 22:45     |
      | BGN  | 22:50   | 22:50     |
      | PTA  | 23:01   | 23:02     |
      | LLE  | 23:34   | 23:34     |
      | PBY  | 23:40   | 23:40     |
      | KWL  | 23:46   | 23:46     |
      | FYS  | 23:51   | 23:51     |
      | CMN  | 00:05   | --:--     |

  Scenario: Changing calling point stopping times between GPO and BKG
    Given a query between "GPO" and "BKG" on "2020-08-03" at "23:42"
    Then I should see a service "C92412" that stops at
      | stop | arrival | departure |
      | GPO  | --:--   | 23:42     |
      | UHL  | 23:45   | 23:45     |
      | CRH  | 23:48   | 23:48     |
      | HRY  | 23:51   | 23:51     |
      | STO  | 23:54   | 23:54     |
      | BHO  | 23:57   | 23:58     |
      | WMW  | 00:01   | 00:01     |
      | LEM  | 00:02   | 00:02     |
      | LER  | 00:04   | 00:04     |
      | WNP  | 00:07   | 00:07     |
      | WGR  | 00:09   | 00:09     |
      | BKG  | 00:16   | --:--     |
    When I query between "GPO" and "BKG" on "2020-08-10" at "23:42"
    Then I should see a service "C92412" that stops at
      | stop | arrival | departure |
      | GPO  | --:--   | 23:42     |
      | UHL  | 23:45   | 23:45     |
      | CRH  | 23:48   | 23:48     |
      | HRY  | 23:51   | 23:51     |
      | STO  | 23:54   | 23:54     |
      | BHO  | 23:57   | 23:58     |
      | WMW  | 00:01   | 00:01     |
      | LEM  | 00:02   | 00:02     |
      | LER  | 00:04   | 00:04     |
      | WNP  | 00:07   | 00:07     |
      | WGR  | 00:09   | 00:09     |
      | BKG  | 00:18   | --:--     |

  Scenario: Changing calling point stopping times between HFD and CDF
    Given a query between "HFD" and "CDF" on "2020-08-03" at "05:26"
    Then I should see a service "Y35464" that stops at
      | stop | arrival | departure |
      | HFD  | --:--   | 05:26     |
      | AGV  | 05:51   | 05:51     |
      | PPL  | 06:02   | 06:02     |
      | CWM  | 06:07   | 06:07     |
      | NWP  | 06:19   | 06:22     |
      | CDF  | 06:35   | --:--     |
    When I query between "HFD" and "CDF" on "2020-08-10" at "05:26"
    Then I should see a service "Y35464" that stops at
      | stop | arrival | departure |
      | HFD  | --:--   | 05:26     |
      | AGV  | 05:49   | 05:51     |
      | PPL  | 06:00   | 06:02     |
      | CWM  | 06:06   | 06:07     |
      | NWP  | 06:18   | 06:18     |
      | CDF  | 06:31   | --:--     |

