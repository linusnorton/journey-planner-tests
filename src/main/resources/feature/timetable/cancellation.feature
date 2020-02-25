Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service is cancelled on a particular day
    Given a query between "GLC" and "PRE" on "2020-09-18" at "21:01"
    Then I should see a service "C05086" that stops at
      | stop | arrival | departure |
      | GLC  | --:--   | 21:01     |
      | LOC  | 22:19   | 22:20     |
      | CAR  | 22:41   | 22:42     |
      | PNR  | 22:56   | 22:57     |
      | PRE  | 00:13   | --:--     |
    When I query between "GLC" and "PRE" on "2020-09-25" at "21:01"
    Then I should not see a service "C05086" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "RMD" and "SRA" on "2020-04-06" at "08:09"
    Then I should see a service "L43383" that stops at
      | stop | arrival | departure |
      | RMD  | --:--   | 08:09     |
      | KWG  | 08:12   | 08:12     |
      | GUN  | 08:15   | 08:15     |
      | SAT  | 08:18   | 08:18     |
      | ACC  | 08:20   | 08:21     |
      | WIJ  | 08:26   | 08:27     |
      | KNR  | 08:30   | 08:30     |
      | BSP  | 08:32   | 08:32     |
      | BSY  | 08:33   | 08:33     |
      | WHD  | 08:35   | 08:35     |
      | FNY  | 08:37   | 08:37     |
      | HDH  | 08:39   | 08:39     |
      | GPO  | 08:42   | 08:42     |
      | KTW  | 08:44   | 08:44     |
      | CMD  | 08:49   | 08:49     |
      | CIR  | 08:52   | 08:52     |
      | HHY  | 08:54   | 08:55     |
      | CNN  | 08:57   | 08:57     |
      | DLK  | 08:59   | 08:59     |
      | HKC  | 09:01   | 09:01     |
      | HMN  | 09:03   | 09:03     |
      | HKW  | 09:05   | 09:05     |
      | SRA  | 09:11   | --:--     |
    When I query between "RMD" and "SRA" on "2020-04-13" at "08:09"
    Then I should not see a service "L43383" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "KGX" and "WGC" on "2020-05-01" at "17:36"
    Then I should see a service "L07276" that stops at
      | stop | arrival | departure |
      | KGX  | --:--   | 17:36     |
      | FPK  | 17:42   | 17:45     |
      | NSG  | 17:51   | 17:52     |
      | OKL  | 17:55   | 17:55     |
      | NBA  | 17:57   | 17:57     |
      | PBR  | 18:02   | 18:02     |
      | HAT  | 18:08   | 18:08     |
      | WGC  | 18:12   | --:--     |
    When I query between "KGX" and "WGC" on "2020-05-08" at "17:36"
    Then I should not see a service "L07276" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "VIC" and "BTN" on "2020-04-06" at "08:25"
    Then I should see a service "L00007" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 08:25     |
      | CLJ  | 08:31   | 08:32     |
      | ECR  | 08:41   | 08:41     |
      | GTW  | 08:56   | 08:58     |
      | HHE  | 09:09   | 09:11     |
      | BUG  | 09:16   | 09:16     |
      | HSK  | 09:20   | 09:20     |
      | BTN  | 09:32   | --:--     |
    When I query between "VIC" and "BTN" on "2020-04-13" at "08:25"
    Then I should not see a service "L00007" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "VIC" and "LBG" on "2020-04-06" at "11:50"
    Then I should see a service "L04264" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 11:50     |
      | BAK  | 11:54   | 11:54     |
      | CLJ  | 11:58   | 11:58     |
      | WSW  | 12:01   | 12:01     |
      | BAL  | 12:04   | 12:04     |
      | SRH  | 12:08   | 12:09     |
      | WNW  | 12:12   | 12:12     |
      | GIP  | 12:15   | 12:15     |
      | CYP  | 12:21   | 12:22     |
      | SYD  | 12:26   | 12:26     |
      | FOH  | 12:28   | 12:28     |
      | HPA  | 12:31   | 12:31     |
      | BCY  | 12:33   | 12:33     |
      | NXG  | 12:35   | 12:36     |
      | LBG  | 12:47   | --:--     |
    When I query between "VIC" and "LBG" on "2020-04-13" at "11:50"
    Then I should not see a service "L04264" in the results

