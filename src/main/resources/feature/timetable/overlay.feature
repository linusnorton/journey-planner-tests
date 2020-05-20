@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between WAT and TWI
    Given a query between "WAT" and "TWI" on "2020-06-13" at "21:45"
    Then I should see a service "W18996" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 21:45     |
      | VXH  | 21:49   | 21:49     |
      | QRB  | 21:52   | 21:52     |
      | CLJ  | 21:55   | 21:55     |
      | WNT  | 21:58   | 21:58     |
      | PUT  | 22:00   | 22:01     |
      | BNS  | 22:04   | 22:05     |
      | MTL  | 22:07   | 22:07     |
      | NSH  | 22:09   | 22:09     |
      | RMD  | 22:11   | 22:12     |
      | SMG  | 22:14   | 22:14     |
      | TWI  | 22:16   | --:--     |
    When I query between "WAT" and "TWI" on "2020-06-20" at "21:45"
    Then I should see a service "W18996" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 21:45     |
      | VXH  | 21:49   | 21:49     |
      | QRB  | 21:52   | 21:52     |
      | CLJ  | 21:55   | 21:55     |
      | WNT  | 21:58   | 21:58     |
      | PUT  | 22:00   | 22:01     |
      | BNS  | 22:04   | 22:05     |
      | MTL  | 22:07   | 22:07     |
      | NSH  | 22:09   | 22:09     |
      | RMD  | 22:11   | 22:12     |
      | SMG  | 22:14   | 22:14     |
      | TWI  | 22:16   | --:--     |

  Scenario: Changing calling point stopping times between LBG and BKJ
    Given a query between "LBG" and "BKJ" on "2020-06-13" at "22:01"
    Then I should see a service "W08179" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 22:01     |
      | SBM  | 22:05   | 22:05     |
      | QRP  | 22:08   | 22:08     |
      | PMR  | 22:11   | 22:11     |
      | EDW  | 22:14   | 22:14     |
      | NDL  | 22:16   | 22:17     |
      | TUH  | 22:20   | 22:21     |
      | WNW  | 22:24   | 22:24     |
      | GIP  | 22:27   | 22:27     |
      | CYP  | 22:31   | 22:31     |
      | BIK  | 22:35   | 22:35     |
      | BKJ  | 22:39   | --:--     |
    When I query between "LBG" and "BKJ" on "2020-06-20" at "22:02"
    Then I should see a service "W08179" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 22:02     |
      | SBM  | 22:06   | 22:06     |
      | QRP  | 22:09   | 22:09     |
      | PMR  | 22:12   | 22:12     |
      | EDW  | 22:15   | 22:15     |
      | NDL  | 22:17   | 22:17     |
      | TUH  | 22:20   | 22:21     |
      | WNW  | 22:24   | 22:24     |
      | GIP  | 22:27   | 22:27     |
      | CYP  | 22:31   | 22:31     |
      | BIK  | 22:35   | 22:35     |
      | BKJ  | 22:39   | --:--     |

  Scenario: Changing calling point stopping times between COR and STP
    Given a query between "COR" and "STP" on "2020-06-13" at "09:41"
    Then I should see a service "W88445" that stops at
      | stop | arrival | departure |
      | COR  | --:--   | 09:41     |
      | KET  | 09:49   | 09:51     |
      | WEL  | 09:58   | 09:59     |
      | BDM  | 10:12   | 10:12     |
      | LUT  | 10:27   | 10:28     |
      | STP  | 10:51   | --:--     |
    When I query between "COR" and "STP" on "2020-06-20" at "09:41"
    Then I should see a service "W88445" that stops at
      | stop | arrival | departure |
      | COR  | --:--   | 09:41     |
      | KET  | 09:49   | 09:51     |
      | WEL  | 09:58   | 09:59     |
      | BDM  | 10:12   | --:--     |
      | LUT  | 10:27   | --:--     |
      | STP  | 10:51   | --:--     |

  Scenario: Changing calling point stopping times between LBG and BKJ
    Given a query between "LBG" and "BKJ" on "2020-06-13" at "09:01"
    Then I should see a service "W08083" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 09:01     |
      | SBM  | 09:05   | 09:05     |
      | QRP  | 09:08   | 09:08     |
      | PMR  | 09:11   | 09:11     |
      | EDW  | 09:14   | 09:14     |
      | NDL  | 09:16   | 09:17     |
      | TUH  | 09:20   | 09:21     |
      | WNW  | 09:24   | 09:24     |
      | GIP  | 09:27   | 09:27     |
      | CYP  | 09:31   | 09:31     |
      | BIK  | 09:35   | 09:35     |
      | BKJ  | 09:39   | --:--     |
    When I query between "LBG" and "BKJ" on "2020-06-20" at "09:02"
    Then I should see a service "W08083" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 09:02     |
      | SBM  | 09:06   | 09:06     |
      | QRP  | 09:09   | 09:09     |
      | PMR  | 09:12   | 09:12     |
      | EDW  | 09:15   | 09:15     |
      | NDL  | 09:17   | 09:17     |
      | TUH  | 09:20   | 09:21     |
      | WNW  | 09:24   | 09:24     |
      | GIP  | 09:27   | 09:27     |
      | CYP  | 09:31   | 09:31     |
      | BIK  | 09:35   | 09:35     |
      | BKJ  | 09:39   | --:--     |

  Scenario: Changing calling point stopping times between WGC and MOG
    Given a query between "WGC" and "MOG" on "2020-06-13" at "11:28"
    Then I should see a service "L22933" that stops at
      | stop | arrival | departure |
      | WGC  | --:--   | 11:28     |
      | HAT  | 11:33   | 11:33     |
      | WMG  | 11:36   | 11:36     |
      | BPK  | 11:39   | 11:39     |
      | PBR  | 11:42   | 11:42     |
      | HDW  | 11:45   | 11:45     |
      | NBA  | 11:48   | 11:48     |
      | OKL  | 11:50   | 11:50     |
      | NSG  | 11:53   | 11:53     |
      | AAP  | 11:56   | 11:58     |
      | HRN  | 12:01   | 12:01     |
      | HGY  | 12:03   | 12:03     |
      | FPK  | 12:05   | 12:07     |
      | DYP  | 12:10   | 12:10     |
      | HHY  | 12:12   | 12:12     |
      | EXR  | 12:14   | 12:14     |
      | OLD  | 12:17   | 12:18     |
      | MOG  | 12:22   | --:--     |
    When I query between "WGC" and "NBA" on "2020-06-20" at "11:28"
    Then I should see a service "L22933" that stops at
      | stop | arrival | departure |
      | WGC  | --:--   | 11:28     |
      | HAT  | 11:33   | 11:33     |
      | WMG  | 11:36   | 11:36     |
      | BPK  | 11:39   | 11:39     |
      | PBR  | 11:42   | 11:43     |
      | HDW  | 11:46   | 11:46     |
      | NBA  | 11:49   | --:--     |

