@timetable
Feature: Public time different to scheduled time
  Journey planners should use the public time not the scheduled time

  Scenario: Public departure time differs to scheduled departure time by more than a minute between STP and LDS
    Given a query between "STP" and "LDS" on "2020-05-09" at "18:34"
    Then I should see a service "C64228" that stops at
      | stop | arrival | departure |
      | STP  | --:--   | 18:34     |
      | MHR  | 19:28   | 19:29     |
      | LEI  | 19:42   | 19:43     |
      | EMD  | 19:59   | 20:00     |
      | NOT  | 20:17   | 20:24     |
      | LGM  | 20:42   | 20:43     |
      | ALF  | 20:50   | 20:51     |
      | CHD  | 21:08   | 21:09     |
      | SHF  | 21:24   | 21:26     |
      | WKF  | 21:57   | 21:58     |
      | LDS  | 22:14   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between NRW and LIV
    Given a query between "NRW" and "LIV" on "2020-05-09" at "05:50"
    Then I should see a service "C64578" that stops at
      | stop | arrival | departure |
      | NRW  | --:--   | 05:50     |
      | WMD  | 06:02   | 06:02     |
      | ATL  | 06:09   | 06:09     |
      | TTF  | 06:23   | 06:23     |
      | ELY  | 06:44   | 06:51     |
      | MCH  | 07:07   | 07:07     |
      | PBO  | 07:25   | 07:27     |
      | GRA  | 07:55   | 07:58     |
      | BTF  | 08:11   | 08:11     |
      | ALK  | 08:17   | 08:17     |
      | BIN  | 08:21   | 08:22     |
      | RDF  | 08:27   | 08:27     |
      | NET  | 08:31   | 08:32     |
      | NOT  | 08:39   | 08:48     |
      | ALF  | 09:09   | 09:09     |
      | CHD  | 09:20   | 09:20     |
      | SHF  | 09:37   | 09:42     |
      | SPT  | 10:26   | 10:26     |
      | MAN  | 10:37   | 10:38     |
      | MCO  | 10:41   | 10:42     |
      | WAC  | 10:58   | 10:58     |
      | WID  | 11:06   | 11:06     |
      | LPY  | 11:15   | 11:15     |
      | LIV  | 11:32   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between GPO and BKG
    Given a query between "GPO" and "BKG" on "2020-05-09" at "19:35"
    Then I should see a service "G38001" that stops at
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
    Given a query between "GPO" and "BKG" on "2020-05-09" at "19:35"
    Then I should see a service "G38001" that stops at
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
    Given a query between "MAI" and "MLW" on "2020-05-09" at "23:45"
    Then I should see a service "L97876" that stops at
      | stop | arrival | departure |
      | MAI  | --:--   | 23:45     |
      | FZP  | 23:48   | 23:48     |
      | COO  | 23:52   | 23:52     |
      | BNE  | 23:56   | 23:59     |
      | MLW  | 00:08   | --:--     |

