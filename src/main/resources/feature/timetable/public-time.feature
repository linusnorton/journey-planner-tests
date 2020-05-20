@timetable
Feature: Public time different to scheduled time
  Journey planners should use the public time not the scheduled time

  Scenario: Public departure time differs to scheduled departure time by more than a minute between LNK and MTH
    Given a query between "LNK" and "MTH" on "2020-06-20" at "23:50"
    Then I should see a service "C36658" that stops at
      | stop | arrival | departure |
      | LNK  | --:--   | 23:50     |
      | CLU  | 23:59   | 23:59     |
      | WSH  | 00:06   | 00:07     |
      | SDM  | 00:11   | 00:11     |
      | MTH  | 00:15   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between CDF and FGH
    Given a query between "CDF" and "FGH" on "2020-06-20" at "06:42"
    Then I should see a service "C37409" that stops at
      | stop | arrival | departure |
      | CDF  | --:--   | 06:42     |
      | BGN  | 07:03   | 07:03     |
      | PYL  | 07:11   | 07:11     |
      | PTA  | 07:19   | 07:19     |
      | BAJ  | 07:23   | 07:23     |
      | BNF  | 07:26   | 07:26     |
      | NTH  | 07:30   | 07:30     |
      | SKE  | 07:34   | 07:34     |
      | LAS  | 07:38   | 07:38     |
      | SWA  | 07:47   | 07:52     |
      | GWN  | 08:02   | 08:02     |
      | LLE  | 08:09   | 08:10     |
      | PBY  | 08:16   | 08:16     |
      | KWL  | 08:22   | 08:22     |
      | FYS  | 08:28   | 08:28     |
      | CMN  | 08:43   | 08:43     |
      | WTL  | 08:59   | 08:59     |
      | CUW  | 09:09   | 09:09     |
      | CLR  | 09:17   | 09:17     |
      | FGW  | 09:35   | 09:35     |
      | FGH  | 09:43   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between INV and GLQ
    Given a query between "INV" and "GLQ" on "2020-06-20" at "20:16"
    Then I should see a service "C60046" that stops at
      | stop | arrival | departure |
      | INV  | --:--   | 20:16     |
      | CAG  | 20:57   | 20:57     |
      | AVM  | 21:10   | 21:10     |
      | KIN  | 21:22   | 21:22     |
      | NWR  | 21:26   | 21:26     |
      | DLW  | 21:38   | 21:38     |
      | BLA  | 22:00   | 22:00     |
      | PIT  | 22:11   | 22:12     |
      | DKD  | 22:24   | 22:24     |
      | PTH  | 22:42   | 22:43     |
      | DBL  | 23:06   | 23:07     |
      | BEA  | 23:10   | 23:10     |
      | STG  | 23:15   | 23:16     |
      | GLQ  | 23:48   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between GPO and BKG
    Given a query between "GPO" and "BKG" on "2020-06-20" at "19:35"
    Then I should see a service "C92256" that stops at
      | stop | arrival | departure |
      | GPO  | --:--   | 19:35     |
      | UHL  | 19:38   | 19:39     |
      | CRH  | 19:41   | 19:41     |
      | HRY  | 19:44   | 19:44     |
      | STO  | 19:48   | 19:48     |
      | BHO  | 19:51   | 19:52     |
      | WMW  | 19:54   | 19:54     |
      | LEM  | 19:56   | 19:57     |
      | LER  | 19:59   | 19:59     |
      | WNP  | 20:01   | 20:01     |
      | WGR  | 20:04   | 20:04     |
      | BKG  | 20:12   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between GPO and BKG
    Given a query between "GPO" and "BKG" on "2020-06-20" at "19:35"
    Then I should see a service "C92256" that stops at
      | stop | arrival | departure |
      | GPO  | --:--   | 19:35     |
      | UHL  | 19:38   | 19:39     |
      | CRH  | 19:41   | 19:41     |
      | HRY  | 19:44   | 19:44     |
      | STO  | 19:48   | 19:48     |
      | BHO  | 19:51   | 19:52     |
      | WMW  | 19:54   | 19:54     |
      | LEM  | 19:56   | 19:57     |
      | LER  | 19:59   | 19:59     |
      | WNP  | 20:01   | 20:01     |
      | WGR  | 20:04   | 20:04     |
      | BKG  | 20:12   | --:--     |

