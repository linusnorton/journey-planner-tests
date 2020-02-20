Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service is cancelled on a particular day
    Given a query between "SSD" and "LST" on "2020-04-06" at "10:45"
    Then I should see a service "L41542" that stops at
      | stop | arrival | departure |
      | SSD  | --:--   | 10:45     |
      | HWN  | 11:00   | 11:00     |
      | TOM  | 11:17   | 11:17     |
      | LST  | 11:32   | --:--     |
    When I query between "SSD" and "LST" on "2020-04-13" at "10:45"
    Then I should not see a service "L41542" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "ORP" and "VIC" on "2020-04-03" at "05:24"
    Then I should see a service "W44438" that stops at
      | stop | arrival | departure |
      | ORP  | --:--   | 05:24     |
      | PET  | 05:27   | 05:27     |
      | BKL  | 05:31   | 05:31     |
      | BMS  | 05:34   | 05:34     |
      | SRT  | 05:37   | 05:37     |
      | BKJ  | 05:40   | 05:40     |
      | KTH  | 05:42   | 05:42     |
      | PNE  | 05:44   | 05:44     |
      | SYH  | 05:47   | 05:48     |
      | WDU  | 05:50   | 05:50     |
      | HNH  | 05:52   | 05:53     |
      | BRX  | 05:55   | 05:56     |
      | VIC  | 06:05   | --:--     |
    When I query between "ORP" and "VIC" on "2020-04-10" at "05:24"
    Then I should not see a service "W44438" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "SHR" and "BHM" on "2020-04-06" at "17:13"
    Then I should see a service "P82019" that stops at
      | stop | arrival | departure |
      | SHR  | --:--   | 17:13     |
      | WLN  | 17:25   | 17:25     |
      | TFC  | 17:31   | 17:31     |
      | SFN  | 17:36   | 17:36     |
      | CSL  | 17:45   | 17:46     |
      | WVH  | 17:54   | 17:57     |
      | BHM  | 18:17   | --:--     |
    When I query between "SHR" and "BHM" on "2020-04-13" at "17:13"
    Then I should not see a service "P82019" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "WAT" and "WYB" on "2020-04-03" at "21:22"
    Then I should see a service "W14382" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 21:22     |
      | VXH  | 21:27   | 21:27     |
      | QRB  | 21:30   | 21:30     |
      | CLJ  | 21:33   | 21:33     |
      | WNT  | 21:36   | 21:36     |
      | PUT  | 21:38   | 21:39     |
      | BNS  | 21:42   | 21:42     |
      | BNI  | 21:44   | 21:44     |
      | CHK  | 21:47   | 21:47     |
      | KWB  | 21:50   | 21:50     |
      | BFD  | 21:52   | 21:53     |
      | SYL  | 21:55   | 21:55     |
      | ISL  | 21:57   | 21:57     |
      | HOU  | 22:00   | 22:01     |
      | FEL  | 22:06   | 22:06     |
      | AFS  | 22:10   | 22:10     |
      | SNS  | 22:14   | 22:14     |
      | EGH  | 22:19   | 22:19     |
      | VIR  | 22:23   | 22:23     |
      | CHY  | 22:28   | 22:29     |
      | ASN  | 22:32   | 22:32     |
      | WYB  | 22:37   | --:--     |
    When I query between "WAT" and "WYB" on "2020-04-10" at "21:22"
    Then I should not see a service "W14382" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "BTR" and "LST" on "2020-04-03" at "08:12"
    Then I should see a service "L41718" that stops at
      | stop | arrival | departure |
      | BTR  | --:--   | 08:12     |
      | BTP  | 08:14   | 08:14     |
      | CES  | 08:17   | 08:17     |
      | WNY  | 08:20   | 08:20     |
      | WTM  | 08:27   | 08:28     |
      | HAP  | 08:32   | 08:32     |
      | CHM  | 08:39   | 08:39     |
      | INT  | 08:46   | 08:46     |
      | SNF  | 08:51   | 08:51     |
      | SRA  | 09:09   | --:--     |
      | LST  | 09:19   | --:--     |
    When I query between "BTR" and "LST" on "2020-04-10" at "08:12"
    Then I should not see a service "L41718" in the results

