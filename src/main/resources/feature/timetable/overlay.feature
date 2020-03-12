@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between HWV and PAD
    Given a query between "HWV" and "PAD" on "2020-04-05" at "22:27"
    Then I should see a service "P59685" that stops at
      | stop | arrival | departure |
      | HWV  | --:--   | 22:27     |
      | HXX  | 22:31   | 22:32     |
      | PAD  | 22:49   | --:--     |
    When I query between "HWV" and "PAD" on "2020-04-12" at "22:27"
    Then I should see a service "P59685" that stops at
      | stop | arrival | departure |
      | HWV  | --:--   | 22:27     |
      | HXX  | 22:31   | 22:32     |
      | PAD  | 22:48   | --:--     |

  Scenario: Changing calling point stopping times between CMN and PAD
    Given a query between "CMN" and "PAD" on "2020-04-05" at "16:22"
    Then I should see a service "L97509" that stops at
      | stop | arrival | departure |
      | CMN  | --:--   | 16:22     |
      | FYS  | 16:32   | 16:33     |
      | KWL  | 16:39   | 16:40     |
      | PBY  | 16:46   | 16:47     |
      | LLE  | 16:54   | 16:55     |
      | SWA  | 17:14   | 17:22     |
      | NTH  | 17:33   | 17:34     |
      | PTA  | 17:40   | 17:40     |
      | BGN  | 17:54   | 17:55     |
      | CDF  | 18:16   | 18:20     |
      | NWP  | 18:29   | 18:33     |
      | BPW  | 18:54   | 18:58     |
      | SWI  | 19:21   | 19:23     |
      | RDG  | 19:48   | 19:50     |
      | PAD  | 20:14   | --:--     |
    When I query between "CMN" and "PAD" on "2020-04-12" at "16:22"
    Then I should see a service "L97509" that stops at
      | stop | arrival | departure |
      | CMN  | --:--   | 16:22     |
      | FYS  | 16:32   | 16:33     |
      | KWL  | 16:39   | 16:40     |
      | PBY  | 16:46   | 16:47     |
      | LLE  | 16:54   | 16:55     |
      | SWA  | 17:14   | 17:22     |
      | NTH  | 17:33   | 17:34     |
      | PTA  | 17:40   | 17:40     |
      | BGN  | 17:54   | 17:55     |
      | CDF  | 18:16   | 18:20     |
      | NWP  | 18:29   | 18:33     |
      | GCR  | 19:15   | 19:17     |
      | SHU  | 19:29   | 19:30     |
      | STD  | 19:34   | 19:35     |
      | KEM  | 19:50   | 19:50     |
      | SWI  | 20:04   | 20:06     |
      | DID  | 20:21   | 20:22     |
      | RDG  | 20:35   | 20:37     |
      | PAD  | 21:06   | --:--     |

  Scenario: Changing calling point stopping times between NRW and LST
    Given a query between "NRW" and "LST" on "2020-04-05" at "15:00"
    Then I should see a service "L41959" that stops at
      | stop | arrival | departure |
      | NRW  | --:--   | 15:00     |
      | DIS  | 15:17   | 15:17     |
      | SMK  | 15:29   | 15:29     |
      | IPS  | 15:41   | 15:43     |
      | MNG  | 15:52   | 15:53     |
      | COL  | 16:02   | 16:03     |
      | SRA  | 16:44   | --:--     |
      | LST  | 16:55   | --:--     |
    When I query between "NRW" and "IPS" on "2020-04-12" at "15:00"
    Then I should see a service "L41959" that stops at
      | stop | arrival | departure |
      | NRW  | --:--   | 15:00     |
      | DIS  | 15:17   | 15:17     |
      | SMK  | 15:29   | 15:29     |
      | IPS  | 15:41   | --:--     |

  Scenario: Changing calling point stopping times between CRE and COV
    Given a query between "CRE" and "COV" on "2020-04-05" at "12:12"
    Then I should see a service "P80347" that stops at
      | stop | arrival | departure |
      | CRE  | --:--   | 12:12     |
      | ASG  | 12:20   | 12:20     |
      | KDG  | 12:24   | 12:25     |
      | SOT  | 12:34   | 12:34     |
      | SNE  | 12:42   | 12:43     |
      | STA  | 12:53   | 12:53     |
      | WVH  | 13:07   | 13:08     |
      | BHM  | 13:24   | 13:35     |
      | ADD  | 13:40   | 13:40     |
      | SCF  | 13:43   | 13:43     |
      | LEH  | 13:46   | 13:46     |
      | MGN  | 13:49   | 13:49     |
      | BHI  | 13:52   | 13:52     |
      | THL  | 14:00   | 14:00     |
      | COV  | 14:05   | --:--     |
    When I query between "CRE" and "STA" on "2020-04-12" at "12:12"
    Then I should see a service "P80347" that stops at
      | stop | arrival | departure |
      | CRE  | --:--   | 12:12     |
      | ASG  | 12:20   | 12:20     |
      | KDG  | 12:24   | 12:25     |
      | SOT  | 12:34   | 12:34     |
      | SNE  | 12:42   | 12:43     |
      | STA  | 12:53   | --:--     |

  Scenario: Changing calling point stopping times between GLD and WAT
    Given a query between "GLD" and "WAT" on "2020-04-05" at "18:24"
    Then I should see a service "W17931" that stops at
      | stop | arrival | departure |
      | GLD  | --:--   | 18:24     |
      | WPL  | 18:30   | 18:30     |
      | WOK  | 18:34   | 18:36     |
      | WBY  | 18:40   | 18:40     |
      | BFN  | 18:43   | 18:43     |
      | WYB  | 18:46   | 18:46     |
      | WAL  | 18:50   | 18:50     |
      | HER  | 18:52   | 18:52     |
      | ESH  | 18:55   | 18:55     |
      | SUR  | 18:59   | 19:00     |
      | WIM  | 19:07   | 19:08     |
      | EAD  | 19:11   | 19:11     |
      | CLJ  | 19:15   | 19:15     |
      | VXH  | 19:20   | 19:20     |
      | WAT  | 19:25   | --:--     |
    When I query between "WOK" and "WAT" on "2020-04-12" at "18:36"
    Then I should see a service "W17931" that stops at
      | stop | arrival | departure |
      | WOK  | --:--   | 18:36     |
      | WBY  | 18:40   | 18:40     |
      | BFN  | 18:43   | 18:43     |
      | WYB  | 18:46   | 18:46     |
      | WAL  | 18:50   | 18:50     |
      | HER  | 18:52   | 18:52     |
      | ESH  | 18:55   | 18:55     |
      | SUR  | 18:59   | 19:00     |
      | WIM  | 19:07   | 19:08     |
      | EAD  | 19:11   | 19:11     |
      | CLJ  | 19:15   | 19:15     |
      | VXH  | 19:20   | 19:20     |
      | WAT  | 19:25   | --:--     |

