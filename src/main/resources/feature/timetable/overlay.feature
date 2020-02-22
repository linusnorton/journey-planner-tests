Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times
    Given a query between "WAT" and "WNR" on "2020-04-05" at "13:44"
    Then I should see a service "W14524" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 13:44     |
      | VXH  | 13:48   | 13:48     |
      | QRB  | 13:51   | 13:51     |
      | CLJ  | 13:54   | 13:54     |
      | WNT  | 13:57   | 13:57     |
      | PUT  | 13:59   | 14:00     |
      | BNS  | 14:03   | 14:03     |
      | MTL  | 14:05   | 14:05     |
      | NSH  | 14:07   | 14:07     |
      | RMD  | 14:09   | 14:10     |
      | SMG  | 14:12   | 14:12     |
      | TWI  | 14:14   | 14:15     |
      | WTN  | 14:18   | 14:18     |
      | FEL  | 14:22   | 14:22     |
      | AFS  | 14:26   | 14:26     |
      | SNS  | 14:30   | 14:30     |
      | WRY  | 14:34   | 14:34     |
      | SNY  | 14:37   | 14:37     |
      | DAT  | 14:40   | 14:40     |
      | WNR  | 14:44   | --:--     |
    When I query between "WAT" and "HOU" on "2020-04-12" at "13:44"
    Then I should see a service "W14524" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 13:44     |
      | VXH  | 13:48   | 13:48     |
      | QRB  | 13:51   | 13:51     |
      | CLJ  | 13:54   | 13:54     |
      | WNT  | 13:57   | 13:57     |
      | PUT  | 13:59   | 14:00     |
      | BNS  | 14:03   | 14:03     |
      | MTL  | 14:05   | 14:05     |
      | NSH  | 14:07   | 14:07     |
      | RMD  | 14:09   | 14:10     |
      | SMG  | 14:13   | 14:13     |
      | TWI  | 14:15   | 14:15     |
      | WTN  | 14:18   | 14:19     |
      | HOU  | 14:23   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "BDM" and "SUO" on "2020-03-21" at "06:02"
    Then I should see a service "W41023" that stops at
      | stop | arrival | departure |
      | BDM  | --:--   | 06:02     |
      | LUT  | 06:19   | 06:22     |
      | LTN  | 06:24   | 06:25     |
      | HPD  | 06:30   | 06:30     |
      | SAC  | 06:35   | 06:37     |
      | RDT  | 06:42   | 06:42     |
      | ELS  | 06:46   | 06:46     |
      | MIL  | 06:49   | 06:50     |
      | HEN  | 06:53   | 06:53     |
      | CRI  | 06:57   | 06:58     |
      | WHP  | 07:00   | 07:01     |
      | KTN  | 07:06   | 07:06     |
      | STP  | 07:12   | 07:12     |
      | ZFD  | 07:16   | 07:17     |
      | BFR  | 07:21   | 07:21     |
      | EPH  | 07:25   | 07:25     |
      | LGJ  | 07:30   | 07:30     |
      | HNH  | 07:34   | 07:35     |
      | TUH  | 07:39   | 07:40     |
      | STE  | 07:44   | 07:44     |
      | TOO  | 07:48   | 07:49     |
      | HYR  | 07:52   | 07:52     |
      | WIM  | 07:54   | 07:55     |
      | WBO  | 07:58   | 07:58     |
      | SMO  | 08:00   | 08:00     |
      | MDS  | 08:03   | 08:03     |
      | SIH  | 08:05   | 08:05     |
      | SUC  | 08:07   | 08:07     |
      | WSU  | 08:10   | 08:10     |
      | SUO  | 08:14   | --:--     |
    When I query between "BDM" and "SUO" on "2020-03-28" at "06:02"
    Then I should see a service "W41023" that stops at
      | stop | arrival | departure |
      | BDM  | --:--   | 06:02     |
      | LUT  | 06:19   | 06:22     |
      | LTN  | 06:24   | 06:25     |
      | HPD  | 06:30   | 06:30     |
      | SAC  | 06:35   | 06:37     |
      | RDT  | 06:42   | 06:42     |
      | ELS  | 06:46   | 06:46     |
      | MIL  | 06:49   | 06:50     |
      | HEN  | 06:53   | 06:53     |
      | CRI  | 06:57   | 06:58     |
      | WHP  | 07:00   | 07:01     |
      | KTN  | 07:06   | 07:06     |
      | STP  | 07:12   | 07:12     |
      | ZFD  | 07:16   | 07:17     |
      | BFR  | 07:21   | 07:21     |
      | EPH  | 07:25   | 07:25     |
      | LGJ  | 07:30   | 07:30     |
      | HNH  | 07:34   | 07:35     |
      | TUH  | 07:39   | 07:40     |
      | STE  | 07:44   | 07:44     |
      | TOO  | 07:48   | 07:49     |
      | HYR  | 07:52   | 07:52     |
      | WIM  | 07:54   | 07:55     |
      | WBO  | 07:58   | 07:58     |
      | SMO  | 08:00   | 08:00     |
      | MDS  | 08:03   | 08:03     |
      | SIH  | 08:05   | 08:05     |
      | SUC  | 08:07   | 08:07     |
      | WSU  | 08:10   | 08:10     |
      | SUO  | 08:14   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "EDB" and "GLC" on "2020-04-18" at "06:22"
    Then I should see a service "C76984" that stops at
      | stop | arrival | departure |
      | EDB  | --:--   | 06:22     |
      | MTH  | 07:05   | 07:06     |
      | GLC  | 07:22   | --:--     |
    When I query between "EDB" and "MTH" on "2020-04-25" at "06:22"
    Then I should see a service "C76984" that stops at
      | stop | arrival | departure |
      | EDB  | --:--   | 06:22     |
      | MTH  | 07:05   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "BRI" and "PAD" on "2020-03-16" at "11:00"
    Then I should see a service "Y94021" that stops at
      | stop | arrival | departure |
      | BRI  | --:--   | 11:00     |
      | BTH  | 11:11   | 11:13     |
      | CPM  | 11:24   | 11:26     |
      | SWI  | 11:38   | 11:40     |
      | DID  | 11:56   | 11:57     |
      | RDG  | 12:09   | 12:12     |
      | PAD  | 12:37   | --:--     |
    When I query between "BRI" and "PAD" on "2020-03-23" at "11:00"
    Then I should see a service "Y94021" that stops at
      | stop | arrival | departure |
      | BRI  | --:--   | 11:00     |
      | BTH  | 11:11   | 11:13     |
      | CPM  | 11:24   | 11:26     |
      | SWI  | 11:38   | 11:40     |
      | DID  | 11:56   | 11:57     |
      | RDG  | 12:09   | 12:12     |
      | PAD  | 12:37   | --:--     |

  Scenario: Changing calling point stopping times
    Given a query between "CDF" and "PAD" on "2020-04-06" at "13:53"
    Then I should see a service "Y94425" that stops at
      | stop | arrival | departure |
      | CDF  | --:--   | 13:53     |
      | NWP  | 14:03   | 14:05     |
      | BPW  | 14:25   | 14:26     |
      | SWI  | 14:48   | 14:50     |
      | RDG  | 15:14   | 15:17     |
      | PAD  | 15:41   | --:--     |
    When I query between "BPW" and "PAD" on "2020-04-13" at "13:53"
    Then I should see a service "Y94425" that stops at
      | stop | arrival | departure |
      | BPW  | --:--   | 14:30     |
      | SWI  | 14:52   | 14:53     |
      | RDG  | 15:19   | 15:20     |
      | PAD  | 15:43   | --:--     |

