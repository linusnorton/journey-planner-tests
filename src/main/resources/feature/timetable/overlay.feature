@timetable
Feature: Schedule overlays
  A schedule might be changed for a subset of dates using an overlay record

  Scenario: Changing calling point stopping times between HFX and HUL
    Given a query between "HFX" and "HUL" on "2020-03-30" at "22:21"
    Then I should see a service "Y56712" that stops at
      | stop | arrival | departure |
      | HFX  | --:--   | 22:21     |
      | BDI  | 22:32   | 22:35     |
      | NPD  | 22:43   | 22:43     |
      | BLE  | 22:47   | 22:47     |
      | LDS  | 22:57   | 22:59     |
      | CRG  | 23:05   | 23:05     |
      | GRF  | 23:10   | 23:10     |
      | EGF  | 23:12   | 23:12     |
      | MIK  | 23:15   | 23:16     |
      | SOM  | 23:20   | 23:20     |
      | SBY  | 23:31   | 23:31     |
      | BUH  | 23:50   | 23:51     |
      | HUL  | 00:04   | --:--     |
    When I query between "HFX" and "HUL" on "2020-04-06" at "22:21"
    Then I should see a service "Y56712" that stops at
      | stop | arrival | departure |
      | HFX  | --:--   | 22:21     |
      | BDI  | 22:32   | 22:35     |
      | NPD  | 22:43   | 22:43     |
      | BLE  | 22:47   | 22:47     |
      | LDS  | 22:57   | 22:59     |
      | CRG  | 23:05   | 23:05     |
      | GRF  | 23:10   | 23:10     |
      | EGF  | 23:12   | 23:12     |
      | MIK  | 23:15   | 23:16     |
      | SOM  | 23:20   | 23:20     |
      | SBY  | 23:31   | 23:31     |
      | BUH  | 23:50   | 23:51     |
      | HUL  | 00:04   | --:--     |

  Scenario: Changing calling point stopping times between GLC and KGX
    Given a query between "GLC" and "KGX" on "2020-03-30" at "06:48"
    Then I should see a service "Y72857" that stops at
      | stop | arrival | departure |
      | GLC  | --:--   | 06:48     |
      | MTH  | 07:03   | 07:05     |
      | HYM  | 07:46   | 07:48     |
      | EDB  | 07:52   | 08:00     |
      | ALM  | 08:59   | 09:00     |
      | NCL  | 09:27   | 09:29     |
      | DHM  | 09:41   | 09:43     |
      | DAR  | 10:00   | 10:02     |
      | YRK  | 10:29   | 10:32     |
      | DON  | 10:54   | 10:57     |
      | NNG  | 11:19   | 11:21     |
      | PBO  | 11:48   | 11:50     |
      | KGX  | 12:40   | --:--     |
    When I query between "EDB" and "KGX" on "2020-04-06" at "08:00"
    Then I should see a service "Y72857" that stops at
      | stop | arrival | departure |
      | EDB  | --:--   | 08:00     |
      | ALM  | 08:59   | 09:00     |
      | NCL  | 09:27   | 09:29     |
      | DHM  | 09:41   | 09:43     |
      | DAR  | 10:00   | 10:02     |
      | YRK  | 10:29   | 10:32     |
      | DON  | 10:54   | 10:57     |
      | NNG  | 11:19   | 11:21     |
      | PBO  | 11:48   | 11:50     |
      | KGX  | 12:40   | --:--     |

  Scenario: Changing calling point stopping times between GLC and MIA
    Given a query between "GLC" and "MIA" on "2020-03-30" at "04:22"
    Then I should see a service "Y74267" that stops at
      | stop | arrival | departure |
      | GLC  | --:--   | 04:22     |
      | LOC  | 05:35   | 05:36     |
      | CAR  | 05:56   | 06:22     |
      | PNR  | 06:36   | 06:39     |
      | OXN  | 07:02   | 07:08     |
      | LAN  | 07:22   | 07:23     |
      | PRE  | 07:40   | 07:46     |
      | MCO  | 08:20   | 08:21     |
      | MAN  | 08:24   | 08:26     |
      | MIA  | 08:47   | --:--     |
    When I query between "CAR" and "MIA" on "2020-04-06" at "06:22"
    Then I should see a service "Y74267" that stops at
      | stop | arrival | departure |
      | CAR  | --:--   | 06:22     |
      | PNR  | 06:36   | 06:39     |
      | OXN  | 07:02   | 07:08     |
      | LAN  | 07:22   | 07:23     |
      | PRE  | 07:40   | 07:46     |
      | MCO  | 08:20   | 08:21     |
      | MAN  | 08:24   | 08:26     |
      | MIA  | 08:47   | --:--     |

  Scenario: Changing calling point stopping times between TRB and BYI
    Given a query between "TRB" and "BYI" on "2020-03-29" at "08:17"
    Then I should see a service "Y92727" that stops at
      | stop | arrival | departure |
      | TRB  | --:--   | 08:17     |
      | YNW  | 08:19   | 08:19     |
      | TRY  | 08:21   | 08:21     |
      | TPN  | 08:23   | 08:23     |
      | YSR  | 08:26   | 08:28     |
      | LLY  | 08:30   | 08:30     |
      | TNP  | 08:33   | 08:33     |
      | DMG  | 08:35   | 08:35     |
      | POR  | 08:38   | 08:39     |
      | TRH  | 08:42   | 08:42     |
      | PPD  | 08:49   | 08:50     |
      | TRF  | 08:52   | 08:53     |
      | TAF  | 08:59   | 09:00     |
      | RDR  | 09:04   | 09:04     |
      | LLN  | 09:06   | 09:07     |
      | CYS  | 09:11   | 09:11     |
      | CDQ  | 09:16   | 09:16     |
      | CDF  | 09:21   | 09:25     |
      | GTN  | 09:29   | 09:29     |
      | CGN  | 09:33   | 09:33     |
      | EBK  | 09:35   | 09:35     |
      | DNS  | 09:37   | 09:37     |
      | CAD  | 09:41   | 09:41     |
      | BYD  | 09:44   | 09:44     |
      | BRY  | 09:48   | 09:48     |
      | BYI  | 09:54   | --:--     |
    When I query between "TRB" and "BYI" on "2020-04-05" at "08:17"
    Then I should see a service "Y92727" that stops at
      | stop | arrival | departure |
      | TRB  | --:--   | 08:17     |
      | YNW  | 08:19   | 08:19     |
      | TRY  | 08:21   | 08:21     |
      | TPN  | 08:23   | 08:23     |
      | YSR  | 08:26   | 08:28     |
      | LLY  | 08:30   | 08:30     |
      | TNP  | 08:33   | 08:33     |
      | DMG  | 08:35   | 08:35     |
      | POR  | 08:38   | 08:39     |
      | TRH  | 08:42   | 08:42     |
      | PPD  | 08:49   | 08:50     |
      | TRF  | 08:52   | 08:53     |
      | TAF  | 08:59   | 09:00     |
      | RDR  | 09:04   | 09:04     |
      | LLN  | 09:06   | 09:07     |
      | CYS  | 09:11   | 09:11     |
      | CDQ  | 09:16   | 09:16     |
      | CDF  | 09:21   | 09:25     |
      | GTN  | 09:29   | 09:29     |
      | CGN  | 09:33   | 09:33     |
      | EBK  | 09:35   | 09:35     |
      | DNS  | 09:37   | 09:37     |
      | CAD  | 09:41   | 09:41     |
      | BYD  | 09:44   | 09:44     |
      | BRY  | 09:48   | 09:48     |
      | BYI  | 09:54   | --:--     |

  Scenario: Changing calling point stopping times between LST and SSD
    Given a query between "LST" and "SSD" on "2020-03-30" at "05:10"
    Then I should see a service "L41389" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 05:10     |
      | TOM  | 05:21   | 05:22     |
      | HWN  | 05:38   | 05:38     |
      | SAW  | 05:43   | 05:43     |
      | BIS  | 05:49   | 05:50     |
      | SSD  | 06:00   | --:--     |
    When I query between "LST" and "SSD" on "2020-04-06" at "05:10"
    Then I should see a service "L41389" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 05:10     |
      | TOM  | 05:21   | 05:22     |
      | HWN  | 05:38   | 05:38     |
      | SAW  | 05:43   | 05:43     |
      | BIS  | 05:49   | 05:50     |
      | SSD  | 06:00   | --:--     |

