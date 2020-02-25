Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "MYB" and "OXF" on "2020-04-26" at "15:05"
    Then I should see a service "C78591" that stops at
      | stop | arrival | departure |
      | MYB  | --:--   | 15:05     |
      | HDM  | 15:39   | 15:40     |
      | BIT  | 15:52   | 15:53     |
      | OXP  | 15:59   | 16:01     |
      | OXF  | 16:09   | --:--     |
    When I query between "MYB" and "OXF" on "2020-05-03" at "15:05"
    Then I should see a service "C78591" that stops at
      | stop | arrival | departure |
      | MYB  | --:--   | 15:11     |
      | GER  | 15:30   | 15:30     |
      | BCF  | 15:36   | 15:37     |
      | HWY  | 15:42   | 15:43     |
      | PRR  | 15:52   | 15:52     |
      | BIT  | 16:12   | 16:12     |
      | OXP  | 16:19   | 16:21     |
      | OXF  | 16:29   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "OXF" and "RDG" on "2020-04-07" at "03:54"
    Then I should see a service "Y95393" that stops at
      | stop | arrival | departure |
      | OXF  | --:--   | 03:54     |
      | DID  | 04:06   | 04:10     |
      | CHO  | 04:16   | 04:16     |
      | GOR  | 04:21   | 04:22     |
      | PAN  | 04:26   | 04:27     |
      | TLH  | 04:31   | 04:32     |
      | RDG  | 04:37   | --:--     |
    When I query between "OXF" and "RDG" on "2020-04-14" at "03:54"
    Then I should see a service "Y95393" that stops at
      | stop | arrival | departure |
      | OXF  | --:--   | 03:54     |
      | DID  | 04:09   | 04:10     |
      | CHO  | 04:16   | 04:17     |
      | GOR  | 04:22   | 04:22     |
      | TLH  | 04:29   | 04:32     |
      | RDG  | 04:38   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "VIC" and "DFD" on "2020-03-22" at "14:04"
    Then I should see a service "W52719" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 14:04     |
      | DMK  | 14:13   | 14:14     |
      | PMR  | 14:16   | 14:17     |
      | NHD  | 14:19   | 14:19     |
      | LEW  | 14:25   | 14:26     |
      | BKH  | 14:28   | 14:29     |
      | KDB  | 14:32   | 14:32     |
      | ELW  | 14:35   | 14:35     |
      | FCN  | 14:38   | 14:38     |
      | WLI  | 14:41   | 14:41     |
      | BXH  | 14:44   | 14:44     |
      | BNH  | 14:47   | 14:47     |
      | DFD  | 14:54   | --:--     |
    When I query between "VIC" and "DFD" on "2020-03-29" at "14:04"
    Then I should see a service "W52719" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 14:04     |
      | DMK  | 14:14   | 14:15     |
      | PMR  | 14:17   | 14:18     |
      | NHD  | 14:20   | 14:20     |
      | LEW  | 14:25   | 14:26     |
      | BKH  | 14:28   | 14:29     |
      | KDB  | 14:32   | 14:32     |
      | ELW  | 14:35   | 14:35     |
      | FCN  | 14:38   | 14:38     |
      | WLI  | 14:41   | 14:41     |
      | BXH  | 14:44   | 14:44     |
      | BNH  | 14:47   | 14:47     |
      | DFD  | 14:54   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "KGX" and "KLN" on "2020-04-03" at "09:42"
    Then I should see a service "L02581" that stops at
      | stop | arrival | departure |
      | KGX  | --:--   | 09:42     |
      | CBG  | 10:30   | 10:36     |
      | CMB  | 10:40   | 10:40     |
      | WBC  | 10:44   | 10:44     |
      | ELY  | 10:55   | 10:55     |
      | LTP  | 11:03   | 11:04     |
      | DOW  | 11:17   | 11:17     |
      | WTG  | 11:23   | 11:23     |
      | KLN  | 11:31   | --:--     |
    When I query between "KGX" and "ELY" on "2020-04-10" at "09:42"
    Then I should see a service "L02581" that stops at
      | stop | arrival | departure |
      | KGX  | --:--   | 09:42     |
      | CBG  | 10:30   | 10:36     |
      | CMB  | 10:40   | 10:40     |
      | WBC  | 10:44   | 10:44     |
      | ELY  | 10:55   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "KTN" and "RAI" on "2020-03-21" at "21:56"
    Then I should see a service "W40418" that stops at
      | stop | arrival | departure |
      | KTN  | --:--   | 21:56     |
      | STP  | 22:02   | 22:02     |
      | ZFD  | 22:06   | 22:07     |
      | BFR  | 22:11   | 22:11     |
      | LBG  | 22:17   | 22:18     |
      | DEP  | 22:25   | 22:25     |
      | GNW  | 22:27   | 22:27     |
      | MZH  | 22:30   | 22:30     |
      | WCB  | 22:32   | 22:32     |
      | CTN  | 22:34   | 22:35     |
      | WWA  | 22:40   | 22:40     |
      | PLU  | 22:42   | 22:43     |
      | ABW  | 22:46   | 22:46     |
      | SGR  | 22:52   | 22:52     |
      | DFD  | 22:57   | 22:58     |
      | SCG  | 23:02   | 23:02     |
      | GNH  | 23:04   | 23:04     |
      | SWM  | 23:07   | 23:07     |
      | NFL  | 23:09   | 23:09     |
      | GRV  | 23:13   | 23:13     |
      | HGM  | 23:19   | 23:19     |
      | SOO  | 23:24   | 23:25     |
      | RTR  | 23:28   | 23:28     |
      | CTM  | 23:31   | 23:31     |
      | GLM  | 23:35   | 23:36     |
      | RAI  | 23:41   | --:--     |
    When I query between "BDM" and "DFD" on "2020-03-28" at "21:56"
    Then I should see a service "W40418" that stops at
      | stop | arrival | departure |
      | BDM  | --:--   | 21:04     |
      | FLT  | 21:14   | 21:14     |
      | HLN  | 21:19   | 21:19     |
      | LEA  | 21:24   | 21:24     |
      | LUT  | 21:27   | 21:28     |
      | LTN  | 21:31   | 21:31     |
      | HPD  | 21:37   | 21:37     |
      | SAC  | 21:42   | 21:42     |
      | STP  | 22:04   | 22:04     |
      | ZFD  | 22:08   | 22:09     |
      | CTK  | 22:10   | 22:11     |
      | BFR  | 22:13   | 22:13     |
      | LBG  | 22:18   | 22:19     |
      | DEP  | 22:25   | 22:25     |
      | GNW  | 22:27   | 22:28     |
      | MZH  | 22:31   | 22:31     |
      | WCB  | 22:33   | 22:33     |
      | CTN  | 22:35   | 22:35     |
      | WWA  | 22:40   | 22:41     |
      | PLU  | 22:43   | 22:43     |
      | ABW  | 22:46   | 22:47     |
      | SGR  | 22:52   | 22:53     |
      | DFD  | 22:57   | --:--     |

