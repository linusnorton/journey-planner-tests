@timetable
Feature: Public time different to scheduled time
  Journey planners should use the public time not the scheduled time

  Scenario: Public departure time differs to scheduled departure time by more than a minute between CDF and FGH
    Given a query between "CDF" and "FGH" on "2020-08-01" at "06:42"
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

  Scenario: Public departure time differs to scheduled departure time by more than a minute between GPO and BKG
    Given a query between "GPO" and "BKG" on "2020-08-01" at "19:35"
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
    Given a query between "GPO" and "BKG" on "2020-08-01" at "19:35"
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

  Scenario: Public departure time differs to scheduled departure time by more than a minute between MAI and MLW
    Given a query between "MAI" and "MLW" on "2020-08-01" at "23:45"
    Then I should see a service "L76063" that stops at
      | stop | arrival | departure |
      | MAI  | --:--   | 23:45     |
      | FZP  | 23:48   | 23:48     |
      | COO  | 23:52   | 23:52     |
      | BNE  | 23:56   | 23:59     |
      | MLW  | 00:08   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between PAD and RDG
    Given a query between "PAD" and "RDG" on "2020-08-01" at "17:43"
    Then I should see a service "P62958" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 17:43     |
      | EAL  | 17:51   | 17:51     |
      | STL  | 17:57   | 17:58     |
      | HAY  | 18:01   | 18:01     |
      | WDT  | 18:05   | 18:05     |
      | IVR  | 18:08   | 18:08     |
      | LNY  | 18:10   | 18:10     |
      | SLO  | 18:14   | 18:14     |
      | BNM  | 18:18   | 18:18     |
      | TAP  | 18:21   | 18:21     |
      | MAI  | 18:24   | 18:24     |
      | TWY  | 18:31   | 18:31     |
      | RDG  | 18:41   | --:--     |

