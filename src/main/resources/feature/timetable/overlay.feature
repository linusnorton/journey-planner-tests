Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "TBW" and "CHX" on "2020-04-25" at "13:51"
    Then I should see a service "W51853" that stops at
      | stop | arrival | departure |
      | TBW  | --:--   | 13:51     |
      | HIB  | 13:54   | 13:54     |
      | TON  | 14:00   | 14:01     |
      | HLB  | 14:05   | 14:05     |
      | SEV  | 14:12   | 14:13     |
      | ORP  | 14:21   | 14:22     |
      | LBG  | 14:37   | 14:39     |
      | WAE  | 14:43   | 14:44     |
      | CHX  | 14:48   | --:--     |
    When I query between "TBW" and "CHX" on "2020-05-02" at "13:51"
    Then I should see a service "W51853" that stops at
      | stop | arrival | departure |
      | TBW  | --:--   | 13:51     |
      | HIB  | 13:54   | 13:54     |
      | TON  | 14:00   | 14:01     |
      | HLB  | 14:05   | 14:05     |
      | SEV  | 14:12   | 14:13     |
      | ORP  | 14:21   | 14:22     |
      | LBG  | 14:38   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "LIV" and "WML" on "2020-04-05" at "17:29"
    Then I should see a service "Y67559" that stops at
      | stop | arrival | departure |
      | LIV  | --:--   | 17:29     |
      | WAV  | 17:34   | 17:34     |
      | BGE  | 17:37   | 17:37     |
      | ROB  | 17:40   | 17:40     |
      | HUY  | 17:42   | 17:42     |
      | WHN  | 17:45   | 17:45     |
      | RNH  | 17:48   | 17:48     |
      | LEG  | 17:52   | 17:52     |
      | SHJ  | 17:55   | 17:55     |
      | ERL  | 17:59   | 17:59     |
      | NLW  | 18:02   | 18:02     |
      | PAT  | 18:13   | 18:13     |
      | ECC  | 18:15   | 18:15     |
      | DGT  | 18:23   | 18:23     |
      | MCO  | 18:25   | 18:26     |
      | MAN  | 18:29   | 18:30     |
      | MAU  | 18:36   | 18:36     |
      | BNA  | 18:39   | 18:39     |
      | EDY  | 18:41   | 18:41     |
      | GTY  | 18:44   | 18:44     |
      | HDG  | 18:47   | 18:47     |
      | MIA  | 18:52   | 19:02     |
      | SYA  | 19:07   | 19:07     |
      | WML  | 19:10   | --:--     |
    When I query between "LIV" and "WML" on "2020-04-12" at "17:29"
    Then I should see a service "Y67559" that stops at
      | stop | arrival | departure |
      | HUY  | --:--   | 17:42     |
      | WHN  | 17:45   | 17:45     |
      | RNH  | 17:48   | 17:48     |
      | LEG  | 17:52   | 17:52     |
      | SHJ  | 17:55   | 17:55     |
      | ERL  | 17:59   | 17:59     |
      | NLW  | 18:02   | 18:02     |
      | PAT  | 18:13   | 18:13     |
      | ECC  | 18:15   | 18:15     |
      | DGT  | 18:23   | 18:23     |
      | MCO  | 18:25   | 18:26     |
      | MAN  | 18:29   | 18:30     |
      | MAU  | 18:36   | 18:36     |
      | BNA  | 18:39   | 18:39     |
      | EDY  | 18:41   | 18:41     |
      | GTY  | 18:44   | 18:44     |
      | HDG  | 18:47   | 18:47     |
      | MIA  | 18:52   | 19:02     |
      | SYA  | 19:07   | 19:07     |
      | WML  | 19:10   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "VIC" and "EGR" on "2020-04-12" at "13:51"
    Then I should see a service "L01630" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 13:51     |
      | CLJ  | 13:57   | 13:58     |
      | ECR  | 14:08   | 14:09     |
      | SNR  | 14:14   | 14:14     |
      | RDD  | 14:17   | 14:17     |
      | UWL  | 14:21   | 14:21     |
      | WOH  | 14:25   | 14:25     |
      | OXT  | 14:33   | 14:34     |
      | HUR  | 14:36   | 14:37     |
      | LFD  | 14:43   | 14:43     |
      | DMS  | 14:46   | 14:46     |
      | EGR  | 14:51   | --:--     |
    When I query between "VIC" and "EGR" on "2020-04-19" at "13:51"
    Then I should see a service "L01630" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 13:52     |
      | NWD  | 14:06   | 14:07     |
      | ECR  | 14:12   | 14:12     |
      | SNR  | 14:17   | 14:17     |
      | RDD  | 14:20   | 14:20     |
      | UWL  | 14:24   | 14:24     |
      | WOH  | 14:28   | 14:28     |
      | OXT  | 14:33   | 14:34     |
      | HUR  | 14:36   | 14:37     |
      | LFD  | 14:43   | 14:43     |
      | DMS  | 14:46   | 14:46     |
      | EGR  | 14:51   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "CMB" and "LST" on "2020-03-29" at "16:23"
    Then I should see a service "L47393" that stops at
      | stop | arrival | departure |
      | CMB  | --:--   | 16:23     |
      | CBG  | 16:29   | 16:31     |
      | WLF  | 16:39   | 16:39     |
      | AUD  | 16:47   | 16:47     |
      | BIS  | 17:00   | 17:00     |
      | SAW  | 17:05   | 17:05     |
      | HWN  | 17:10   | 17:10     |
      | BXB  | 17:16   | 17:16     |
      | CHN  | 17:20   | 17:20     |
      | TOM  | 17:29   | 17:29     |
      | LST  | 17:43   | --:--     |
    When I query between "CMB" and "LST" on "2020-04-05" at "16:23"
    Then I should see a service "L47393" that stops at
      | stop | arrival | departure |
      | BIS  | --:--   | 17:00     |
      | SAW  | 17:05   | 17:05     |
      | HWN  | 17:10   | 17:10     |
      | BXB  | 17:16   | 17:16     |
      | CHN  | 17:20   | 17:20     |
      | TOM  | 17:29   | 17:29     |
      | LST  | 17:45   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "NMP" and "LIV" on "2020-03-22" at "11:34"
    Then I should see a service "P80432" that stops at
      | stop | arrival | departure |
      | NMP  | --:--   | 11:34     |
      | LBK  | 11:45   | 11:45     |
      | RUG  | 11:56   | 11:56     |
      | COV  | 12:06   | 12:07     |
      | BHI  | 12:16   | 12:18     |
      | BHM  | 12:27   | 12:35     |
      | SGB  | 12:41   | 12:42     |
      | CSY  | 12:48   | 12:48     |
      | WVH  | 12:54   | 12:55     |
      | PKG  | 13:03   | 13:04     |
      | STA  | 13:10   | 13:10     |
      | CRE  | 13:29   | 13:31     |
      | WSF  | 13:38   | 13:38     |
      | HTF  | 13:43   | 13:43     |
      | RUN  | 13:53   | 13:54     |
      | LPY  | 14:02   | 14:03     |
      | LIV  | 14:12   | --:--     |
    When I query between "NMP" and "LIV" on "2020-03-29" at "11:34"
    Then I should see a service "P80432" that stops at
      | stop | arrival | departure |
      | BHM  | --:--   | 12:35     |
      | SGB  | 12:41   | 12:42     |
      | CSY  | 12:48   | 12:48     |
      | WVH  | 12:54   | 12:55     |
      | PKG  | 13:03   | 13:04     |
      | STA  | 13:10   | 13:10     |
      | CRE  | 13:29   | 13:31     |
      | WSF  | 13:38   | 13:38     |
      | HTF  | 13:43   | 13:43     |
      | RUN  | 13:53   | 13:54     |
      | LPY  | 14:02   | 14:03     |
      | LIV  | 14:12   | --:--     |

