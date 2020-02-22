Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service is cancelled on a particular day
    Given a query between "DFD" and "VIC" on "2020-05-01" at "09:02"
    Then I should see a service "W52764" that stops at
      | stop | arrival | departure |
      | DFD  | --:--   | 09:02     |
      | BNH  | 09:09   | 09:09     |
      | BXH  | 09:12   | 09:12     |
      | WLI  | 09:15   | 09:15     |
      | FCN  | 09:18   | 09:18     |
      | ELW  | 09:20   | 09:21     |
      | KDB  | 09:24   | 09:24     |
      | BKH  | 09:27   | 09:28     |
      | LEW  | 09:31   | 09:32     |
      | NHD  | 09:37   | 09:37     |
      | PMR  | 09:40   | 09:40     |
      | DMK  | 09:43   | 09:44     |
      | VIC  | 09:57   | --:--     |
    When I query between "DFD" and "VIC" on "2020-05-08" at "09:02"
    Then I should not see a service "W52764" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "WAT" and "PMH" on "2020-05-01" at "16:09"
    Then I should see a service "W17166" that stops at
      | stop | arrival | departure |
      | WAT  | --:--   | 16:09     |
      | WOK  | 16:33   | 16:34     |
      | FNB  | 16:44   | 16:45     |
      | BSK  | 16:58   | 17:00     |
      | MIC  | 17:10   | 17:10     |
      | WIN  | 17:18   | 17:19     |
      | ESL  | 17:27   | 17:28     |
      | HDE  | 17:34   | 17:34     |
      | BOE  | 17:38   | 17:38     |
      | FRM  | 17:46   | 17:48     |
      | PTC  | 17:53   | 17:53     |
      | CSA  | 17:58   | 17:58     |
      | HLS  | 18:03   | 18:03     |
      | FTN  | 18:07   | 18:08     |
      | PMS  | 18:11   | 18:13     |
      | PMH  | 18:20   | --:--     |
    When I query between "WAT" and "PMH" on "2020-05-08" at "16:09"
    Then I should not see a service "W17166" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "CHX" and "BNH" on "2020-05-01" at "17:13"
    Then I should see a service "W45712" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 17:13     |
      | WAE  | 17:15   | 17:16     |
      | LBG  | 17:20   | 17:22     |
      | LEW  | 17:30   | 17:31     |
      | BKH  | 17:33   | 17:34     |
      | CTN  | 17:38   | 17:39     |
      | WWD  | 17:42   | 17:42     |
      | WWA  | 17:44   | 17:45     |
      | PLU  | 17:47   | 17:47     |
      | ABW  | 17:50   | 17:50     |
      | BVD  | 17:53   | 17:53     |
      | ERH  | 17:56   | 17:56     |
      | SGR  | 17:59   | 18:00     |
      | BNH  | 18:18   | --:--     |
    When I query between "CHX" and "BNH" on "2020-05-08" at "17:13"
    Then I should not see a service "W45712" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "SRA" and "CLJ" on "2020-04-03" at "06:53"
    Then I should see a service "L44573" that stops at
      | stop | arrival | departure |
      | SRA  | --:--   | 06:53     |
      | HKW  | 06:56   | 06:56     |
      | HMN  | 06:59   | 06:59     |
      | HKC  | 07:01   | 07:01     |
      | DLK  | 07:03   | 07:03     |
      | CNN  | 07:05   | 07:05     |
      | HHY  | 07:07   | 07:08     |
      | CIR  | 07:10   | 07:10     |
      | CMD  | 07:13   | 07:13     |
      | KTW  | 07:15   | 07:15     |
      | GPO  | 07:19   | 07:19     |
      | HDH  | 07:21   | 07:21     |
      | FNY  | 07:23   | 07:23     |
      | WHD  | 07:25   | 07:25     |
      | BSY  | 07:27   | 07:27     |
      | BSP  | 07:28   | 07:28     |
      | KNR  | 07:30   | 07:30     |
      | WIJ  | 07:34   | 07:35     |
      | SPB  | 07:42   | 07:42     |
      | KPA  | 07:44   | 07:44     |
      | WBP  | 07:46   | 07:46     |
      | IMW  | 07:49   | 07:49     |
      | CLJ  | 07:55   | --:--     |
    When I query between "SRA" and "CLJ" on "2020-04-10" at "06:53"
    Then I should not see a service "L44573" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "RDG" and "WAT" on "2020-05-01" at "09:12"
    Then I should see a service "W17455" that stops at
      | stop | arrival | departure |
      | RDG  | --:--   | 09:12     |
      | EAR  | 09:17   | 09:17     |
      | WTI  | 09:19   | 09:19     |
      | WNS  | 09:21   | 09:21     |
      | WKM  | 09:25   | 09:26     |
      | BCE  | 09:32   | 09:32     |
      | MAO  | 09:35   | 09:35     |
      | ACT  | 09:39   | 09:40     |
      | SNG  | 09:43   | 09:43     |
      | LNG  | 09:46   | 09:46     |
      | VIR  | 09:50   | 09:50     |
      | EGH  | 09:53   | 09:53     |
      | SNS  | 09:58   | 09:59     |
      | FEL  | 10:05   | 10:05     |
      | TWI  | 10:10   | 10:11     |
      | RMD  | 10:15   | 10:15     |
      | CLJ  | 10:23   | 10:24     |
      | WAT  | 10:34   | --:--     |
    When I query between "RDG" and "WAT" on "2020-05-08" at "09:12"
    Then I should not see a service "W17455" in the results

