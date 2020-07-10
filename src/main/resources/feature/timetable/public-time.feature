@timetable
Feature: Public time different to scheduled time
  Journey planners should use the public time not the scheduled time

  Scenario: Public departure time differs to scheduled departure time by more than a minute between MAN and GLC
    Given a query between "MAN" and "GLC" on "2020-08-10" at "04:57"
    Then I should see a service "C05313" that stops at
      | stop | arrival | departure |
      | MAN  | --:--   | 04:57     |
      | PRE  | 05:33   | 05:36     |
      | LAN  | 05:51   | 05:51     |
      | OXN  | 06:04   | 06:05     |
      | PNR  | 06:30   | 06:31     |
      | CAR  | 06:46   | 06:48     |
      | LOC  | 07:06   | 07:07     |
      | CRS  | 07:42   | 07:44     |
      | MTH  | 07:59   | 08:01     |
      | GLC  | 08:20   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between GPO and BKG
    Given a query between "GPO" and "BKG" on "2020-08-10" at "20:37"
    Then I should see a service "C06214" that stops at
      | stop | arrival | departure |
      | GPO  | --:--   | 20:37     |
      | UHL  | 20:38   | 20:39     |
      | CRH  | 20:41   | 20:41     |
      | HRY  | 20:44   | 20:44     |
      | STO  | 20:48   | 20:48     |
      | BHO  | 20:51   | 20:52     |
      | WMW  | 20:54   | 20:54     |
      | LEM  | 20:56   | 20:57     |
      | LER  | 20:59   | 20:59     |
      | WNP  | 21:01   | 21:01     |
      | WGR  | 21:04   | 21:04     |
      | BKG  | 21:09   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between WCY and HHY
    Given a query between "WCY" and "HHY" on "2020-08-10" at "23:31"
    Then I should see a service "C08729" that stops at
      | stop | arrival | departure |
      | WCY  | --:--   | 23:31     |
      | NWD  | 23:36   | 23:37     |
      | ANZ  | 23:40   | 23:40     |
      | PNW  | 23:41   | 23:41     |
      | SYD  | 23:44   | 23:44     |
      | FOH  | 23:46   | 23:46     |
      | HPA  | 23:49   | 23:49     |
      | BCY  | 23:51   | 23:51     |
      | NXG  | 23:53   | 23:53     |
      | SQE  | 23:56   | 23:57     |
      | ZCW  | 23:58   | 23:59     |
      | ROE  | 00:01   | 00:01     |
      | WPE  | 00:02   | 00:02     |
      | SDE  | 00:04   | 00:04     |
      | ZLW  | 00:06   | 00:06     |
      | SDC  | 00:08   | 00:09     |
      | HOX  | 00:11   | 00:11     |
      | HGG  | 00:13   | 00:13     |
      | DLJ  | 00:15   | 00:15     |
      | CNN  | 00:18   | 00:18     |
      | HHY  | 00:26   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between RDC and FOK
    Given a query between "RDC" and "FOK" on "2020-08-10" at "16:32"
    Then I should see a service "C16919" that stops at
      | stop | arrival | departure |
      | RDC  | --:--   | 16:32     |
      | ALV  | 16:37   | 16:37     |
      | BTG  | 16:42   | 16:43     |
      | LOB  | 16:47   | 16:52     |
      | NFD  | 16:54   | 16:54     |
      | KNN  | 16:56   | 16:57     |
      | BRV  | 16:59   | 16:59     |
      | SLY  | 17:02   | 17:02     |
      | UNI  | 17:04   | 17:05     |
      | FWY  | 17:08   | 17:08     |
      | BHM  | 17:12   | 17:15     |
      | DUD  | 17:19   | 17:19     |
      | AST  | 17:22   | 17:22     |
      | GVH  | 17:26   | 17:26     |
      | ERD  | 17:28   | 17:29     |
      | CRD  | 17:31   | 17:31     |
      | WYL  | 17:33   | 17:33     |
      | SUT  | 17:36   | 17:36     |
      | FOK  | 17:41   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between WKI and WKI
    Given a query between "WKI" and "WKI" on "2020-08-10" at "08:06"
    Then I should see a service "C46318" that stops at
      | stop | arrival | departure |
      | WKI  | --:--   | 08:06     |
      | HYK  | 08:09   | 08:09     |
      | MNR  | 08:11   | 08:11     |
      | MEO  | 08:13   | 08:13     |
      | MRT  | 08:16   | 08:16     |
      | LSW  | 08:18   | 08:18     |
      | BID  | 08:21   | 08:21     |
      | BKN  | 08:23   | 08:24     |
      | BKP  | 08:26   | 08:26     |
      | CNP  | 08:29   | 08:29     |
      | BKQ  | 08:31   | 08:31     |
      | LVJ  | 08:34   | 08:34     |
      | MRF  | 08:36   | 08:36     |
      | LIV  | 08:38   | 08:38     |
      | LVC  | 08:40   | 08:40     |
      | LVJ  | 08:42   | 08:42     |
      | BKQ  | 08:45   | 08:45     |
      | CNP  | 08:47   | 08:47     |
      | BKP  | 08:49   | 08:49     |
      | BKN  | 08:52   | 08:52     |
      | BID  | 08:55   | 08:55     |
      | LSW  | 08:57   | 08:57     |
      | MRT  | 08:59   | 08:59     |
      | MEO  | 09:03   | 09:03     |
      | MNR  | 09:05   | 09:05     |
      | HYK  | 09:07   | 09:07     |
      | WKI  | 09:12   | --:--     |

