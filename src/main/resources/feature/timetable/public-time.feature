@timetable
Feature: Public time different to scheduled time
  Journey planners should use the public time not the scheduled time

  Scenario: Public departure time differs to scheduled departure time by more than a minute between STP and LDS
    Given a query between "STP" and "LDS" on "2020-04-30" at "18:34"
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

  Scenario: Public departure time differs to scheduled departure time by more than a minute between EUS and PRE
    Given a query between "EUS" and "PRE" on "2020-04-30" at "21:10"
    Then I should see a service "C73014" that stops at
      | stop | arrival | departure |
      | EUS  | --:--   | 21:10     |
      | WFJ  | --:--   | 21:25     |
      | RUG  | 22:03   | 22:05     |
      | STA  | 22:37   | 22:37     |
      | CRE  | 22:58   | 22:59     |
      | WBQ  | 23:20   | 23:21     |
      | WGN  | 23:31   | 23:32     |
      | PRE  | 23:50   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between WVH and EUS
    Given a query between "WVH" and "EUS" on "2020-04-30" at "05:45"
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
    Given a query between "PAD" and "RDG" on "2020-04-30" at "05:43"
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
    Given a query between "PAD" and "RDG" on "2020-04-30" at "18:43"
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

