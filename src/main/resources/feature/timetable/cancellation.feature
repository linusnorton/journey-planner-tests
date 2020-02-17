Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service is cancelled on a particular day
    Given a query between "WCY" and "VIC" on "2020-04-06" at "10:51"
    Then I should see a service "L05544" that stops at
      | stop | arrival | departure |
      | WCY  | --:--   | 10:51     |
      | NWD  | 10:57   | 10:58     |
      | CYP  | 11:03   | 11:07     |
      | GIP  | 11:09   | 11:09     |
      | WNW  | 11:12   | 11:12     |
      | SRH  | 11:16   | 11:17     |
      | BAL  | 11:21   | 11:21     |
      | WSW  | 11:23   | 11:23     |
      | CLJ  | 11:27   | 11:27     |
      | BAK  | 11:31   | 11:31     |
      | VIC  | 11:35   | --:--     |
    When I query between "WCY" and "VIC" on "2020-04-13" at "10:51"
    Then I should not see a service "L05544" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "DID" and "PAD" on "2020-04-06" at "08:16"
    Then I should see a service "Y94547" that stops at
      | stop | arrival | departure |
      | DID  | --:--   | 08:16     |
      | CHO  | 08:21   | 08:23     |
      | GOR  | 08:27   | 08:29     |
      | PAN  | 08:33   | 08:34     |
      | TLH  | 08:38   | 08:40     |
      | RDG  | 08:45   | 08:48     |
      | TWY  | 08:53   | 08:54     |
      | MAI  | 09:00   | 09:01     |
      | PAD  | 09:26   | --:--     |
    When I query between "DID" and "PAD" on "2020-04-13" at "08:16"
    Then I should not see a service "Y94547" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "SRA" and "RMD" on "2020-04-03" at "17:11"
    Then I should see a service "L43282" that stops at
      | stop | arrival | departure |
      | SRA  | --:--   | 17:11     |
      | HKW  | 17:14   | 17:14     |
      | HMN  | 17:17   | 17:17     |
      | HKC  | 17:19   | 17:19     |
      | DLK  | 17:21   | 17:21     |
      | CNN  | 17:23   | 17:23     |
      | HHY  | 17:25   | 17:26     |
      | CIR  | 17:28   | 17:28     |
      | CMD  | 17:31   | 17:31     |
      | KTW  | 17:33   | 17:33     |
      | GPO  | 17:37   | 17:37     |
      | HDH  | 17:39   | 17:39     |
      | FNY  | 17:41   | 17:41     |
      | WHD  | 17:43   | 17:43     |
      | BSY  | 17:45   | 17:45     |
      | BSP  | 17:46   | 17:46     |
      | KNR  | 17:48   | 17:48     |
      | WIJ  | 17:53   | 17:54     |
      | ACC  | 17:59   | 17:59     |
      | SAT  | 18:02   | 18:02     |
      | GUN  | 18:06   | 18:06     |
      | KWG  | 18:09   | 18:09     |
      | RMD  | 18:14   | --:--     |
    When I query between "SRA" and "RMD" on "2020-04-10" at "17:11"
    Then I should not see a service "L43282" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "FST" and "SRY" on "2020-05-01" at "16:31"
    Then I should see a service "L40115" that stops at
      | stop | arrival | departure |
      | FST  | --:--   | 16:31     |
      | LHS  | 16:35   | 16:36     |
      | WEH  | 16:41   | 16:41     |
      | LAI  | 17:03   | 17:04     |
      | CHW  | 17:19   | 17:19     |
      | WCF  | 17:21   | 17:21     |
      | SOC  | 17:23   | 17:24     |
      | SOE  | 17:26   | 17:26     |
      | TPB  | 17:28   | 17:28     |
      | SRY  | 17:34   | --:--     |
    When I query between "FST" and "SRY" on "2020-05-08" at "16:31"
    Then I should not see a service "L40115" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "AFK" and "EBN" on "2020-04-06" at "08:25"
    Then I should see a service "L03949" that stops at
      | stop | arrival | departure |
      | AFK  | --:--   | 08:25     |
      | HMT  | 08:33   | 08:33     |
      | APD  | 08:37   | 08:37     |
      | RYE  | 08:46   | 08:48     |
      | WSE  | 08:51   | 08:51     |
      | TOK  | 08:59   | 08:59     |
      | ORE  | 09:05   | 09:05     |
      | HGS  | 09:08   | 09:09     |
      | SLQ  | 09:12   | 09:12     |
      | BEX  | 09:19   | 09:20     |
      | CLL  | 09:22   | 09:22     |
      | COB  | 09:25   | 09:25     |
      | PEV  | 09:32   | 09:32     |
      | HMD  | 09:38   | 09:38     |
      | EBN  | 09:43   | --:--     |
    When I query between "AFK" and "EBN" on "2020-04-13" at "08:25"
    Then I should not see a service "L03949" in the results

