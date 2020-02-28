@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between  and 
    Given a query between "SEF" and "BTN" on "2020-03-21" at "09:53"
    Then I should see a service "L03662" that stops at
      | stop | arrival | departure |
      | SEF  | --:--   | 09:53     |
      | BIP  | 09:55   | 09:55     |
      | NVH  | 09:59   | 09:59     |
      | NVN  | 10:00   | 10:01     |
      | SEE  | 10:05   | 10:05     |
      | LWS  | 10:11   | 10:13     |
      | FMR  | 10:20   | 10:20     |
      | MCB  | 10:24   | 10:24     |
      | LRB  | 10:27   | 10:27     |
      | BTN  | 10:30   | --:--     |
    When I query between "LWS" and "BTN" on "2020-03-28" at "09:53"
    Then I should see a service "L03662" that stops at
      | stop | arrival | departure |
      | LWS  | --:--   | 10:13     |
      | FMR  | 10:20   | 10:20     |
      | MCB  | 10:24   | 10:24     |
      | LRB  | 10:27   | 10:27     |
      | BTN  | 10:30   | --:--     |

  Scenario: Changing calling point stopping times between  and 
    Given a query between "LDS" and "SHF" on "2020-03-21" at "20:32"
    Then I should see a service "Y56815" that stops at
      | stop | arrival | departure |
      | LDS  | --:--   | 20:32     |
      | WDS  | 20:41   | 20:41     |
      | CFD  | 20:49   | 20:52     |
      | NOR  | 20:57   | 20:57     |
      | WKK  | 21:02   | 21:03     |
      | DRT  | 21:14   | 21:14     |
      | BNY  | 21:21   | 21:22     |
      | WOM  | 21:27   | 21:27     |
      | ELR  | 21:31   | 21:31     |
      | CLN  | 21:37   | 21:37     |
      | MHS  | 21:42   | 21:43     |
      | SHF  | 21:51   | --:--     |
    When I query between "LDS" and "BNY" on "2020-03-28" at "20:32"
    Then I should see a service "Y56815" that stops at
      | stop | arrival | departure |
      | LDS  | --:--   | 20:32     |
      | WDS  | 20:41   | 20:41     |
      | CFD  | 20:49   | 20:52     |
      | NOR  | 20:57   | 20:57     |
      | WKK  | 21:02   | 21:03     |
      | DRT  | 21:14   | 21:14     |
      | BNY  | 21:21   | --:--     |

  Scenario: Changing calling point stopping times between  and 
    Given a query between "EDB" and "GLC" on "2020-03-21" at "06:55"
    Then I should see a service "G63362" that stops at
      | stop | arrival | departure |
      | EDB  | --:--   | 06:55     |
      | HYM  | 07:00   | 07:00     |
      | SLA  | 07:04   | 07:04     |
      | KGE  | 07:07   | 07:07     |
      | WTA  | 07:10   | 07:10     |
      | CUH  | 07:13   | 07:14     |
      | KKN  | 07:20   | 07:20     |
      | LVG  | 07:23   | 07:24     |
      | WCL  | 07:27   | 07:27     |
      | ADW  | 07:30   | 07:31     |
      | BRC  | 07:34   | 07:34     |
      | FLD  | 07:38   | 07:38     |
      | SHS  | 07:42   | 07:53     |
      | HTW  | 07:55   | 07:56     |
      | CEA  | 08:00   | 08:00     |
      | CRF  | 08:03   | 08:03     |
      | HLY  | 08:06   | 08:06     |
      | BLH  | 08:10   | 08:10     |
      | UDD  | 08:14   | 08:14     |
      | GLC  | 08:28   | --:--     |
    When I query between "EDB" and "GLC" on "2020-03-28" at "06:55"
    Then I should see a service "G63362" that stops at
      | stop | arrival | departure |
      | EDB  | --:--   | 06:55     |
      | HYM  | 07:00   | 07:00     |
      | SLA  | 07:04   | 07:04     |
      | KGE  | 07:07   | 07:07     |
      | WTA  | 07:10   | 07:10     |
      | CUH  | 07:13   | 07:14     |
      | KKN  | 07:20   | 07:20     |
      | LVG  | 07:23   | 07:24     |
      | WCL  | 07:27   | 07:27     |
      | ADW  | 07:30   | 07:31     |
      | BRC  | 07:34   | 07:34     |
      | FLD  | 07:38   | 07:38     |
      | SHS  | 07:42   | 07:53     |
      | HTW  | 07:55   | 07:56     |
      | CEA  | 08:00   | 08:00     |
      | CRF  | 08:03   | 08:03     |
      | HLY  | 08:06   | 08:06     |
      | BLH  | 08:10   | 08:10     |
      | UDD  | 08:14   | 08:14     |
      | GLC  | 08:28   | --:--     |

  Scenario: Changing calling point stopping times between  and 
    Given a query between "CLJ" and "SRA" on "2020-03-21" at "10:47"
    Then I should see a service "L43134" that stops at
      | stop | arrival | departure |
      | CLJ  | --:--   | 10:47     |
      | IMW  | 10:51   | 10:51     |
      | WBP  | 10:54   | 10:54     |
      | KPA  | 10:57   | 10:57     |
      | SPB  | 10:59   | 10:59     |
      | WIJ  | 11:07   | 11:08     |
      | KNR  | 11:10   | 11:10     |
      | BSP  | 11:12   | 11:12     |
      | BSY  | 11:14   | 11:14     |
      | WHD  | 11:16   | 11:16     |
      | FNY  | 11:17   | 11:17     |
      | HDH  | 11:20   | 11:20     |
      | GPO  | 11:23   | 11:23     |
      | KTW  | 11:25   | 11:25     |
      | CMD  | 11:30   | 11:30     |
      | CIR  | 11:33   | 11:33     |
      | HHY  | 11:35   | 11:36     |
      | CNN  | 11:38   | 11:38     |
      | DLK  | 11:40   | 11:40     |
      | HKC  | 11:42   | 11:42     |
      | HMN  | 11:44   | 11:44     |
      | HKW  | 11:46   | 11:46     |
      | SRA  | 11:51   | --:--     |
    When I query between "CLJ" and "WIJ" on "2020-03-28" at "10:47"
    Then I should see a service "L43134" that stops at
      | stop | arrival | departure |
      | CLJ  | --:--   | 10:47     |
      | IMW  | 10:51   | 10:51     |
      | WBP  | 10:54   | 10:54     |
      | KPA  | 10:57   | 10:57     |
      | SPB  | 10:59   | 10:59     |
      | WIJ  | 11:12   | --:--     |

  Scenario: Changing calling point stopping times between  and 
    Given a query between "CLJ" and "SRA" on "2020-03-21" at "12:02"
    Then I should see a service "L43154" that stops at
      | stop | arrival | departure |
      | CLJ  | --:--   | 12:02     |
      | IMW  | 12:06   | 12:06     |
      | WBP  | 12:09   | 12:09     |
      | KPA  | 12:12   | 12:12     |
      | SPB  | 12:14   | 12:14     |
      | WIJ  | 12:22   | 12:23     |
      | KNR  | 12:25   | 12:25     |
      | BSP  | 12:27   | 12:27     |
      | BSY  | 12:29   | 12:29     |
      | WHD  | 12:31   | 12:31     |
      | FNY  | 12:32   | 12:32     |
      | HDH  | 12:35   | 12:35     |
      | GPO  | 12:37   | 12:37     |
      | KTW  | 12:39   | 12:39     |
      | CMD  | 12:44   | 12:44     |
      | CIR  | 12:47   | 12:47     |
      | HHY  | 12:49   | 12:49     |
      | CNN  | 12:51   | 12:51     |
      | DLK  | 12:53   | 12:53     |
      | HKC  | 12:55   | 12:55     |
      | HMN  | 12:57   | 12:57     |
      | HKW  | 13:00   | 13:00     |
      | SRA  | 13:06   | --:--     |
    When I query between "CLJ" and "WIJ" on "2020-03-28" at "12:02"
    Then I should see a service "L43154" that stops at
      | stop | arrival | departure |
      | CLJ  | --:--   | 12:02     |
      | IMW  | 12:06   | 12:06     |
      | WBP  | 12:09   | 12:09     |
      | KPA  | 12:12   | 12:12     |
      | SPB  | 12:14   | 12:14     |
      | WIJ  | 12:27   | --:--     |

