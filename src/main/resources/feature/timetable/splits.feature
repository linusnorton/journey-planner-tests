@timetable
Feature: Journey splits
  Journey planners should treat trains that split as a single journey

  Scenario: Train splits so there appears to be a single train between LST and CET
    Given a query between "LST" and "CET" on "2020-07-08" at "17:08"
    Then I should see a service "P05730" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 17:08     |
      | SRA  | 17:16   | 17:16     |
      | CHM  | 17:39   | 17:40     |
      | WTM  | 17:50   | 17:50     |
      | KEL  | 17:55   | 17:55     |
      | MKT  | 18:00   | 18:00     |
      | COL  | 18:08   | 18:16     |
      | CET  | 18:26   | --:--     |

  Scenario: Train splits so there appears to be a single train between LST and HWC
    Given a query between "LST" and "HWC" on "2020-07-08" at "08:36"
    Then I should see a service "P06505" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 08:36     |
      | SRA  | 08:45   | 08:45     |
      | SNF  | 09:02   | 09:03     |
      | CHM  | 09:12   | 09:12     |
      | WTM  | 09:22   | 09:23     |
      | KEL  | 09:27   | 09:27     |
      | MKT  | 09:33   | 09:33     |
      | COL  | 09:40   | 09:51     |
      | MNG  | 10:00   | 10:00     |
      | MIS  | 10:04   | 10:04     |
      | WRB  | 10:09   | 10:09     |
      | HPQ  | 10:17   | 10:17     |
      | DVC  | 10:20   | 10:20     |
      | HWC  | 10:22   | --:--     |

  Scenario: Train splits so there appears to be a single train between LST and CMB
    Given a query between "LST" and "CMB" on "2020-07-08" at "17:07"
    Then I should see a service "P07234" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 17:07     |
      | TOM  | 17:19   | 17:19     |
      | BIS  | 17:43   | 17:44     |
      | AUD  | 17:56   | 17:56     |
      | WLF  | 18:04   | 18:04     |
      | CBG  | 18:17   | 18:26     |
      | CMB  | 18:33   | --:--     |

  Scenario: Train splits so there appears to be a single train between LST and CMB
    Given a query between "LST" and "CMB" on "2020-07-08" at "18:07"
    Then I should see a service "P07236" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 18:07     |
      | TOM  | 18:19   | 18:19     |
      | BIS  | 18:43   | 18:44     |
      | AUD  | 18:56   | 18:56     |
      | WLF  | 19:04   | 19:04     |
      | CBG  | 19:17   | 19:28     |
      | CMB  | 19:35   | --:--     |

  Scenario: Train splits so there appears to be a single train between LST and HWC
    Given a query between "LST" and "HWC" on "2020-07-08" at "16:44"
    Then I should see a service "C12050" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 16:44     |
      | SRA  | 16:52   | 16:52     |
      | CHM  | 17:15   | 17:15     |
      | KEL  | 17:27   | 17:27     |
      | MKT  | 17:32   | 17:32     |
      | COL  | 17:40   | 17:48     |
      | MNG  | 17:55   | 17:58     |
      | MIS  | 18:02   | 18:02     |
      | WRB  | 18:07   | 18:07     |
      | HPQ  | 18:16   | 18:16     |
      | DVC  | 18:19   | 18:19     |
      | HWC  | 18:23   | --:--     |

