@timetable
Feature: Public time different to scheduled time
  Journey planners should use the public time not the scheduled time

  Scenario: Public departure time differs to scheduled departure time by more than a minute between STP and LDS
    Given a query between "STP" and "LDS" on "2020-04-13" at "18:34"
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

  Scenario: Public departure time differs to scheduled departure time by more than a minute between PAD and RDG
    Given a query between "PAD" and "RDG" on "2020-04-13" at "05:43"
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
    Given a query between "PAD" and "RDG" on "2020-04-13" at "18:43"
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

  Scenario: Public departure time differs to scheduled departure time by more than a minute between PAD and RDG
    Given a query between "PAD" and "RDG" on "2020-04-13" at "06:43"
    Then I should see a service "G37638" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 06:43     |
      | EAL  | 06:51   | 06:51     |
      | STL  | 06:57   | 06:58     |
      | HAY  | 07:01   | 07:01     |
      | WDT  | 07:05   | 07:05     |
      | IVR  | 07:08   | 07:08     |
      | LNY  | 07:10   | 07:10     |
      | SLO  | 07:14   | 07:14     |
      | BNM  | 07:18   | 07:18     |
      | TAP  | 07:21   | 07:21     |
      | MAI  | 07:24   | 07:24     |
      | TWY  | 07:31   | 07:31     |
      | RDG  | 07:41   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between PAD and RDG
    Given a query between "PAD" and "RDG" on "2020-04-13" at "19:43"
    Then I should see a service "G37647" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 19:43     |
      | EAL  | 19:51   | 19:51     |
      | STL  | 19:57   | 19:58     |
      | HAY  | 20:01   | 20:01     |
      | WDT  | 20:05   | 20:05     |
      | IVR  | 20:08   | 20:08     |
      | LNY  | 20:10   | 20:10     |
      | SLO  | 20:14   | 20:14     |
      | BNM  | 20:18   | 20:18     |
      | TAP  | 20:21   | 20:21     |
      | MAI  | 20:24   | 20:24     |
      | TWY  | 20:31   | 20:31     |
      | RDG  | 20:41   | --:--     |

