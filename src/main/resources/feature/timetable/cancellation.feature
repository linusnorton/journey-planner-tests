Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service is cancelled on a particular day
    Given a query between "WAT" and "AON" on "2020-04-03" at "11:53"
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
    When I query between "WAT" and "AON" on "2020-04-10" at "11:53"
    Then I should not see a service "W16506" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "SSS" and "SIT" on "2020-04-03" at "09:18"
    Then I should see a service "W44526" that stops at
      | stop | arrival | departure |
      | SSS  | --:--   | 09:18     |
      | QBR  | 09:22   | 09:23     |
      | SWL  | 09:27   | 09:27     |
      | KML  | 09:30   | 09:31     |
      | SIT  | 09:36   | --:--     |
    When I query between "SSS" and "SIT" on "2020-04-10" at "09:18"
    Then I should not see a service "W44526" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "TRB" and "PEN" on "2020-05-01" at "06:16"
    Then I should see a service "Y92173" that stops at
      | stop | arrival | departure |
      | TRB  | --:--   | 06:16     |
      | YNW  | 06:18   | 06:18     |
      | TRY  | 06:20   | 06:21     |
      | TPN  | 06:23   | 06:24     |
      | YSR  | 06:26   | 06:28     |
      | LLY  | 06:30   | 06:30     |
      | TNP  | 06:33   | 06:33     |
      | DMG  | 06:35   | 06:35     |
      | POR  | 06:38   | 06:39     |
      | TRH  | 06:42   | 06:42     |
      | PPD  | 06:48   | 06:48     |
      | TRF  | 06:51   | 06:51     |
      | TAF  | 06:58   | 06:58     |
      | RDR  | 07:02   | 07:02     |
      | LLN  | 07:05   | 07:05     |
      | CYS  | 07:09   | 07:10     |
      | CDQ  | 07:14   | 07:14     |
      | CDF  | 07:18   | 07:21     |
      | PEN  | 07:31   | --:--     |
    When I query between "TRB" and "PEN" on "2020-05-08" at "06:16"
    Then I should not see a service "Y92173" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "GUN" and "GUN" on "2020-04-03" at "07:26"
    Then I should see a service "L53039" that stops at
      | stop | arrival | departure |
      | GUN  | 07:26   | 07:26     |
      | KWG  | 07:29   | 07:29     |
      | RMD  | 07:33   | 07:49     |
      | KWG  | 07:52   | 07:52     |
      | GUN  | 07:55   | 07:55     |
    When I query between "GUN" and "GUN" on "2020-04-10" at "07:26"
    Then I should not see a service "L53039" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "ORP" and "LUT" on "2020-04-06" at "08:29"
    Then I should see a service "L09921" that stops at
      | stop | arrival | departure |
      | ORP  | --:--   | 08:29     |
      | PET  | 08:32   | 08:32     |
      | BKL  | 08:36   | 08:36     |
      | BMS  | 08:39   | 08:43     |
      | SRT  | 08:45   | 08:45     |
      | RVB  | 08:48   | 08:48     |
      | BEC  | 08:50   | 08:50     |
      | BGM  | 08:52   | 08:52     |
      | CTF  | 08:55   | 08:55     |
      | CFT  | 08:58   | 08:58     |
      | NHD  | 09:00   | 09:01     |
      | PMR  | 09:03   | 09:04     |
      | DMK  | 09:06   | 09:07     |
      | EPH  | 09:14   | 09:14     |
      | BFR  | 09:19   | 09:19     |
      | CTK  | 09:21   | 09:21     |
      | ZFD  | 09:23   | 09:24     |
      | STP  | 09:28   | 09:28     |
      | KTN  | 09:33   | 09:33     |
      | WHP  | 09:37   | 09:37     |
      | CRI  | 09:39   | 09:40     |
      | HEN  | 09:44   | 09:44     |
      | MIL  | 09:47   | 09:47     |
      | ELS  | 09:51   | 09:51     |
      | RDT  | 09:55   | 09:55     |
      | SAC  | 10:01   | 10:02     |
      | HPD  | 10:07   | 10:07     |
      | LTN  | 10:12   | 10:15     |
      | LUT  | 10:19   | --:--     |
    When I query between "ORP" and "LUT" on "2020-04-13" at "08:29"
    Then I should not see a service "L09921" in the results

