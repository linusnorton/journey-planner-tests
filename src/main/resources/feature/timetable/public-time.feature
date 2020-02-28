@timetable
Feature: Public time different to scheduled time
  Journey planners should use the public time not the scheduled time

  Scenario: Public departure time differs to scheduled departure time by more than a minute between MAN and EUS
    Given a query between "MAN" and "EUS" on "2020-03-28" at "20:21"
    Then I should see a service "C72648" that stops at
      | stop | arrival | departure |
      | MAN  | --:--   | 20:21     |
      | SPT  | 20:27   | 20:27     |
      | MAC  | 20:40   | 20:40     |
      | SOT  | 20:57   | 20:58     |
      | MKC  | 21:58   | 22:00     |
      | EUS  | 22:56   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between FTW and EDB
    Given a query between "FTW" and "EDB" on "2020-03-28" at "19:00"
    Then I should see a service "C75037" that stops at
      | stop | arrival | departure |
      | FTW  | --:--   | 19:00     |
      | SBR  | 19:17   | 19:19     |
      | RYB  | 19:25   | 19:25     |
      | TUL  | 19:37   | 19:39     |
      | CRR  | 19:59   | 19:59     |
      | RAN  | 20:14   | 20:14     |
      | BRO  | 20:42   | 20:47     |
      | UTY  | 21:02   | 21:05     |
      | CNR  | 21:16   | 21:18     |
      | AUI  | 21:38   | 21:38     |
      | ART  | 21:56   | 21:57     |
      | GCH  | 22:22   | 22:23     |
      | HLU  | 22:36   | 22:39     |
      | DBC  | 22:54   | 22:54     |
      | DMR  | 23:06   | 23:06     |
      | GLQ  | 23:29   | --:--     |
      | EDB  | 00:24   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between EDB and INV
    Given a query between "EDB" and "INV" on "2020-03-28" at "09:29"
    Then I should see a service "G60534" that stops at
      | stop | arrival | departure |
      | EDB  | --:--   | 09:29     |
      | HYM  | 09:33   | 09:34     |
      | EGY  | 09:40   | 09:41     |
      | INK  | 09:53   | 09:54     |
      | KDY  | 10:09   | 10:10     |
      | MNC  | 10:18   | 10:19     |
      | LDY  | 10:25   | 10:26     |
      | PTH  | 10:52   | 10:53     |
      | DKD  | 11:09   | 11:10     |
      | PIT  | 11:23   | 11:24     |
      | BLA  | 11:33   | 11:34     |
      | DLW  | 11:58   | 11:59     |
      | NWR  | 12:09   | 12:10     |
      | KIN  | 12:14   | 12:15     |
      | AVM  | 12:26   | 12:28     |
      | CAG  | 12:36   | 12:37     |
      | INV  | 13:16   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between HHY and WCY
    Given a query between "HHY" and "WCY" on "2020-03-28" at "11:37"
    Then I should see a service "L45850" that stops at
      | stop | arrival | departure |
      | HHY  | --:--   | 11:37     |
      | CNN  | 11:39   | 11:39     |
      | DLJ  | 11:41   | 11:42     |
      | HGG  | 11:43   | 11:43     |
      | HOX  | 11:45   | 11:45     |
      | SDC  | 11:48   | 11:48     |
      | ZLW  | 11:50   | 11:50     |
      | SDE  | 11:52   | 11:52     |
      | WPE  | 11:54   | 11:54     |
      | ROE  | 11:56   | 11:56     |
      | ZCW  | 11:57   | 11:58     |
      | SQE  | 11:59   | 12:00     |
      | NXG  | 12:04   | 12:04     |
      | BCY  | 12:07   | 12:07     |
      | HPA  | 12:09   | 12:09     |
      | FOH  | 12:12   | 12:12     |
      | SYD  | 12:15   | 12:15     |
      | PNW  | 12:17   | 12:17     |
      | ANZ  | 12:19   | 12:19     |
      | NWD  | 12:22   | 12:22     |
      | WCY  | 12:29   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between CLJ and HHY
    Given a query between "CLJ" and "HHY" on "2020-03-28" at "11:50"
    Then I should see a service "L46879" that stops at
      | stop | arrival | departure |
      | CLJ  | --:--   | 11:50     |
      | WWR  | 11:56   | 11:56     |
      | CLP  | 11:58   | 11:58     |
      | DMK  | 12:03   | 12:03     |
      | PMR  | 12:05   | 12:05     |
      | QRP  | 12:07   | 12:07     |
      | SQE  | 12:17   | 12:17     |
      | ZCW  | 12:19   | 12:19     |
      | ROE  | 12:21   | 12:21     |
      | WPE  | 12:22   | 12:22     |
      | SDE  | 12:24   | 12:24     |
      | ZLW  | 12:26   | 12:27     |
      | SDC  | 12:29   | 12:29     |
      | HOX  | 12:31   | 12:31     |
      | HGG  | 12:33   | 12:33     |
      | DLJ  | 12:35   | 12:35     |
      | CNN  | 12:38   | 12:38     |
      | HHY  | 12:40   | --:--     |

