@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between WAT and PMH is cancelled on a particular day
    Given a query between "WAT" and "PMH" on "2020-04-03" at "16:30"
    Then I should see a service "W17048" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 16:30     |
      | WOK  | 16:55   | 16:55     |
      | GLD  | 17:03   | 17:04     |
      | GOD  | 17:10   | 17:12     |
      | HSL  | 17:23   | 17:24     |
      | PTR  | 17:35   | 17:36     |
      | HAV  | 17:49   | 17:50     |
      | FTN  | 17:59   | 18:00     |
      | PMS  | 18:03   | 18:04     |
      | PMH  | 18:09   | --:--     |
    When I query between "WAT" and "PMH" on "2020-04-10" at "16:30"
    Then I should not see a service "W17048" in the results

  Scenario: Service between RDG and WAT is cancelled on a particular day
    Given a query between "RDG" and "WAT" on "2020-04-03" at "16:12"
    Then I should see a service "W17531" that stops at
      | stop | arrival | departure |
      | RDG  | --:--   | 16:12     |
      | EAR  | 16:17   | 16:17     |
      | WTI  | 16:19   | 16:19     |
      | WNS  | 16:21   | 16:21     |
      | WKM  | 16:25   | 16:26     |
      | BCE  | 16:32   | 16:32     |
      | MAO  | 16:35   | 16:35     |
      | ACT  | 16:39   | 16:40     |
      | SNG  | 16:43   | 16:43     |
      | LNG  | 16:46   | 16:46     |
      | VIR  | 16:50   | 16:50     |
      | EGH  | 16:53   | 16:53     |
      | SNS  | 16:58   | 16:59     |
      | FEL  | 17:05   | 17:05     |
      | TWI  | 17:10   | 17:11     |
      | RMD  | 17:15   | 17:15     |
      | CLJ  | 17:23   | 17:24     |
      | WAT  | 17:37   | --:--     |
    When I query between "RDG" and "WAT" on "2020-04-10" at "16:12"
    Then I should not see a service "W17531" in the results

  Scenario: Service between WAT and WNR is cancelled on a particular day
    Given a query between "WAT" and "WNR" on "2020-04-03" at "22:58"
    Then I should see a service "W14612" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 22:58     |
      | VXH  | 23:02   | 23:02     |
      | CLJ  | 23:07   | 23:08     |
      | PUT  | 23:11   | 23:12     |
      | RMD  | 23:17   | 23:18     |
      | TWI  | 23:21   | 23:22     |
      | WTN  | 23:25   | 23:25     |
      | FEL  | 23:29   | 23:29     |
      | AFS  | 23:33   | 23:33     |
      | SNS  | 23:37   | 23:37     |
      | WRY  | 23:41   | 23:41     |
      | SNY  | 23:44   | 23:44     |
      | DAT  | 23:47   | 23:47     |
      | WNR  | 23:51   | --:--     |
    When I query between "WAT" and "WNR" on "2020-04-10" at "22:58"
    Then I should not see a service "W14612" in the results

  Scenario: Service between EPS and LBG is cancelled on a particular day
    Given a query between "EPS" and "LBG" on "2020-04-03" at "09:45"
    Then I should see a service "W22266" that stops at
      | stop | arrival | departure |
      | EPS  | --:--   | 09:45     |
      | EWE  | 09:49   | 09:49     |
      | CHE  | 09:52   | 09:52     |
      | SUO  | 09:55   | 09:56     |
      | CSB  | 09:59   | 09:59     |
      | WLT  | 10:01   | 10:02     |
      | WDO  | 10:05   | 10:05     |
      | WCY  | 10:09   | 10:10     |
      | NWD  | 10:15   | 10:16     |
      | LBG  | 10:28   | --:--     |
    When I query between "EPS" and "LBG" on "2020-04-10" at "09:45"
    Then I should not see a service "W22266" in the results

  Scenario: Service between GLM and VIC is cancelled on a particular day
    Given a query between "GLM" and "VIC" on "2020-04-03" at "08:28"
    Then I should see a service "W45579" that stops at
      | stop | arrival | departure |
      | GLM  | --:--   | 08:28     |
      | CTM  | 08:32   | 08:32     |
      | RTR  | 08:35   | 08:36     |
      | SOR  | 08:45   | 08:45     |
      | MEP  | 08:48   | 08:48     |
      | LGF  | 08:52   | 08:52     |
      | FNR  | 08:56   | 08:56     |
      | SAY  | 09:01   | 09:01     |
      | SMY  | 09:05   | 09:06     |
      | BMS  | 09:12   | 09:12     |
      | BGM  | 09:17   | 09:18     |
      | CFT  | 09:22   | 09:22     |
      | DMK  | 09:28   | 09:28     |
      | VIC  | 09:41   | --:--     |
    When I query between "GLM" and "VIC" on "2020-04-10" at "08:28"
    Then I should not see a service "W45579" in the results

