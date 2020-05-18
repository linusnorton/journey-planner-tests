@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between WAT and RDG
    Given a query between "WAT" and "RDG" on "2020-06-09" at "19:05"
    Then I should see a service "W17615" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 19:05     |
      | VXH  | 19:09   | 19:09     |
      | CLJ  | 19:14   | 19:15     |
      | RMD  | 19:23   | 19:23     |
      | TWI  | 19:27   | 19:27     |
      | FEL  | 19:33   | 19:33     |
      | AFS  | 19:37   | 19:37     |
      | SNS  | 19:41   | 19:41     |
      | EGH  | 19:46   | 19:46     |
      | VIR  | 19:50   | 19:50     |
      | SNG  | 19:55   | 19:55     |
      | ACT  | 19:59   | 20:00     |
      | MAO  | 20:04   | 20:04     |
      | BCE  | 20:07   | 20:07     |
      | WKM  | 20:16   | 20:17     |
      | RDG  | 20:26   | --:--     |
    When I query between "WAT" and "RDG" on "2020-06-16" at "19:05"
    Then I should see a service "W17615" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 19:05     |
      | VXH  | 19:09   | 19:09     |
      | CLJ  | 19:14   | 19:15     |
      | RMD  | 19:23   | 19:23     |
      | TWI  | 19:27   | 19:27     |
      | FEL  | 19:33   | 19:33     |
      | AFS  | 19:37   | 19:37     |
      | SNS  | 19:41   | 19:41     |
      | EGH  | 19:46   | 19:46     |
      | VIR  | 19:50   | 19:50     |
      | SNG  | 19:55   | 19:55     |
      | ACT  | 19:59   | 20:00     |
      | MAO  | 20:04   | 20:04     |
      | BCE  | 20:07   | 20:07     |
      | WKM  | 20:16   | 20:17     |
      | RDG  | 20:29   | --:--     |

  Scenario: Changing calling point stopping times between SRY and FST
    Given a query between "SRY" and "FST" on "2020-06-10" at "23:27"
    Then I should see a service "Y38807" that stops at
      | stop | arrival | departure |
      | SRY  | --:--   | 23:27     |
      | TPB  | 23:31   | 23:31     |
      | SOE  | 23:33   | 23:33     |
      | SOC  | 23:36   | 23:36     |
      | WCF  | 23:38   | 23:38     |
      | CHW  | 23:41   | 23:41     |
      | LES  | 23:43   | 23:43     |
      | BEF  | 23:48   | 23:48     |
      | PSE  | 23:51   | 23:51     |
      | BSO  | 23:55   | 23:55     |
      | LAI  | 23:58   | 23:58     |
      | WHR  | 00:03   | 00:03     |
      | UPM  | 00:08   | 00:08     |
      | BKG  | 00:16   | 00:16     |
      | WEH  | 00:21   | 00:21     |
      | LHS  | 00:26   | 00:26     |
      | FST  | 00:32   | --:--     |
    When I query between "SRY" and "FST" on "2020-06-17" at "23:26"
    Then I should see a service "Y38807" that stops at
      | stop | arrival | departure |
      | SRY  | --:--   | 23:26     |
      | TPB  | 23:30   | 23:30     |
      | SOE  | 23:32   | 23:32     |
      | SOC  | 23:35   | 23:35     |
      | WCF  | 23:37   | 23:37     |
      | CHW  | 23:40   | 23:40     |
      | LES  | 23:42   | 23:42     |
      | BEF  | 23:47   | 23:47     |
      | PSE  | 23:50   | 23:51     |
      | BSO  | 23:55   | 23:55     |
      | LAI  | 23:58   | 23:58     |
      | WHR  | 00:03   | 00:03     |
      | UPM  | 00:08   | 00:08     |
      | BKG  | 00:16   | 00:16     |
      | WEH  | 00:21   | 00:21     |
      | LHS  | 00:26   | 00:26     |
      | FST  | 00:37   | --:--     |

  Scenario: Changing calling point stopping times between WAT and RDG
    Given a query between "WAT" and "RDG" on "2020-06-09" at "15:50"
    Then I should see a service "W17517" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 15:50     |
      | CLJ  | 15:57   | 15:58     |
      | RMD  | 16:06   | 16:06     |
      | TWI  | 16:10   | 16:10     |
      | FEL  | 16:16   | 16:16     |
      | SNS  | 16:23   | 16:23     |
      | EGH  | 16:28   | 16:28     |
      | VIR  | 16:32   | 16:32     |
      | SNG  | 16:38   | 16:38     |
      | ACT  | 16:42   | 16:43     |
      | MAO  | 16:47   | 16:47     |
      | BCE  | 16:50   | 16:50     |
      | WKM  | 16:56   | 16:57     |
      | WNS  | 17:00   | 17:00     |
      | WTI  | 17:02   | 17:02     |
      | EAR  | 17:05   | 17:05     |
      | RDG  | 17:11   | --:--     |
    When I query between "WAT" and "RDG" on "2020-06-16" at "15:50"
    Then I should see a service "W17517" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 15:50     |
      | CLJ  | 15:57   | 15:58     |
      | RMD  | 16:06   | 16:06     |
      | TWI  | 16:10   | 16:10     |
      | FEL  | 16:16   | 16:16     |
      | SNS  | 16:23   | 16:23     |
      | EGH  | 16:28   | 16:28     |
      | VIR  | 16:32   | 16:32     |
      | SNG  | 16:38   | 16:38     |
      | ACT  | 16:42   | 16:43     |
      | MAO  | 16:47   | 16:47     |
      | BCE  | 16:50   | 16:50     |
      | WKM  | 16:56   | 16:57     |
      | WNS  | 17:00   | 17:00     |
      | WTI  | 17:02   | 17:02     |
      | EAR  | 17:05   | 17:05     |
      | RDG  | 17:13   | --:--     |

  Scenario: Changing calling point stopping times between SMN and LST
    Given a query between "SMN" and "LST" on "2020-06-11" at "22:56"
    Then I should see a service "P07360" that stops at
      | stop | arrival | departure |
      | SMN  | --:--   | 22:56     |
      | BUU  | 23:00   | 23:00     |
      | ALN  | 23:05   | 23:05     |
      | NFA  | 23:11   | 23:11     |
      | SOF  | 23:16   | 23:16     |
      | BLB  | 23:20   | 23:20     |
      | WIC  | 23:25   | 23:26     |
      | BIC  | 23:32   | 23:32     |
      | SNF  | 23:39   | 23:39     |
      | RMF  | 23:47   | 23:47     |
      | SRA  | 23:57   | 23:57     |
      | LST  | 00:06   | --:--     |
    When I query between "SMN" and "LST" on "2020-06-18" at "22:57"
    Then I should see a service "P07360" that stops at
      | stop | arrival | departure |
      | SMN  | --:--   | 22:57     |
      | BUU  | 23:01   | 23:01     |
      | ALN  | 23:06   | 23:06     |
      | NFA  | 23:12   | 23:12     |
      | SOF  | 23:17   | 23:17     |
      | BLB  | 23:21   | 23:21     |
      | WIC  | 23:26   | 23:27     |
      | BIC  | 23:33   | 23:33     |
      | SNF  | 23:40   | 23:40     |
      | RMF  | 23:51   | 23:51     |
      | SRA  | 23:59   | 23:59     |
      | LST  | 00:08   | --:--     |

  Scenario: Changing calling point stopping times between CRE and MAN
    Given a query between "CRE" and "MAN" on "2020-06-09" at "00:44"
    Then I should see a service "C30925" that stops at
      | stop | arrival | departure |
      | CRE  | --:--   | 00:44     |
      | MIA  | 01:07   | 01:13     |
      | MAN  | 01:28   | --:--     |
    When I query between "MIA" and "MAN" on "2020-06-16" at "01:13"
    Then I should see a service "C30925" that stops at
      | stop | arrival | departure |
      | MIA  | --:--   | 01:13     |
      | MAN  | 01:28   | --:--     |

