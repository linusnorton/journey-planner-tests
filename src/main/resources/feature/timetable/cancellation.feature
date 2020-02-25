Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service is cancelled on a particular day
    Given a query between "CSS" and "WAT" on "2020-04-03" at "19:38"
    Then I should see a service "W18873" that stops at
      | stop | arrival | departure |
      | CSS  | --:--   | 19:38     |
      | CSN  | 19:40   | 19:40     |
      | TOL  | 19:43   | 19:43     |
      | MAL  | 19:45   | 19:45     |
      | MOT  | 19:49   | 19:49     |
      | RAY  | 19:53   | 19:53     |
      | WIM  | 19:57   | 19:57     |
      | EAD  | 20:01   | 20:01     |
      | CLJ  | 20:04   | 20:05     |
      | VXH  | 20:09   | 20:10     |
      | WAT  | 20:16   | --:--     |
    When I query between "CSS" and "WAT" on "2020-04-10" at "19:38"
    Then I should not see a service "W18873" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "CHX" and "GRV" on "2020-04-06" at "19:32"
    Then I should see a service "W43761" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 19:32     |
      | WAE  | 19:34   | 19:35     |
      | LBG  | 19:39   | 19:41     |
      | NEH  | 19:55   | 19:55     |
      | SID  | 19:58   | 19:58     |
      | BXY  | 20:02   | 20:02     |
      | CRY  | 20:05   | 20:05     |
      | DFD  | 20:10   | 20:11     |
      | SCG  | 20:15   | 20:15     |
      | GNH  | 20:17   | 20:17     |
      | SWM  | 20:20   | 20:20     |
      | NFL  | 20:22   | 20:22     |
      | GRV  | 20:26   | --:--     |
    When I query between "CHX" and "GRV" on "2020-04-13" at "19:32"
    Then I should not see a service "W43761" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "WNR" and "WAT" on "2020-04-06" at "20:23"
    Then I should see a service "W14589" that stops at
      | stop | arrival | departure |
      | WNR  | --:--   | 20:23     |
      | DAT  | 20:26   | 20:26     |
      | SNY  | 20:29   | 20:29     |
      | WRY  | 20:32   | 20:32     |
      | SNS  | 20:37   | 20:38     |
      | AFS  | 20:41   | 20:41     |
      | FEL  | 20:45   | 20:46     |
      | WTN  | 20:50   | 20:50     |
      | TWI  | 20:53   | 20:53     |
      | RMD  | 20:57   | 20:58     |
      | PUT  | 21:04   | 21:04     |
      | CLJ  | 21:08   | 21:09     |
      | VXH  | 21:14   | 21:15     |
      | WAT  | 21:19   | --:--     |
    When I query between "WNR" and "WAT" on "2020-04-13" at "20:23"
    Then I should not see a service "W14589" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "CST" and "ORP" on "2020-04-03" at "21:50"
    Then I should see a service "W52586" that stops at
      | stop | arrival | departure |
      | CST  | --:--   | 21:50     |
      | LBG  | 21:53   | 21:54     |
      | NWX  | 21:59   | 22:00     |
      | SAJ  | 22:02   | 22:02     |
      | LEW  | 22:04   | 22:05     |
      | HGR  | 22:09   | 22:09     |
      | GRP  | 22:13   | 22:13     |
      | ESD  | 22:16   | 22:16     |
      | CIT  | 22:19   | 22:19     |
      | PET  | 22:22   | 22:22     |
      | ORP  | 22:26   | --:--     |
    When I query between "CST" and "ORP" on "2020-04-10" at "21:50"
    Then I should not see a service "W52586" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "LBG" and "BKJ" on "2020-04-03" at "07:31"
    Then I should see a service "L04654" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 07:31     |
      | SBM  | 07:35   | 07:35     |
      | QRP  | 07:38   | 07:38     |
      | PMR  | 07:41   | 07:41     |
      | EDW  | 07:44   | 07:44     |
      | NDL  | 07:46   | 07:47     |
      | TUH  | 07:50   | 07:51     |
      | WNW  | 07:54   | 07:54     |
      | GIP  | 07:57   | 07:57     |
      | CYP  | 08:01   | 08:01     |
      | BIK  | 08:05   | 08:05     |
      | BKJ  | 08:09   | --:--     |
    When I query between "LBG" and "BKJ" on "2020-04-10" at "07:31"
    Then I should not see a service "L04654" in the results

