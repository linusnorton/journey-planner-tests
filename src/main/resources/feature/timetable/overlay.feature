@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between KMK and GLC
    Given a query between "KMK" and "GLC" on "2020-06-27" at "16:28"
    Then I should see a service "Y12424" that stops at
      | stop | arrival | departure |
      | KMK  | --:--   | 16:28     |
      | KLM  | 16:32   | 16:32     |
      | STT  | 16:37   | 16:37     |
      | DNL  | 16:42   | 16:42     |
      | BRR  | 16:52   | 16:52     |
      | GLC  | 17:05   | --:--     |
    When I query between "KMK" and "GLC" on "2020-07-04" at "16:28"
    Then I should see a service "Y12424" that stops at
      | stop | arrival | departure |
      | KMK  | --:--   | 16:28     |
      | KLM  | 16:32   | 16:32     |
      | STT  | 16:37   | 16:37     |
      | DNL  | 16:42   | 16:42     |
      | BRR  | 16:52   | 16:52     |
      | GLC  | 17:05   | --:--     |

  Scenario: Changing calling point stopping times between DID and RDG
    Given a query between "DID" and "RDG" on "2020-06-30" at "23:22"
    Then I should see a service "L82389" that stops at
      | stop | arrival | departure |
      | DID  | --:--   | 23:22     |
      | CHO  | 23:28   | 23:28     |
      | GOR  | 23:32   | 23:32     |
      | PAN  | 23:36   | 23:36     |
      | TLH  | 23:40   | 23:40     |
      | RDG  | 23:46   | --:--     |
    When I query between "DID" and "RDG" on "2020-07-07" at "23:22"
    Then I should see a service "L82389" that stops at
      | stop | arrival | departure |
      | DID  | --:--   | 23:22     |
      | CHO  | 23:28   | 23:28     |
      | GOR  | 23:32   | 23:32     |
      | TLH  | 23:38   | 23:40     |
      | RDG  | 23:46   | --:--     |

  Scenario: Changing calling point stopping times between BSK and WAT
    Given a query between "BSK" and "WAT" on "2020-06-28" at "14:50"
    Then I should see a service "W18690" that stops at
      | stop | arrival | departure |
      | BSK  | --:--   | 14:50     |
      | FLE  | 15:00   | 15:02     |
      | FNB  | 15:07   | 15:08     |
      | BKO  | 15:15   | 15:15     |
      | WOK  | 15:20   | 15:28     |
      | WYB  | 15:34   | 15:34     |
      | WAL  | 15:38   | 15:38     |
      | SUR  | 15:45   | 15:45     |
      | WIM  | 15:52   | 15:53     |
      | CLJ  | 15:58   | 15:59     |
      | WAT  | 16:09   | --:--     |
    When I query between "BSK" and "WAT" on "2020-07-05" at "14:50"
    Then I should see a service "W18690" that stops at
      | stop | arrival | departure |
      | BSK  | --:--   | 14:50     |
      | FLE  | 15:00   | 15:02     |
      | FNB  | 15:07   | 15:08     |
      | BKO  | 15:15   | 15:15     |
      | WOK  | 15:20   | 15:28     |
      | WYB  | 15:34   | 15:34     |
      | WAL  | 15:38   | 15:38     |
      | SUR  | 15:45   | 15:45     |
      | WIM  | 15:52   | 15:53     |
      | CLJ  | 15:58   | 15:59     |
      | WAT  | 16:09   | --:--     |

  Scenario: Changing calling point stopping times between GLC and CAR
    Given a query between "GLC" and "CAR" on "2020-06-27" at "22:13"
    Then I should see a service "Y13214" that stops at
      | stop | arrival | departure |
      | GLC  | --:--   | 22:13     |
      | BRR  | 22:26   | 22:26     |
      | DNL  | 22:38   | 22:38     |
      | STT  | 22:42   | 22:42     |
      | KLM  | 22:47   | 22:47     |
      | KMK  | 22:52   | 22:53     |
      | AUK  | 23:09   | 23:09     |
      | NCK  | 23:18   | 23:18     |
      | KRK  | 23:26   | 23:26     |
      | SQH  | 23:31   | 23:31     |
      | DMF  | 23:58   | 23:59     |
      | ANN  | 00:14   | 00:14     |
      | GEA  | 00:23   | 00:23     |
      | CAR  | 00:36   | --:--     |
    When I query between "GLC" and "KMK" on "2020-07-04" at "22:13"
    Then I should see a service "Y13214" that stops at
      | stop | arrival | departure |
      | GLC  | --:--   | 22:13     |
      | BRR  | 22:26   | 22:26     |
      | DNL  | 22:38   | 22:38     |
      | STT  | 22:42   | 22:42     |
      | KLM  | 22:47   | 22:47     |
      | KMK  | 22:52   | --:--     |

  Scenario: Changing calling point stopping times between BSK and WAT
    Given a query between "BSK" and "WAT" on "2020-06-28" at "12:16"
    Then I should see a service "W13303" that stops at
      | stop | arrival | departure |
      | BSK  | --:--   | 12:16     |
      | HOK  | 12:23   | 12:23     |
      | WNF  | 12:27   | 12:27     |
      | FLE  | 12:32   | 12:32     |
      | FNB  | 12:37   | 12:38     |
      | BKO  | 12:45   | 12:45     |
      | WOK  | 12:50   | 12:58     |
      | SUR  | 13:09   | 13:10     |
      | WIM  | 13:17   | 13:17     |
      | CLJ  | 13:23   | 13:24     |
      | WAT  | 13:34   | --:--     |
    When I query between "BSK" and "WAT" on "2020-07-05" at "12:16"
    Then I should see a service "W13303" that stops at
      | stop | arrival | departure |
      | BSK  | --:--   | 12:16     |
      | HOK  | 12:23   | 12:23     |
      | WNF  | 12:27   | 12:27     |
      | FLE  | 12:32   | 12:32     |
      | FNB  | 12:37   | 12:38     |
      | BKO  | 12:45   | 12:45     |
      | WOK  | 12:50   | 12:58     |
      | SUR  | 13:09   | 13:10     |
      | WIM  | 13:17   | 13:17     |
      | CLJ  | 13:23   | 13:24     |
      | WAT  | 13:34   | --:--     |

