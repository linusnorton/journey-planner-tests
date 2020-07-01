@timetable
Feature: Journey joins another train
  Journey planners should treat trains that join another train as a single journey

  Scenario: Train joins another train to form a single train between CLT and LST
    Given a query between "CLT" and "LST" on "2020-07-08" at "07:16"
    Then I should see a service "P06108" that stops at
      | stop | arrival | departure |
      | CLT  | --:--   | 07:16     |
      | TLS  | 07:24   | 07:24     |
      | WEE  | 07:28   | 07:28     |
      | GRB  | 07:31   | 07:31     |
      | ALR  | 07:35   | 07:35     |
      | WIV  | 07:39   | 07:39     |
      | HYH  | 07:43   | 07:43     |
      | COL  | 07:50   | 07:54     |
      | KEL  | 08:04   | 08:04     |
      | WTM  | 08:10   | 08:10     |
      | CHM  | 08:19   | 08:19     |
      | SNF  | 08:29   | 08:29     |
      | SRA  | 08:46   | --:--     |
      | LST  | 08:58   | --:--     |

  Scenario: Train joins another train to form a single train between WON and LST
    Given a query between "WON" and "LST" on "2020-07-08" at "08:00"
    Then I should see a service "P06130" that stops at
      | stop | arrival | departure |
      | WON  | --:--   | 08:00     |
      | FRI  | 08:03   | 08:03     |
      | KBX  | 08:06   | 08:06     |
      | TLS  | 08:11   | 08:12     |
      | WIV  | 08:22   | 08:22     |
      | HYH  | 08:26   | 08:26     |
      | COL  | 08:35   | 08:37     |
      | WTM  | 08:49   | 08:50     |
      | CHM  | 08:58   | 08:59     |
      | SNF  | 09:09   | 09:09     |
      | SRA  | 09:26   | --:--     |
      | LST  | 09:36   | --:--     |

  Scenario: Train joins another train to form a single train between CLT and LST
    Given a query between "CLT" and "LST" on "2020-07-08" at "07:45"
    Then I should see a service "P06125" that stops at
      | stop | arrival | departure |
      | CLT  | --:--   | 07:45     |
      | TLS  | 07:53   | 07:53     |
      | WIV  | 08:03   | 08:03     |
      | COL  | 08:16   | 08:18     |
      | MKT  | 08:24   | 08:24     |
      | KEL  | 08:30   | 08:30     |
      | WTM  | 08:36   | 08:36     |
      | CHM  | 08:45   | 08:45     |
      | SNF  | 08:55   | 08:55     |
      | LST  | 09:21   | --:--     |

  Scenario: Train joins another train to form a single train between WON and LST
    Given a query between "WON" and "LST" on "2020-07-08" at "07:38"
    Then I should see a service "P05710" that stops at
      | stop | arrival | departure |
      | WON  | --:--   | 07:38     |
      | FRI  | 07:41   | 07:41     |
      | KBX  | 07:44   | 07:44     |
      | TLS  | 07:50   | 07:58     |
      | WEE  | 08:02   | 08:02     |
      | GRB  | 08:05   | 08:05     |
      | ALR  | 08:09   | 08:09     |
      | WIV  | 08:13   | 08:13     |
      | HYH  | 08:17   | 08:17     |
      | CET  | 08:21   | 08:32     |
      | COL  | 08:40   | 08:48     |
      | MKT  | 08:54   | 08:54     |
      | KEL  | 09:00   | 09:00     |
      | WTM  | 09:06   | 09:06     |
      | CHM  | 09:15   | 09:15     |
      | SNF  | 09:25   | 09:25     |
      | SRA  | 09:42   | --:--     |
      | LST  | 09:54   | --:--     |

  Scenario: Train joins another train to form a single train between WRX and BHI
    Given a query between "WRX" and "BHI" on "2020-07-08" at "07:50"
    Then I should see a service "Y35867" that stops at
      | stop | arrival | departure |
      | WRX  | --:--   | 07:50     |
      | RUA  | 07:58   | 07:58     |
      | CRK  | 08:04   | 08:04     |
      | GOB  | 08:10   | 08:10     |
      | SHR  | 08:28   | 08:33     |
      | WLN  | 08:47   | 08:47     |
      | TFC  | 08:53   | 08:54     |
      | WVH  | 09:11   | 09:11     |
      | SGB  | 09:21   | 09:21     |
      | BHM  | 09:32   | 09:36     |
      | BHI  | 09:50   | --:--     |

