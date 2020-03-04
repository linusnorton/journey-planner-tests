@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between PAD and OXF
    Given a query between "PAD" and "OXF" on "2020-03-28" at "00:30"
    Then I should see a service "Y94228" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 00:30     |
      | SLO  | 00:48   | 00:48     |
      | MAI  | 00:55   | 00:56     |
      | TWY  | 01:03   | 01:04     |
      | RDG  | 01:11   | 01:13     |
      | DID  | 01:28   | 01:31     |
      | OXF  | 01:44   | --:--     |
    When I query between "PAD" and "OXF" on "2020-04-04" at "00:30"
    Then I should see a service "Y94228" that stops at
      | stop | arrival | departure |
      | PAD  | --:--   | 00:30     |
      | SLO  | 00:48   | 00:48     |
      | MAI  | 00:55   | 00:56     |
      | TWY  | 01:03   | 01:04     |
      | RDG  | 01:11   | 01:13     |
      | DID  | 01:28   | 01:31     |
      | OXF  | 01:44   | --:--     |

  Scenario: Changing calling point stopping times between BOG and VIC
    Given a query between "BOG" and "VIC" on "2020-03-28" at "13:29"
    Then I should see a service "G46168" that stops at
      | stop | arrival | departure |
      | BOG  | --:--   | 13:29     |
      | BAA  | 13:35   | 13:36     |
      | FOD  | 13:41   | 13:41     |
      | ARU  | 13:46   | 13:46     |
      | PUL  | 13:55   | 13:55     |
      | BIG  | 14:02   | 14:02     |
      | HRH  | 14:11   | 14:20     |
      | CRW  | 14:28   | 14:29     |
      | TBD  | 14:33   | 14:34     |
      | GTW  | 14:38   | 14:39     |
      | ECR  | 14:54   | 14:54     |
      | CLJ  | 15:03   | 15:04     |
      | VIC  | 15:11   | --:--     |
    When I query between "BOG" and "VIC" on "2020-04-04" at "13:29"
    Then I should see a service "G46168" that stops at
      | stop | arrival | departure |
      | BOG  | --:--   | 13:29     |
      | BAA  | 13:35   | 13:36     |
      | FOD  | 13:41   | 13:41     |
      | ARU  | 13:46   | 13:46     |
      | PUL  | 13:55   | 13:55     |
      | BIG  | 14:02   | 14:02     |
      | HRH  | 14:11   | 14:20     |
      | CRW  | 14:28   | 14:29     |
      | TBD  | 14:33   | 14:34     |
      | GTW  | 14:39   | 14:40     |
      | ECR  | 14:54   | 14:55     |
      | CLJ  | 15:04   | 15:04     |
      | VIC  | 15:11   | --:--     |

  Scenario: Changing calling point stopping times between GTW and RDG
    Given a query between "GTW" and "RDG" on "2020-03-28" at "15:00"
    Then I should see a service "Y94589" that stops at
      | stop | arrival | departure |
      | GTW  | --:--   | 15:00     |
      | RDH  | 15:09   | 15:14     |
      | REI  | 15:18   | 15:19     |
      | DPD  | 15:26   | 15:26     |
      | GLD  | 15:43   | 15:45     |
      | NCM  | 15:57   | 15:58     |
      | BAW  | 16:04   | 16:04     |
      | WKM  | 16:12   | 16:13     |
      | RDG  | 16:22   | --:--     |
    When I query between "GTW" and "RDG" on "2020-04-04" at "15:00"
    Then I should see a service "Y94589" that stops at
      | stop | arrival | departure |
      | GTW  | --:--   | 15:00     |
      | RDH  | 15:09   | 15:14     |
      | REI  | 15:18   | 15:19     |
      | DPD  | 15:26   | 15:26     |
      | GLD  | 15:43   | 15:45     |
      | NCM  | 15:57   | 15:58     |
      | BAW  | 16:04   | 16:04     |
      | WKM  | 16:12   | 16:13     |
      | RDG  | 16:22   | --:--     |

  Scenario: Changing calling point stopping times between ROM and SAL
    Given a query between "ROM" and "SAL" on "2020-03-28" at "13:07"
    Then I should see a service "W19280" that stops at
      | stop | arrival | departure |
      | ROM  | --:--   | 13:07     |
      | CFR  | 13:14   | 13:14     |
      | ESL  | 13:20   | 13:21     |
      | SOA  | 13:24   | 13:25     |
      | SWG  | 13:27   | 13:27     |
      | SDN  | 13:30   | 13:30     |
      | SOU  | 13:36   | 13:37     |
      | MBK  | 13:40   | 13:40     |
      | RDB  | 13:43   | 13:43     |
      | ROM  | 13:51   | 13:51     |
      | DBG  | 13:56   | 13:56     |
      | DEN  | 14:02   | 14:02     |
      | SAL  | 14:15   | --:--     |
    When I query between "ROM" and "SAL" on "2020-04-04" at "13:07"
    Then I should see a service "W19280" that stops at
      | stop | arrival | departure |
      | ROM  | --:--   | 13:07     |
      | CFR  | 13:14   | 13:14     |
      | ESL  | 13:20   | 13:21     |
      | SOA  | 13:24   | 13:25     |
      | SWG  | 13:27   | 13:27     |
      | SDN  | 13:30   | 13:30     |
      | SOU  | 13:36   | 13:37     |
      | MBK  | 13:40   | 13:40     |
      | RDB  | 13:43   | 13:43     |
      | ROM  | 13:51   | 13:51     |
      | DBG  | 13:56   | 13:56     |
      | DEN  | 14:02   | 14:02     |
      | SAL  | 14:15   | --:--     |

  Scenario: Changing calling point stopping times between PMS and SOU
    Given a query between "PMS" and "SOU" on "2020-03-28" at "08:38"
    Then I should see a service "W12104" that stops at
      | stop | arrival | departure |
      | PMS  | --:--   | 08:38     |
      | FTN  | 08:41   | 08:42     |
      | HLS  | 08:46   | 08:46     |
      | CSA  | 08:51   | 08:51     |
      | PTC  | 08:56   | 08:56     |
      | FRM  | 09:01   | 09:03     |
      | SNW  | 09:09   | 09:09     |
      | BUO  | 09:13   | 09:13     |
      | HME  | 09:16   | 09:16     |
      | NTL  | 09:18   | 09:18     |
      | SHO  | 09:22   | 09:22     |
      | WLS  | 09:24   | 09:24     |
      | BTE  | 09:28   | 09:28     |
      | SDN  | 09:30   | 09:31     |
      | SOU  | 09:38   | --:--     |
    When I query between "PMS" and "SOU" on "2020-04-04" at "08:38"
    Then I should see a service "W12104" that stops at
      | stop | arrival | departure |
      | PMS  | --:--   | 08:38     |
      | FTN  | 08:41   | 08:42     |
      | HLS  | 08:46   | 08:46     |
      | CSA  | 08:51   | 08:51     |
      | PTC  | 08:56   | 08:56     |
      | FRM  | 09:01   | 09:03     |
      | SNW  | 09:09   | 09:09     |
      | BUO  | 09:13   | 09:13     |
      | HME  | 09:16   | 09:16     |
      | NTL  | 09:18   | 09:18     |
      | SHO  | 09:22   | 09:22     |
      | WLS  | 09:24   | 09:24     |
      | BTE  | 09:28   | 09:28     |
      | SDN  | 09:30   | 09:31     |
      | SOU  | 09:38   | --:--     |

