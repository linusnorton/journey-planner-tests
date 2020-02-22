Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "LUT" and "RAI" on "2020-04-06" at "17:17"
    Then I should see a service "W40368" that stops at
      | stop | arrival | departure |
      | LUT  | --:--   | 17:17     |
      | LTN  | 17:20   | 17:20     |
      | HPD  | 17:25   | 17:25     |
      | SAC  | 17:30   | 17:30     |
      | RDT  | 17:35   | 17:35     |
      | ELS  | 17:39   | 17:39     |
      | MIL  | 17:42   | 17:43     |
      | WHP  | 17:50   | 17:51     |
      | STP  | 18:02   | 18:02     |
      | ZFD  | 18:06   | 18:07     |
      | CTK  | 18:08   | 18:09     |
      | BFR  | 18:11   | 18:11     |
      | LBG  | 18:17   | 18:18     |
      | DEP  | 18:25   | 18:25     |
      | GNW  | 18:27   | 18:27     |
      | MZH  | 18:30   | 18:30     |
      | WCB  | 18:32   | 18:32     |
      | CTN  | 18:34   | 18:35     |
      | WWA  | 18:40   | 18:40     |
      | PLU  | 18:42   | 18:43     |
      | ABW  | 18:46   | 18:46     |
      | SGR  | 18:52   | 18:52     |
      | DFD  | 18:57   | 18:58     |
      | SCG  | 19:02   | 19:02     |
      | GNH  | 19:04   | 19:04     |
      | SWM  | 19:07   | 19:07     |
      | NFL  | 19:09   | 19:09     |
      | GRV  | 19:13   | 19:13     |
      | HGM  | 19:19   | 19:19     |
      | SOO  | 19:24   | 19:27     |
      | RTR  | 19:30   | 19:30     |
      | CTM  | 19:33   | 19:34     |
      | GLM  | 19:38   | 19:39     |
      | RAI  | 19:44   | --:--     |
    When I query between "KTN" and "RAI" on "2020-04-13" at "17:17"
    Then I should see a service "W40368" that stops at
      | stop | arrival | departure |
      | KTN  | --:--   | 17:56     |
      | STP  | 18:02   | 18:02     |
      | ZFD  | 18:06   | 18:07     |
      | CTK  | 18:08   | 18:09     |
      | BFR  | 18:11   | 18:11     |
      | LBG  | 18:17   | 18:18     |
      | DEP  | 18:25   | 18:25     |
      | GNW  | 18:27   | 18:27     |
      | MZH  | 18:30   | 18:30     |
      | WCB  | 18:32   | 18:32     |
      | CTN  | 18:34   | 18:35     |
      | WWA  | 18:40   | 18:40     |
      | PLU  | 18:42   | 18:43     |
      | ABW  | 18:46   | 18:46     |
      | SGR  | 18:52   | 18:52     |
      | DFD  | 18:57   | 18:58     |
      | SCG  | 19:02   | 19:02     |
      | GNH  | 19:04   | 19:04     |
      | SWM  | 19:07   | 19:07     |
      | NFL  | 19:09   | 19:09     |
      | GRV  | 19:13   | 19:13     |
      | HGM  | 19:19   | 19:19     |
      | SOO  | 19:24   | 19:25     |
      | RTR  | 19:28   | 19:28     |
      | CTM  | 19:31   | 19:31     |
      | GLM  | 19:35   | 19:36     |
      | RAI  | 19:41   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "PLY" and "GLC" on "2020-04-11" at "12:27"
    Then I should see a service "C74573" that stops at
      | stop | arrival | departure |
      | PLY  | --:--   | 12:27     |
      | TOT  | 12:52   | 12:53     |
      | NTA  | 13:05   | 13:06     |
      | EXD  | 13:25   | 13:27     |
      | TVP  | 13:40   | 13:41     |
      | TAU  | 13:53   | 13:53     |
      | BRI  | 14:26   | 14:34     |
      | BPW  | 14:42   | 14:44     |
      | CNM  | 15:13   | 15:16     |
      | BHM  | 15:56   | 16:03     |
      | TAM  | 16:18   | 16:19     |
      | DBY  | 16:39   | 16:44     |
      | CHD  | 17:03   | 17:04     |
      | SHF  | 17:18   | 17:21     |
      | WKF  | 17:47   | 17:48     |
      | LDS  | 18:01   | 18:08     |
      | YRK  | 18:30   | 18:31     |
      | DAR  | 19:00   | 19:01     |
      | DHM  | 19:18   | 19:20     |
      | NCL  | 19:33   | 19:35     |
      | ALM  | 20:01   | 20:03     |
      | BWK  | 20:25   | 20:26     |
      | EDB  | 21:09   | 21:12     |
      | HYM  | 21:15   | 21:17     |
      | MTH  | 21:56   | 21:58     |
      | GLC  | 22:20   | --:--     |
    When I query between "PLY" and "MTH" on "2020-04-18" at "12:27"
    Then I should see a service "C74573" that stops at
      | stop | arrival | departure |
      | PLY  | --:--   | 12:27     |
      | TOT  | 12:52   | 12:53     |
      | NTA  | 13:05   | 13:06     |
      | EXD  | 13:25   | 13:27     |
      | TVP  | 13:40   | 13:41     |
      | TAU  | 13:53   | 13:53     |
      | BRI  | 14:26   | 14:34     |
      | BPW  | 14:42   | 14:44     |
      | CNM  | 15:13   | 15:16     |
      | BHM  | 15:56   | 16:03     |
      | TAM  | 16:18   | 16:19     |
      | DBY  | 16:39   | 16:44     |
      | CHD  | 17:03   | 17:04     |
      | SHF  | 17:18   | 17:21     |
      | WKF  | 17:47   | 17:48     |
      | LDS  | 18:01   | 18:08     |
      | YRK  | 18:30   | 18:31     |
      | DAR  | 19:00   | 19:01     |
      | DHM  | 19:18   | 19:20     |
      | NCL  | 19:33   | 19:35     |
      | ALM  | 20:01   | 20:03     |
      | BWK  | 20:25   | 20:26     |
      | EDB  | 21:09   | 21:12     |
      | HYM  | 21:15   | 21:17     |
      | MTH  | 21:56   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "BMH" and "MAN" on "2020-04-03" at "08:45"
    Then I should see a service "C74257" that stops at
      | stop | arrival | departure |
      | BMH  | --:--   | 08:45     |
      | BCU  | 08:59   | 09:00     |
      | SOU  | 09:13   | 09:17     |
      | SOA  | 09:23   | 09:24     |
      | WIN  | 09:32   | 09:33     |
      | BSK  | 09:47   | 09:49     |
      | RDG  | 10:06   | 10:15     |
      | OXF  | 10:38   | 10:39     |
      | BAN  | 10:56   | 10:57     |
      | LMS  | 11:14   | 11:15     |
      | COV  | 11:26   | 11:27     |
      | BHI  | 11:36   | 11:38     |
      | BHM  | 11:48   | 11:57     |
      | WVH  | 12:13   | 12:14     |
      | STA  | 12:27   | 12:28     |
      | SOT  | 12:43   | 12:44     |
      | MAC  | 13:01   | 13:02     |
      | SPT  | 13:13   | 13:14     |
      | MAN  | 13:24   | --:--     |
    When I query between "BMH" and "MAN" on "2020-04-10" at "08:45"
    Then I should see a service "C74257" that stops at
      | stop | arrival | departure |
      | BMH  | --:--   | 08:45     |
      | BCU  | 08:59   | 09:00     |
      | SOU  | 09:13   | 09:17     |
      | SOA  | 09:23   | 09:24     |
      | WIN  | 09:32   | 09:33     |
      | BSK  | 09:47   | 09:49     |
      | RDG  | 10:06   | 10:15     |
      | OXF  | 10:38   | 10:39     |
      | BAN  | 10:56   | 10:57     |
      | LMS  | 11:14   | 11:15     |
      | COV  | 11:26   | 11:27     |
      | BHI  | 11:36   | 11:38     |
      | BHM  | 11:48   | 11:57     |
      | WVH  | 12:13   | 12:14     |
      | STA  | 12:27   | 12:28     |
      | SOT  | 12:43   | 12:44     |
      | MAC  | 13:01   | 13:02     |
      | SPT  | 13:13   | 13:14     |
      | MAN  | 13:24   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "DID" and "PAD" on "2020-04-06" at "18:04"
    Then I should see a service "Y95685" that stops at
      | stop | arrival | departure |
      | DID  | --:--   | 18:04     |
      | CHO  | 18:09   | 18:09     |
      | GOR  | 18:14   | 18:14     |
      | PAN  | 18:18   | 18:18     |
      | TLH  | 18:22   | 18:22     |
      | RDG  | 18:29   | 18:41     |
      | TWY  | 18:46   | 18:49     |
      | MAI  | 18:55   | 18:57     |
      | SLO  | 19:03   | 19:05     |
      | WDT  | 19:13   | 19:16     |
      | HAY  | 19:21   | 19:21     |
      | EAL  | 19:33   | 19:33     |
      | PAD  | 19:42   | --:--     |
    When I query between "DID" and "PAD" on "2020-04-13" at "18:04"
    Then I should see a service "Y95685" that stops at
      | stop | arrival | departure |
      | DID  | --:--   | 18:08     |
      | CHO  | 18:13   | 18:13     |
      | GOR  | 18:18   | 18:18     |
      | PAN  | 18:22   | 18:22     |
      | TLH  | 18:26   | 18:26     |
      | RDG  | 18:31   | 18:45     |
      | TWY  | 18:49   | 18:52     |
      | MAI  | 18:58   | 18:59     |
      | SLO  | 19:05   | 19:05     |
      | WDT  | 19:11   | 19:11     |
      | HAY  | 19:15   | 19:15     |
      | EAL  | 19:22   | 19:22     |
      | PAD  | 19:31   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "GLM" and "LUT" on "2020-05-01" at "05:06"
    Then I should see a service "W40230" that stops at
      | stop | arrival | departure |
      | GLM  | --:--   | 05:06     |
      | CTM  | 05:10   | 05:10     |
      | RTR  | 05:13   | 05:14     |
      | SOO  | 05:17   | 05:17     |
      | HGM  | 05:22   | 05:22     |
      | GRV  | 05:29   | 05:29     |
      | NFL  | 05:33   | 05:33     |
      | SWM  | 05:35   | 05:35     |
      | GNH  | 05:38   | 05:38     |
      | SCG  | 05:40   | 05:40     |
      | DFD  | 05:44   | 05:45     |
      | SGR  | 05:50   | 05:51     |
      | ABW  | 05:57   | 05:58     |
      | PLU  | 06:01   | 06:01     |
      | WWA  | 06:04   | 06:04     |
      | CTN  | 06:09   | 06:10     |
      | WCB  | 06:12   | 06:12     |
      | MZH  | 06:14   | 06:14     |
      | GNW  | 06:17   | 06:17     |
      | DEP  | 06:19   | 06:20     |
      | LBG  | 06:27   | 06:28     |
      | BFR  | 06:34   | 06:34     |
      | CTK  | 06:36   | 06:36     |
      | ZFD  | 06:38   | 06:39     |
      | STP  | 06:43   | 06:43     |
      | WHP  | 06:51   | 06:52     |
      | MIL  | 07:00   | 07:01     |
      | ELS  | 07:05   | 07:05     |
      | RDT  | 07:09   | 07:09     |
      | SAC  | 07:15   | 07:17     |
      | HPD  | 07:26   | 07:26     |
      | LTN  | 07:31   | 07:32     |
      | LUT  | 07:36   | --:--     |
    When I query between "GLM" and "KTN" on "2020-05-08" at "05:06"
    Then I should see a service "W40230" that stops at
      | stop | arrival | departure |
      | GLM  | --:--   | 05:06     |
      | CTM  | 05:10   | 05:10     |
      | RTR  | 05:13   | 05:14     |
      | SOO  | 05:17   | 05:17     |
      | HGM  | 05:22   | 05:22     |
      | GRV  | 05:29   | 05:29     |
      | NFL  | 05:33   | 05:33     |
      | SWM  | 05:35   | 05:35     |
      | GNH  | 05:38   | 05:38     |
      | SCG  | 05:40   | 05:40     |
      | DFD  | 05:44   | 05:45     |
      | SGR  | 05:50   | 05:51     |
      | ABW  | 05:57   | 05:58     |
      | PLU  | 06:01   | 06:01     |
      | WWA  | 06:04   | 06:04     |
      | CTN  | 06:09   | 06:10     |
      | WCB  | 06:12   | 06:12     |
      | MZH  | 06:14   | 06:14     |
      | GNW  | 06:17   | 06:17     |
      | DEP  | 06:19   | 06:20     |
      | LBG  | 06:27   | 06:28     |
      | BFR  | 06:34   | 06:34     |
      | ZFD  | 06:38   | 06:39     |
      | STP  | 06:43   | 06:43     |
      | KTN  | 06:48   | --:--     |

