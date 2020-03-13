@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between BTN and CBG
    Given a query between "BTN" and "CBG" on "2020-04-06" at "11:08"
    Then I should see a service "W40693" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 11:08     |
      | PRP  | 11:12   | 11:12     |
      | HSK  | 11:18   | 11:18     |
      | BUG  | 11:22   | 11:22     |
      | HHE  | 11:27   | 11:31     |
      | TBD  | 11:39   | 11:40     |
      | GTW  | 11:45   | 11:46     |
      | ECR  | 12:01   | 12:01     |
      | LBG  | 12:15   | 12:16     |
      | BFR  | 12:21   | 12:22     |
      | CTK  | 12:23   | 12:24     |
      | ZFD  | 12:26   | 12:26     |
      | STP  | 12:30   | 12:31     |
      | FPK  | 12:37   | 12:42     |
      | SVG  | 13:01   | 13:03     |
      | HIT  | 13:08   | 13:08     |
      | LET  | 13:13   | 13:14     |
      | BDK  | 13:17   | 13:17     |
      | RYS  | 13:24   | 13:25     |
      | CBG  | 13:40   | --:--     |
    When I query between "BTN" and "CBG" on "2020-04-13" at "11:08"
    Then I should see a service "W40693" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 11:08     |
      | PRP  | 11:12   | 11:12     |
      | HSK  | 11:18   | 11:18     |
      | BUG  | 11:22   | 11:22     |
      | HHE  | 11:27   | 11:31     |
      | TBD  | 11:39   | 11:40     |
      | GTW  | 11:45   | 11:46     |
      | ECR  | 12:01   | 12:01     |
      | LBG  | 12:15   | 12:16     |
      | BFR  | 12:21   | 12:22     |
      | CTK  | 12:23   | 12:24     |
      | ZFD  | 12:26   | 12:26     |
      | STP  | 12:30   | 12:31     |
      | FPK  | 12:41   | 12:42     |
      | SVG  | 13:01   | 13:03     |
      | HIT  | 13:08   | 13:08     |
      | LET  | 13:13   | 13:14     |
      | BDK  | 13:17   | 13:17     |
      | RYS  | 13:24   | 13:25     |
      | CBG  | 13:40   | --:--     |

  Scenario: Changing calling point stopping times between SUO and SAC
    Given a query between "SUO" and "SAC" on "2020-04-06" at "15:19"
    Then I should see a service "W40130" that stops at
      | stop | arrival | departure |
      | SUO  | --:--   | 15:19     |
      | WSU  | 15:22   | 15:22     |
      | SUC  | 15:24   | 15:24     |
      | SIH  | 15:27   | 15:27     |
      | MDS  | 15:29   | 15:29     |
      | SMO  | 15:31   | 15:31     |
      | WBO  | 15:33   | 15:33     |
      | WIM  | 15:36   | 15:37     |
      | HYR  | 15:40   | 15:40     |
      | TOO  | 15:43   | 15:43     |
      | STE  | 15:48   | 15:48     |
      | TUH  | 15:52   | 15:53     |
      | HNH  | 15:56   | 15:57     |
      | LGJ  | 16:00   | 16:00     |
      | EPH  | 16:04   | 16:04     |
      | BFR  | 16:09   | 16:09     |
      | CTK  | 16:11   | 16:11     |
      | ZFD  | 16:13   | 16:14     |
      | STP  | 16:18   | 16:18     |
      | WHP  | 16:29   | 16:29     |
      | MIL  | 16:36   | 16:37     |
      | ELS  | 16:41   | 16:41     |
      | RDT  | 16:45   | 16:45     |
      | SAC  | 16:51   | --:--     |
    When I query between "SUO" and "SAC" on "2020-04-13" at "15:19"
    Then I should see a service "W40130" that stops at
      | stop | arrival | departure |
      | SUO  | --:--   | 15:19     |
      | WSU  | 15:22   | 15:22     |
      | SUC  | 15:24   | 15:24     |
      | SIH  | 15:27   | 15:27     |
      | MDS  | 15:29   | 15:29     |
      | SMO  | 15:31   | 15:31     |
      | WBO  | 15:33   | 15:33     |
      | WIM  | 15:36   | 15:37     |
      | HYR  | 15:40   | 15:40     |
      | TOO  | 15:43   | 15:43     |
      | STE  | 15:48   | 15:48     |
      | TUH  | 15:52   | 15:53     |
      | HNH  | 15:56   | 15:57     |
      | LGJ  | 16:00   | 16:00     |
      | EPH  | 16:04   | 16:04     |
      | BFR  | 16:09   | 16:09     |
      | CTK  | 16:11   | 16:11     |
      | ZFD  | 16:13   | 16:14     |
      | STP  | 16:18   | 16:18     |
      | KTN  | 16:23   | 16:23     |
      | WHP  | 16:29   | 16:29     |
      | CRI  | 16:32   | 16:33     |
      | HEN  | 16:36   | 16:36     |
      | MIL  | 16:39   | 16:39     |
      | ELS  | 16:43   | 16:44     |
      | RDT  | 16:47   | 16:47     |
      | SAC  | 16:52   | --:--     |

  Scenario: Changing calling point stopping times between BAN and MYB
    Given a query between "BAN" and "MYB" on "2020-04-06" at "14:46"
    Then I should see a service "C79735" that stops at
      | stop | arrival | departure |
      | BAN  | --:--   | 14:46     |
      | BCS  | 15:00   | 15:00     |
      | HDM  | 15:12   | 15:12     |
      | PRR  | 15:19   | 15:19     |
      | HWY  | 15:29   | 15:29     |
      | BCF  | 15:35   | 15:35     |
      | GER  | 15:41   | 15:41     |
      | MYB  | 16:05   | --:--     |
    When I query between "BAN" and "MYB" on "2020-04-13" at "14:46"
    Then I should see a service "C79735" that stops at
      | stop | arrival | departure |
      | BAN  | --:--   | 14:46     |
      | BCS  | 15:00   | 15:00     |
      | HDM  | 15:12   | 15:13     |
      | PRR  | 15:20   | 15:20     |
      | HWY  | 15:29   | 15:30     |
      | BCF  | 15:36   | 15:36     |
      | GER  | 15:41   | 15:42     |
      | WCX  | 15:54   | 15:54     |
      | MYB  | 16:06   | --:--     |

  Scenario: Changing calling point stopping times between DDG and WOS
    Given a query between "DDG" and "WOS" on "2020-04-06" at "13:46"
    Then I should see a service "P83853" that stops at
      | stop | arrival | departure |
      | DDG  | --:--   | 13:46     |
      | WMR  | 13:51   | 13:51     |
      | SOL  | 13:54   | 13:54     |
      | OLT  | 13:57   | 13:57     |
      | ACG  | 14:00   | 14:00     |
      | TYS  | 14:02   | 14:02     |
      | SMA  | 14:05   | 14:05     |
      | BMO  | 14:09   | 14:09     |
      | BSW  | 14:12   | 14:13     |
      | JEQ  | 14:15   | 14:15     |
      | THW  | 14:19   | 14:19     |
      | SGB  | 14:22   | 14:22     |
      | ROW  | 14:27   | 14:28     |
      | CRA  | 14:33   | 14:33     |
      | SBJ  | 14:38   | 14:39     |
      | KID  | 14:46   | 14:47     |
      | HBY  | 14:52   | 14:52     |
      | DTW  | 15:00   | 15:00     |
      | WOS  | 15:10   | --:--     |
    When I query between "DDG" and "WOS" on "2020-04-13" at "13:46"
    Then I should see a service "P83853" that stops at
      | stop | arrival | departure |
      | DDG  | --:--   | 13:46     |
      | WMR  | 13:51   | 13:51     |
      | SOL  | 13:54   | 13:54     |
      | OLT  | 13:57   | 13:57     |
      | ACG  | 14:00   | 14:00     |
      | TYS  | 14:02   | 14:02     |
      | SMA  | 14:05   | 14:05     |
      | BMO  | 14:09   | 14:09     |
      | BSW  | 14:12   | 14:13     |
      | JEQ  | 14:15   | 14:15     |
      | THW  | 14:19   | 14:19     |
      | SGB  | 14:22   | 14:22     |
      | ROW  | 14:27   | 14:28     |
      | CRA  | 14:33   | 14:33     |
      | SBJ  | 14:38   | 14:39     |
      | KID  | 14:46   | 14:47     |
      | HBY  | 14:52   | 14:52     |
      | DTW  | 15:00   | 15:00     |
      | WOS  | 15:10   | --:--     |

  Scenario: Changing calling point stopping times between BDW and PAD
    Given a query between "BDW" and "PAD" on "2020-04-06" at "13:41"
    Then I should see a service "Y94375" that stops at
      | stop | arrival | departure |
      | BDW  | --:--   | 13:41     |
      | HGD  | 13:46   | 13:47     |
      | KIT  | 13:51   | 13:52     |
      | NBY  | 13:58   | 13:59     |
      | THA  | 14:03   | 14:04     |
      | THE  | 14:11   | 14:12     |
      | RDG  | 14:21   | 14:24     |
      | PAD  | 14:52   | --:--     |
    When I query between "BDW" and "PAD" on "2020-04-13" at "13:45"
    Then I should see a service "Y94375" that stops at
      | stop | arrival | departure |
      | BDW  | --:--   | 13:45     |
      | HGD  | 13:50   | 13:51     |
      | KIT  | 13:55   | 13:56     |
      | NBY  | 14:02   | 14:03     |
      | THA  | 14:07   | 14:08     |
      | THE  | 14:15   | 14:16     |
      | RDG  | 14:25   | 14:30     |
      | PAD  | 14:56   | --:--     |

