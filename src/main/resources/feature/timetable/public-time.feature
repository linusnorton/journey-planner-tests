@timetable
Feature: Public time different to scheduled time
  Journey planners should use the public time not the scheduled time

  Scenario: Public departure time differs to scheduled departure time by more than a minute between GPO and BKG
    Given a query between "GPO" and "BKG" on "2020-06-18" at "20:37"
    Then I should see a service "C06214" that stops at
      | stop | arrival | departure |
      | GPO  | --:--   | 20:37     |
      | UHL  | 20:38   | 20:39     |
      | CRH  | 20:41   | 20:41     |
      | HRY  | 20:44   | 20:44     |
      | STO  | 20:48   | 20:48     |
      | BHO  | 20:51   | 20:52     |
      | WMW  | 20:54   | 20:54     |
      | LEM  | 20:56   | 20:57     |
      | LER  | 20:59   | 20:59     |
      | WNP  | 21:01   | 21:01     |
      | WGR  | 21:04   | 21:04     |
      | BKG  | 21:09   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between WCY and HHY
    Given a query between "WCY" and "HHY" on "2020-06-18" at "23:31"
    Then I should see a service "C08729" that stops at
      | stop | arrival | departure |
      | WCY  | --:--   | 23:31     |
      | NWD  | 23:36   | 23:37     |
      | ANZ  | 23:40   | 23:40     |
      | PNW  | 23:41   | 23:41     |
      | SYD  | 23:44   | 23:44     |
      | FOH  | 23:46   | 23:46     |
      | HPA  | 23:49   | 23:49     |
      | BCY  | 23:51   | 23:51     |
      | NXG  | 23:53   | 23:53     |
      | SQE  | 23:56   | 23:57     |
      | ZCW  | 23:58   | 23:59     |
      | ROE  | 00:01   | 00:01     |
      | WPE  | 00:02   | 00:02     |
      | SDE  | 00:04   | 00:04     |
      | ZLW  | 00:06   | 00:06     |
      | SDC  | 00:08   | 00:09     |
      | HOX  | 00:11   | 00:11     |
      | HGG  | 00:13   | 00:13     |
      | DLJ  | 00:15   | 00:15     |
      | CNN  | 00:18   | 00:18     |
      | HHY  | 00:26   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between BMV and LTV
    Given a query between "BMV" and "LTV" on "2020-06-18" at "06:33"
    Then I should see a service "C15816" that stops at
      | stop | arrival | departure |
      | BMV  | --:--   | 06:33     |
      | LOB  | 06:41   | 06:42     |
      | NFD  | 06:44   | 06:44     |
      | KNN  | 06:46   | 06:47     |
      | BRV  | 06:49   | 06:49     |
      | SLY  | 06:52   | 06:52     |
      | UNI  | 06:54   | 06:55     |
      | FWY  | 06:58   | 06:58     |
      | BHM  | 07:03   | 07:05     |
      | AST  | 07:11   | 07:11     |
      | GVH  | 07:14   | 07:14     |
      | ERD  | 07:17   | 07:17     |
      | CRD  | 07:19   | 07:19     |
      | WYL  | 07:22   | 07:22     |
      | SUT  | 07:25   | 07:25     |
      | FOK  | 07:28   | 07:28     |
      | BUL  | 07:31   | 07:31     |
      | BKT  | 07:32   | 07:33     |
      | LIC  | 07:41   | 07:42     |
      | LTV  | 07:45   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between BMV and LTV
    Given a query between "BMV" and "LTV" on "2020-06-18" at "07:31"
    Then I should see a service "C15873" that stops at
      | stop | arrival | departure |
      | BMV  | --:--   | 07:31     |
      | LOB  | 07:40   | 07:42     |
      | NFD  | 07:44   | 07:44     |
      | KNN  | 07:47   | 07:47     |
      | BRV  | 07:49   | 07:49     |
      | SLY  | 07:52   | 07:52     |
      | UNI  | 07:54   | 07:55     |
      | FWY  | 07:58   | 07:58     |
      | BHM  | 08:03   | 08:05     |
      | AST  | 08:11   | 08:11     |
      | GVH  | 08:14   | 08:14     |
      | ERD  | 08:16   | 08:17     |
      | CRD  | 08:19   | 08:19     |
      | WYL  | 08:22   | 08:22     |
      | SUT  | 08:24   | 08:25     |
      | FOK  | 08:28   | 08:28     |
      | BUL  | 08:30   | 08:31     |
      | BKT  | 08:33   | 08:33     |
      | SEN  | 08:36   | 08:36     |
      | LIC  | 08:42   | 08:42     |
      | LTV  | 08:45   | --:--     |

  Scenario: Public departure time differs to scheduled departure time by more than a minute between BMV and LTV
    Given a query between "BMV" and "LTV" on "2020-06-18" at "08:31"
    Then I should see a service "C15920" that stops at
      | stop | arrival | departure |
      | BMV  | --:--   | 08:31     |
      | LOB  | 08:40   | 08:42     |
      | NFD  | 08:44   | 08:44     |
      | KNN  | 08:46   | 08:47     |
      | BRV  | 08:49   | 08:49     |
      | SLY  | 08:52   | 08:52     |
      | UNI  | 08:54   | 08:55     |
      | FWY  | 08:58   | 08:58     |
      | BHM  | 09:03   | 09:05     |
      | AST  | 09:12   | 09:13     |
      | GVH  | 09:15   | 09:15     |
      | ERD  | 09:18   | 09:18     |
      | CRD  | 09:20   | 09:20     |
      | WYL  | 09:23   | 09:23     |
      | SUT  | 09:26   | 09:26     |
      | FOK  | 09:29   | 09:29     |
      | BUL  | 09:32   | 09:32     |
      | BKT  | 09:34   | 09:34     |
      | LIC  | 09:42   | 09:42     |
      | LTV  | 09:45   | --:--     |

