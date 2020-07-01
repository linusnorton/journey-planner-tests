@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between WYB and WAT
    Given a query between "WYB" and "WAT" on "2020-07-25" at "15:03"
    Then I should see a service "W19300" that stops at
      | stop | arrival | departure |
      | WYB  | --:--   | 15:03     |
      | ASN  | 15:07   | 15:07     |
      | CHY  | 15:10   | 15:10     |
      | VIR  | 15:15   | 15:24     |
      | EGH  | 15:27   | 15:27     |
      | SNS  | 15:32   | 15:33     |
      | AFS  | 15:36   | 15:36     |
      | FEL  | 15:40   | 15:41     |
      | HOU  | 15:46   | 15:46     |
      | ISL  | 15:49   | 15:49     |
      | SYL  | 15:51   | 15:51     |
      | BFD  | 15:53   | 15:54     |
      | KWB  | 15:56   | 15:56     |
      | CHK  | 15:59   | 15:59     |
      | BNI  | 16:01   | 16:01     |
      | BNS  | 16:04   | 16:04     |
      | PUT  | 16:07   | 16:07     |
      | WNT  | 16:10   | 16:10     |
      | CLJ  | 16:13   | 16:13     |
      | QRB  | 16:16   | 16:16     |
      | VXH  | 16:19   | 16:20     |
      | WAT  | 16:26   | --:--     |
    When I query between "HOU" and "WAT" on "2020-08-01" at "15:46"
    Then I should see a service "W19300" that stops at
      | stop | arrival | departure |
      | HOU  | --:--   | 15:46     |
      | ISL  | 15:49   | 15:49     |
      | SYL  | 15:51   | 15:51     |
      | BFD  | 15:53   | 15:54     |
      | KWB  | 15:56   | 15:56     |
      | CHK  | 15:59   | 15:59     |
      | BNI  | 16:01   | 16:01     |
      | BNS  | 16:04   | 16:04     |
      | PUT  | 16:07   | 16:07     |
      | WNT  | 16:10   | 16:10     |
      | CLJ  | 16:13   | 16:13     |
      | QRB  | 16:16   | 16:16     |
      | VXH  | 16:19   | 16:20     |
      | WAT  | 16:26   | --:--     |

  Scenario: Changing calling point stopping times between WYB and WAT
    Given a query between "WYB" and "WAT" on "2020-07-25" at "17:33"
    Then I should see a service "W19320" that stops at
      | stop | arrival | departure |
      | WYB  | --:--   | 17:33     |
      | ASN  | 17:37   | 17:37     |
      | CHY  | 17:40   | 17:40     |
      | VIR  | 17:45   | 17:54     |
      | EGH  | 17:57   | 17:57     |
      | SNS  | 18:02   | 18:03     |
      | AFS  | 18:06   | 18:06     |
      | FEL  | 18:10   | 18:11     |
      | HOU  | 18:16   | 18:16     |
      | ISL  | 18:19   | 18:19     |
      | SYL  | 18:21   | 18:21     |
      | BFD  | 18:23   | 18:24     |
      | KWB  | 18:26   | 18:26     |
      | CHK  | 18:29   | 18:29     |
      | BNI  | 18:31   | 18:31     |
      | BNS  | 18:34   | 18:34     |
      | PUT  | 18:37   | 18:37     |
      | WNT  | 18:40   | 18:40     |
      | CLJ  | 18:43   | 18:43     |
      | QRB  | 18:46   | 18:46     |
      | VXH  | 18:49   | 18:50     |
      | WAT  | 18:56   | --:--     |
    When I query between "HOU" and "WAT" on "2020-08-01" at "18:16"
    Then I should see a service "W19320" that stops at
      | stop | arrival | departure |
      | HOU  | --:--   | 18:16     |
      | ISL  | 18:19   | 18:19     |
      | SYL  | 18:21   | 18:21     |
      | BFD  | 18:23   | 18:24     |
      | KWB  | 18:26   | 18:26     |
      | CHK  | 18:29   | 18:29     |
      | BNI  | 18:31   | 18:31     |
      | BNS  | 18:34   | 18:34     |
      | PUT  | 18:37   | 18:37     |
      | WNT  | 18:40   | 18:40     |
      | CLJ  | 18:43   | 18:43     |
      | QRB  | 18:46   | 18:46     |
      | VXH  | 18:49   | 18:50     |
      | WAT  | 18:56   | --:--     |

  Scenario: Changing calling point stopping times between HAF and PAD
    Given a query between "HAF" and "PAD" on "2020-07-25" at "23:57"
    Then I should see a service "P62833" that stops at
      | stop | arrival | departure |
      | HAF  | --:--   | 23:57     |
      | HXX  | 00:01   | 00:03     |
      | HAY  | 00:08   | 00:09     |
      | STL  | 00:12   | 00:13     |
      | EAL  | 00:17   | 00:18     |
      | PAD  | 00:28   | --:--     |
    When I query between "HAF" and "PAD" on "2020-08-01" at "23:57"
    Then I should see a service "P62833" that stops at
      | stop | arrival | departure |
      | HAF  | --:--   | 23:57     |
      | HXX  | 00:01   | 00:03     |
      | HAY  | 00:08   | 00:09     |
      | STL  | 00:12   | 00:13     |
      | EAL  | 00:17   | 00:18     |
      | PAD  | 00:28   | --:--     |

  Scenario: Changing calling point stopping times between EKL and GLC
    Given a query between "EKL" and "GLC" on "2020-07-19" at "20:26"
    Then I should see a service "Y15691" that stops at
      | stop | arrival | departure |
      | EKL  | --:--   | 20:26     |
      | HMY  | 20:29   | 20:30     |
      | BUS  | 20:35   | 20:35     |
      | CKS  | 20:38   | 20:38     |
      | GFN  | 20:41   | 20:42     |
      | THB  | 20:44   | 20:44     |
      | PWW  | 20:47   | 20:47     |
      | CMY  | 20:50   | 20:50     |
      | GLC  | 20:56   | --:--     |
    When I query between "EKL" and "GLC" on "2020-07-26" at "20:26"
    Then I should see a service "Y15691" that stops at
      | stop | arrival | departure |
      | EKL  | --:--   | 20:26     |
      | HMY  | 20:29   | 20:30     |
      | THT  | 20:33   | 20:33     |
      | BUS  | 20:36   | 20:36     |
      | CKS  | 20:39   | 20:39     |
      | GFN  | 20:42   | 20:42     |
      | THB  | 20:44   | 20:44     |
      | PWW  | 20:47   | 20:47     |
      | CMY  | 20:50   | 20:50     |
      | GLC  | 20:56   | --:--     |

  Scenario: Changing calling point stopping times between RDG and WAT
    Given a query between "RDG" and "WAT" on "2020-07-25" at "15:42"
    Then I should see a service "W17526" that stops at
      | stop | arrival | departure |
      | RDG  | --:--   | 15:42     |
      | EAR  | 15:47   | 15:47     |
      | WTI  | 15:49   | 15:49     |
      | WNS  | 15:51   | 15:51     |
      | WKM  | 15:55   | 15:56     |
      | BCE  | 16:02   | 16:02     |
      | MAO  | 16:05   | 16:05     |
      | ACT  | 16:09   | 16:10     |
      | SNG  | 16:13   | 16:13     |
      | LNG  | 16:16   | 16:16     |
      | VIR  | 16:20   | 16:20     |
      | EGH  | 16:23   | 16:24     |
      | SNS  | 16:28   | 16:29     |
      | FEL  | 16:35   | 16:35     |
      | TWI  | 16:40   | 16:41     |
      | RMD  | 16:45   | 16:45     |
      | CLJ  | 16:53   | 16:54     |
      | WAT  | 17:04   | --:--     |
    When I query between "RDG" and "SNS" on "2020-08-01" at "15:42"
    Then I should see a service "W17526" that stops at
      | stop | arrival | departure |
      | RDG  | --:--   | 15:42     |
      | EAR  | 15:47   | 15:47     |
      | WTI  | 15:49   | 15:49     |
      | WNS  | 15:51   | 15:51     |
      | WKM  | 15:55   | 15:56     |
      | BCE  | 16:02   | 16:02     |
      | MAO  | 16:05   | 16:05     |
      | ACT  | 16:09   | 16:10     |
      | SNG  | 16:13   | 16:13     |
      | LNG  | 16:16   | 16:16     |
      | VIR  | 16:20   | 16:20     |
      | EGH  | 16:23   | 16:24     |
      | SNS  | 16:28   | --:--     |

