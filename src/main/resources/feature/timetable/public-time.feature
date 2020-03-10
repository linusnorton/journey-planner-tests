@timetable
Feature: Public time different to scheduled time
  Journey planners should use the public time not the scheduled time

  Scenario: Public departure time differs to scheduled departure time by more than a minute between NRW and LIV
    Given a query between "NRW" and "LIV" on "2020-04-06" at "05:50"
    Then I should see a service "C64580" that stops at
      | stop | arrival | departure |
      | NRW  | --:--   | 05:50     |
      | WMD  | 06:02   | 06:03     |
      | ATL  | 06:09   | 06:10     |
      | TTF  | 06:23   | 06:24     |
      | ELY  | 06:46   | 06:51     |
      | MCH  | 07:07   | 07:07     |
      | PBO  | 07:25   | 07:29     |
      | GRA  | 07:57   | 07:58     |
      | BTF  | 08:11   | 08:11     |
      | ALK  | 08:17   | 08:18     |
      | BIN  | 08:22   | 08:22     |
      | RDF  | 08:28   | 08:28     |
      | NET  | 08:32   | 08:33     |
      | NOT  | 08:40   | 08:47     |
      | ALF  | 09:08   | 09:08     |
      | CHD  | 09:20   | 09:20     |
      | SHF  | 09:37   | 09:42     |
      | SPT  | 10:26   | 10:26     |
      | MAN  | 10:37   | 10:38     |
      | MCO  | 10:41   | 10:42     |
      | WAC  | 10:58   | 10:58     |
      | WID  | 11:06   | 11:06     |
      | LPY  | 11:15   | 11:15     |
      | LIV  | 11:32   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between STP and LDS
    Given a query between "STP" and "LDS" on "2020-04-06" at "18:34"
    Then I should see a service "C68179" that stops at
      | stop | arrival | departure |
      | STP  | --:--   | 18:34     |
      | WEL  | 19:19   | 19:20     |
      | KET  | 19:28   | 19:29     |
      | MHR  | 19:39   | 19:40     |
      | LEI  | 19:54   | 19:54     |
      | LBO  | 20:05   | 20:06     |
      | EMD  | 20:14   | 20:15     |
      | NOT  | 20:28   | 20:33     |
      | LGM  | 20:48   | 20:49     |
      | ALF  | 20:56   | 20:57     |
      | CHD  | 21:09   | 21:10     |
      | SHF  | 21:24   | 21:26     |
      | WKF  | 21:57   | 21:59     |
      | LDS  | 22:20   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between WVH and EUS
    Given a query between "WVH" and "EUS" on "2020-04-06" at "05:45"
    Then I should see a service "C73029" that stops at
      | stop | arrival | departure |
      | WVH  | --:--   | 05:45     |
      | SAD  | 05:54   | 05:55     |
      | BHM  | 06:05   | 06:10     |
      | BHI  | 06:19   | 06:20     |
      | COV  | 06:30   | 06:31     |
      | MKC  | 06:59   | 06:59     |
      | EUS  | 07:33   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between PAD and RDG
    Given a query between "PAD" and "RDG" on "2020-04-06" at "05:43"
    Then I should see a service "G37625" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 05:43     |
      | EAL  | 05:53   | 05:53     |
      | STL  | 05:57   | 05:58     |
      | HAY  | 06:01   | 06:01     |
      | WDT  | 06:05   | 06:05     |
      | IVR  | 06:08   | 06:08     |
      | LNY  | 06:10   | 06:10     |
      | SLO  | 06:14   | 06:14     |
      | BNM  | 06:18   | 06:18     |
      | TAP  | 06:21   | 06:21     |
      | MAI  | 06:24   | 06:24     |
      | TWY  | 06:31   | 06:31     |
      | RDG  | 06:41   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between PAD and RDG
    Given a query between "PAD" and "RDG" on "2020-04-06" at "18:43"
    Then I should see a service "G37634" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 18:43     |
      | EAL  | 18:52   | 18:53     |
      | STL  | 18:57   | 18:58     |
      | HAY  | 19:01   | 19:01     |
      | WDT  | 19:05   | 19:05     |
      | IVR  | 19:08   | 19:08     |
      | LNY  | 19:10   | 19:10     |
      | SLO  | 19:14   | 19:14     |
      | BNM  | 19:18   | 19:18     |
      | TAP  | 19:21   | 19:21     |
      | MAI  | 19:24   | 19:24     |
      | TWY  | 19:31   | 19:31     |
      | RDG  | 19:41   | --:--     |

