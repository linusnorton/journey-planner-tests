@timetable
Feature: Public time different to scheduled time
  Journey planners should use the public time not the scheduled time

  Scenario: Public departure time differs to scheduled departure time by more than a minute between MAN and EUS
    Given a query between "MAN" and "EUS" on "2020-04-12" at "20:21"
    Then I should see a service "C72648" that stops at
      | stop | arrival | departure |
      | MAN  | --:--   | 20:21     |
      | SPT  | 20:27   | 20:27     |
      | MAC  | 20:40   | 20:40     |
      | SOT  | 20:57   | 20:58     |
      | MKC  | 21:58   | 22:00     |
      | EUS  | 22:56   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between BMO and MYB
    Given a query between "BMO" and "MYB" on "2020-04-12" at "08:25"
    Then I should see a service "C78657" that stops at
      | stop | arrival | departure |
      | BMO  | --:--   | 08:25     |
      | SOL  | 08:33   | 08:34     |
      | DDG  | 08:38   | 08:39     |
      | WRP  | 08:48   | 08:49     |
      | WRW  | 08:52   | 08:52     |
      | LMS  | 08:57   | 08:58     |
      | BAN  | 09:15   | 09:16     |
      | BCS  | 09:28   | 09:29     |
      | HDM  | 09:39   | 09:40     |
      | MYB  | 10:18   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between CYP and HHY
    Given a query between "CYP" and "HHY" on "2020-04-12" at "07:37"
    Then I should see a service "L45602" that stops at
      | stop | arrival | departure |
      | CYP  | --:--   | 07:37     |
      | SYD  | 07:41   | 07:41     |
      | FOH  | 07:43   | 07:43     |
      | HPA  | 07:46   | 07:46     |
      | BCY  | 07:48   | 07:48     |
      | NXG  | 07:50   | 07:50     |
      | SQE  | 07:53   | 07:54     |
      | ZCW  | 07:55   | 07:56     |
      | ROE  | 07:57   | 07:57     |
      | WPE  | 07:59   | 07:59     |
      | SDE  | 08:01   | 08:01     |
      | ZLW  | 08:03   | 08:03     |
      | SDC  | 08:05   | 08:05     |
      | HOX  | 08:07   | 08:07     |
      | HGG  | 08:09   | 08:09     |
      | DLJ  | 08:11   | 08:12     |
      | CNN  | 08:14   | 08:14     |
      | HHY  | 08:20   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between HHY and WCY
    Given a query between "HHY" and "WCY" on "2020-04-12" at "11:37"
    Then I should see a service "L45850" that stops at
      | stop | arrival | departure |
      | HHY  | --:--   | 11:37     |
      | CNN  | 11:39   | 11:39     |
      | DLJ  | 11:41   | 11:42     |
      | HGG  | 11:43   | 11:43     |
      | HOX  | 11:45   | 11:45     |
      | SDC  | 11:48   | 11:48     |
      | ZLW  | 11:50   | 11:50     |
      | SDE  | 11:52   | 11:52     |
      | WPE  | 11:54   | 11:54     |
      | ROE  | 11:56   | 11:56     |
      | ZCW  | 11:57   | 11:58     |
      | SQE  | 11:59   | 12:00     |
      | NXG  | 12:04   | 12:04     |
      | BCY  | 12:07   | 12:07     |
      | HPA  | 12:09   | 12:09     |
      | FOH  | 12:12   | 12:12     |
      | SYD  | 12:15   | 12:15     |
      | PNW  | 12:17   | 12:17     |
      | ANZ  | 12:19   | 12:19     |
      | NWD  | 12:22   | 12:22     |
      | WCY  | 12:29   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between CLJ and HHY
    Given a query between "CLJ" and "HHY" on "2020-04-12" at "11:50"
    Then I should see a service "L46879" that stops at
      | stop | arrival | departure |
      | CLJ  | --:--   | 11:50     |
      | WWR  | 11:56   | 11:56     |
      | CLP  | 11:58   | 11:58     |
      | DMK  | 12:03   | 12:03     |
      | PMR  | 12:05   | 12:05     |
      | QRP  | 12:07   | 12:07     |
      | SQE  | 12:17   | 12:17     |
      | ZCW  | 12:19   | 12:19     |
      | ROE  | 12:21   | 12:21     |
      | WPE  | 12:22   | 12:22     |
      | SDE  | 12:24   | 12:24     |
      | ZLW  | 12:26   | 12:27     |
      | SDC  | 12:29   | 12:29     |
      | HOX  | 12:31   | 12:31     |
      | HGG  | 12:33   | 12:33     |
      | DLJ  | 12:35   | 12:35     |
      | CNN  | 12:38   | 12:38     |
      | HHY  | 12:40   | --:--     |

