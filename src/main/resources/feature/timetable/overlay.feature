@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between MAN and HUL
    Given a query between "MAN" and "HUL" on "2020-04-03" at "22:32"
    Then I should see a service "Y33210" that stops at
      | stop | arrival | departure |
      | MAN  | --:--   | 22:32     |
      | SYB  | 22:49   | 22:50     |
      | HUD  | 23:08   | 23:12     |
      | LDS  | 23:31   | 23:33     |
      | SBY  | 23:51   | 23:52     |
      | BUH  | 00:10   | 00:11     |
      | HUL  | 00:26   | --:--     |
    When I query between "MAN" and "SBY" on "2020-04-10" at "22:32"
    Then I should see a service "Y33210" that stops at
      | stop | arrival | departure |
      | MAN  | --:--   | 22:32     |
      | SYB  | 22:49   | 22:50     |
      | HUD  | 23:08   | 23:12     |
      | LDS  | 23:31   | 23:33     |
      | SBY  | 23:51   | --:--     |

  Scenario: Changing calling point stopping times between SUO and SAC
    Given a query between "SUO" and "SAC" on "2020-04-03" at "07:16"
    Then I should see a service "W41017" that stops at
      | stop | arrival | departure |
      | SUO  | --:--   | 07:16     |
      | CSH  | 07:19   | 07:19     |
      | HCB  | 07:22   | 07:22     |
      | MIJ  | 07:25   | 07:25     |
      | MTC  | 07:28   | 07:28     |
      | STE  | 07:32   | 07:33     |
      | TUH  | 07:37   | 07:38     |
      | HNH  | 07:41   | 07:42     |
      | LGJ  | 07:45   | 07:45     |
      | EPH  | 07:49   | 07:49     |
      | BFR  | 07:54   | 07:54     |
      | CTK  | 07:56   | 07:56     |
      | ZFD  | 07:58   | 07:59     |
      | STP  | 08:03   | 08:03     |
      | KTN  | 08:08   | 08:08     |
      | WHP  | 08:13   | 08:13     |
      | MIL  | 08:22   | 08:22     |
      | ELS  | 08:26   | 08:26     |
      | RDT  | 08:29   | 08:29     |
      | SAC  | 08:36   | --:--     |
    When I query between "SUO" and "SAC" on "2020-04-10" at "07:16"
    Then I should see a service "W41017" that stops at
      | stop | arrival | departure |
      | SUO  | --:--   | 07:16     |
      | CSH  | 07:19   | 07:19     |
      | HCB  | 07:22   | 07:22     |
      | MIJ  | 07:25   | 07:25     |
      | MTC  | 07:28   | 07:28     |
      | STE  | 07:32   | 07:33     |
      | TUH  | 07:37   | 07:38     |
      | HNH  | 07:41   | 07:42     |
      | LGJ  | 07:45   | 07:45     |
      | EPH  | 07:49   | 07:49     |
      | BFR  | 07:54   | 07:54     |
      | ZFD  | 07:58   | 07:59     |
      | STP  | 08:03   | 08:03     |
      | KTN  | 08:08   | 08:08     |
      | WHP  | 08:14   | 08:14     |
      | CRI  | 08:16   | 08:17     |
      | HEN  | 08:20   | 08:20     |
      | MIL  | 08:23   | 08:23     |
      | ELS  | 08:27   | 08:27     |
      | RDT  | 08:31   | 08:31     |
      | SAC  | 08:37   | --:--     |

  Scenario: Changing calling point stopping times between BTN and BDM
    Given a query between "BTN" and "BDM" on "2020-04-03" at "08:00"
    Then I should see a service "W40802" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 08:00     |
      | BUG  | 08:11   | 08:11     |
      | WVF  | 08:13   | 08:14     |
      | HHE  | 08:18   | 08:19     |
      | BAB  | 08:25   | 08:25     |
      | TBD  | 08:30   | 08:31     |
      | GTW  | 08:35   | 08:36     |
      | ECR  | 08:51   | 08:51     |
      | LBG  | 09:04   | 09:05     |
      | BFR  | 09:11   | 09:12     |
      | CTK  | 09:13   | 09:14     |
      | ZFD  | 09:16   | 09:16     |
      | STP  | 09:20   | 09:21     |
      | HPD  | 09:43   | 09:43     |
      | LTN  | 09:48   | 09:49     |
      | LUT  | 09:52   | 09:53     |
      | FLT  | 10:02   | 10:02     |
      | BDM  | 10:16   | --:--     |
    When I query between "BTN" and "BDM" on "2020-04-10" at "07:58"
    Then I should see a service "W40802" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 07:58     |
      | BUG  | 08:08   | 08:08     |
      | WVF  | 08:10   | 08:10     |
      | HHE  | 08:15   | 08:16     |
      | BAB  | 08:22   | 08:22     |
      | TBD  | 08:27   | 08:29     |
      | GTW  | 08:33   | 08:36     |
      | ECR  | 08:51   | 08:51     |
      | LBG  | 09:04   | 09:05     |
      | BFR  | 09:11   | 09:12     |
      | CTK  | 09:13   | 09:14     |
      | ZFD  | 09:16   | 09:16     |
      | STP  | 09:20   | 09:21     |
      | WHP  | 09:29   | 09:29     |
      | SAC  | 09:42   | 09:43     |
      | HPD  | 09:48   | 09:48     |
      | LTN  | 09:53   | 09:54     |
      | LUT  | 09:57   | 09:58     |
      | LEA  | 10:02   | 10:02     |
      | HLN  | 10:06   | 10:06     |
      | FLT  | 10:10   | 10:10     |
      | BDM  | 10:22   | --:--     |

  Scenario: Changing calling point stopping times between BTN and BDM
    Given a query between "BTN" and "BDM" on "2020-04-03" at "19:58"
    Then I should see a service "W40941" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 19:58     |
      | BUG  | 20:08   | 20:08     |
      | WVF  | 20:10   | 20:10     |
      | HHE  | 20:15   | 20:16     |
      | BAB  | 20:22   | 20:22     |
      | TBD  | 20:27   | 20:29     |
      | GTW  | 20:33   | 20:36     |
      | ECR  | 20:51   | 20:51     |
      | LBG  | 21:04   | 21:05     |
      | BFR  | 21:11   | 21:12     |
      | CTK  | 21:13   | 21:14     |
      | ZFD  | 21:16   | 21:16     |
      | STP  | 21:20   | 21:21     |
      | WHP  | 21:29   | 21:29     |
      | SAC  | 21:41   | 21:41     |
      | HPD  | 21:47   | 21:47     |
      | LTN  | 21:52   | 21:53     |
      | LUT  | 21:56   | 21:57     |
      | LEA  | 22:01   | 22:01     |
      | HLN  | 22:05   | 22:05     |
      | FLT  | 22:09   | 22:09     |
      | BDM  | 22:21   | --:--     |
    When I query between "BTN" and "BDM" on "2020-04-10" at "19:58"
    Then I should see a service "W40941" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 19:58     |
      | BUG  | 20:08   | 20:08     |
      | WVF  | 20:10   | 20:10     |
      | HHE  | 20:15   | 20:16     |
      | BAB  | 20:22   | 20:22     |
      | TBD  | 20:27   | 20:29     |
      | GTW  | 20:33   | 20:36     |
      | ECR  | 20:51   | 20:51     |
      | LBG  | 21:04   | 21:05     |
      | BFR  | 21:11   | 21:12     |
      | ZFD  | 21:16   | 21:16     |
      | STP  | 21:20   | 21:21     |
      | WHP  | 21:29   | 21:29     |
      | SAC  | 21:41   | 21:41     |
      | HPD  | 21:47   | 21:47     |
      | LTN  | 21:52   | 21:53     |
      | LUT  | 21:56   | 21:57     |
      | LEA  | 22:01   | 22:01     |
      | HLN  | 22:05   | 22:05     |
      | FLT  | 22:09   | 22:09     |
      | BDM  | 22:22   | --:--     |

  Scenario: Changing calling point stopping times between BTN and BDM
    Given a query between "BTN" and "BDM" on "2020-04-03" at "06:48"
    Then I should see a service "W40792" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 06:48     |
      | PRP  | 06:52   | 06:52     |
      | HSK  | 06:59   | 06:59     |
      | BUG  | 07:03   | 07:03     |
      | WVF  | 07:05   | 07:06     |
      | HHE  | 07:10   | 07:11     |
      | TBD  | 07:19   | 07:20     |
      | GTW  | 07:24   | 07:25     |
      | ECR  | 07:40   | 07:40     |
      | LBG  | 07:53   | 07:54     |
      | BFR  | 08:01   | 08:02     |
      | CTK  | 08:03   | 08:04     |
      | ZFD  | 08:06   | 08:06     |
      | STP  | 08:10   | 08:11     |
      | SAC  | 08:29   | 08:29     |
      | HPD  | 08:35   | 08:35     |
      | LTN  | 08:40   | 08:40     |
      | LUT  | 08:44   | 08:45     |
      | LEA  | 08:49   | 08:49     |
      | HLN  | 08:53   | 08:53     |
      | FLT  | 08:57   | 08:57     |
      | BDM  | 09:09   | --:--     |
    When I query between "BTN" and "BDM" on "2020-04-10" at "06:58"
    Then I should see a service "W40792" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 06:58     |
      | BUG  | 07:08   | 07:08     |
      | WVF  | 07:10   | 07:10     |
      | HHE  | 07:15   | 07:16     |
      | BAB  | 07:22   | 07:22     |
      | TBD  | 07:27   | 07:29     |
      | GTW  | 07:33   | 07:36     |
      | ECR  | 07:51   | 07:51     |
      | LBG  | 08:04   | 08:05     |
      | BFR  | 08:11   | 08:12     |
      | ZFD  | 08:16   | 08:16     |
      | STP  | 08:20   | 08:21     |
      | WHP  | 08:29   | 08:29     |
      | SAC  | 08:41   | 08:41     |
      | HPD  | 08:47   | 08:47     |
      | LTN  | 08:52   | 08:53     |
      | LUT  | 08:56   | 08:57     |
      | LEA  | 09:01   | 09:01     |
      | HLN  | 09:05   | 09:05     |
      | FLT  | 09:09   | 09:09     |
      | BDM  | 09:24   | --:--     |

