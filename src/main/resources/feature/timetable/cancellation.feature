Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service is cancelled on a particular day
    Given a query between "EGR" and "VIC" on "2020-04-03" at "22:06"
    Then I should see a service "L01727" that stops at
      | stop | arrival | departure |
      | EGR  | --:--   | 22:06     |
      | DMS  | 22:10   | 22:10     |
      | LFD  | 22:13   | 22:13     |
      | HUR  | 22:20   | 22:20     |
      | OXT  | 22:23   | 22:23     |
      | WOH  | 22:29   | 22:29     |
      | UWL  | 22:32   | 22:32     |
      | RDD  | 22:36   | 22:36     |
      | SNR  | 22:39   | 22:39     |
      | ECR  | 22:45   | 22:45     |
      | CLJ  | 22:55   | 22:56     |
      | VIC  | 23:02   | --:--     |
    When I query between "EGR" and "VIC" on "2020-04-10" at "22:06"
    Then I should not see a service "L01727" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "WAT" and "AON" on "2020-04-06" at "11:53"
    Then I should see a service "W16506" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 11:53     |
      | CLJ  | --:--   | 12:00     |
      | SUR  | 12:10   | 12:11     |
      | WBY  | 12:21   | 12:21     |
      | WOK  | 12:29   | 12:30     |
      | BKO  | 12:36   | 12:36     |
      | AHV  | 12:44   | 12:44     |
      | AHT  | 12:49   | 12:50     |
      | FNH  | 12:55   | 12:56     |
      | BTY  | 13:02   | 13:02     |
      | AON  | 13:10   | --:--     |
    When I query between "WAT" and "AON" on "2020-04-13" at "11:53"
    Then I should not see a service "W16506" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "SHP" and "WAT" on "2020-04-03" at "08:41"
    Then I should see a service "W18173" that stops at
      | stop | arrival | departure |
      | SHP  | --:--   | 08:41     |
      | UPH  | 08:44   | 08:44     |
      | SUU  | 08:46   | 08:46     |
      | HMP  | 08:50   | 08:50     |
      | FLW  | 08:53   | 08:53     |
      | TED  | 08:58   | 08:58     |
      | HMW  | 09:00   | 09:00     |
      | KNG  | 09:02   | 09:03     |
      | NBT  | 09:05   | 09:05     |
      | NEM  | 09:10   | 09:10     |
      | RAY  | 09:12   | 09:13     |
      | WIM  | 09:16   | 09:17     |
      | EAD  | 09:20   | 09:21     |
      | CLJ  | 09:24   | 09:25     |
      | VXH  | 09:29   | 09:30     |
      | WAT  | 09:36   | --:--     |
    When I query between "SHP" and "WAT" on "2020-04-10" at "08:41"
    Then I should not see a service "W18173" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "GRY" and "FST" on "2020-04-06" at "12:40"
    Then I should see a service "L40821" that stops at
      | stop | arrival | departure |
      | GRY  | --:--   | 12:40     |
      | PFL  | 12:46   | 12:46     |
      | RNM  | 12:51   | 12:51     |
      | DDK  | 12:54   | 12:54     |
      | BKG  | 13:00   | 13:00     |
      | WEH  | 13:05   | 13:05     |
      | LHS  | 13:10   | 13:10     |
      | FST  | 13:16   | --:--     |
    When I query between "GRY" and "FST" on "2020-04-13" at "12:40"
    Then I should not see a service "L40821" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "SNF" and "LST" on "2020-04-06" at "12:44"
    Then I should see a service "G32327" that stops at
      | stop | arrival | departure |
      | SNF  | --:--   | 12:44     |
      | BRE  | 12:47   | 12:47     |
      | HRO  | 12:52   | 12:52     |
      | GDP  | 12:56   | 12:56     |
      | RMF  | 12:58   | 12:58     |
      | CTH  | 13:02   | 13:02     |
      | GMY  | 13:04   | 13:04     |
      | SVK  | 13:06   | 13:06     |
      | IFD  | 13:09   | 13:09     |
      | MNP  | 13:12   | 13:12     |
      | FOG  | 13:14   | 13:14     |
      | MYL  | 13:16   | 13:16     |
      | SRA  | 13:18   | 13:19     |
      | LST  | 13:27   | --:--     |
    When I query between "SNF" and "LST" on "2020-04-13" at "12:44"
    Then I should not see a service "G32327" in the results

