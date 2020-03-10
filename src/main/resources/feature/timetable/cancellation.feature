@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between LIV and MCV is cancelled on a particular day
    Given a query between "LIV" and "MCV" on "2020-03-30" at "23:31"
    Then I should see a service "Y24285" that stops at
      | stop | arrival | departure |
      | LIV  | --:--   | 23:31     |
      | EDG  | 23:35   | 23:35     |
      | WAV  | 23:37   | 23:37     |
      | BGE  | 23:40   | 23:40     |
      | ROB  | 23:43   | 23:43     |
      | HUY  | 23:45   | 23:45     |
      | WHN  | 23:49   | 23:49     |
      | RNH  | 23:52   | 23:52     |
      | LEG  | 23:55   | 23:55     |
      | SHJ  | 23:58   | 23:58     |
      | ERL  | 00:05   | 00:05     |
      | NLW  | 00:07   | 00:07     |
      | PAT  | 00:17   | 00:17     |
      | ECC  | 00:20   | 00:20     |
      | MCV  | 00:29   | --:--     |
    When I query between "LIV" and "MCV" on "2020-04-06" at "23:31"
    Then I should not see a service "Y24285" in the results

  Scenario: Service between VIC and EPS is cancelled on a particular day
    Given a query between "VIC" and "EPS" on "2020-03-30" at "23:11"
    Then I should see a service "L05050" that stops at
      | stop | arrival | departure |
      | VIC  | --:--   | 23:11     |
      | CLJ  | 23:18   | 23:18     |
      | BAL  | 23:23   | 23:23     |
      | MTC  | 23:30   | 23:30     |
      | MIJ  | 23:33   | 23:33     |
      | HCB  | 23:36   | 23:36     |
      | CSH  | 23:39   | 23:39     |
      | SUO  | 23:43   | 23:43     |
      | CHE  | 23:46   | 23:46     |
      | EWE  | 23:49   | 23:49     |
      | EPS  | 23:53   | --:--     |
    When I query between "VIC" and "EPS" on "2020-04-06" at "23:11"
    Then I should not see a service "L05050" in the results

  Scenario: Service between STP and FAV is cancelled on a particular day
    Given a query between "STP" and "FAV" on "2020-03-30" at "23:25"
    Then I should see a service "W43236" that stops at
      | stop | arrival | departure |
      | STP  | --:--   | 23:25     |
      | SFA  | 23:31   | 23:32     |
      | EBD  | 23:42   | 23:43     |
      | GRV  | 23:47   | 23:48     |
      | SOO  | 23:58   | 23:59     |
      | RTR  | 00:02   | 00:02     |
      | CTM  | 00:05   | 00:06     |
      | GLM  | 00:10   | 00:10     |
      | RAI  | 00:15   | 00:15     |
      | SIT  | 00:22   | 00:23     |
      | FAV  | 00:31   | --:--     |
    When I query between "STP" and "FAV" on "2020-04-06" at "23:25"
    Then I should not see a service "W43236" in the results

  Scenario: Service between BKG and GPO is cancelled on a particular day
    Given a query between "BKG" and "GPO" on "2020-03-30" at "22:03"
    Then I should see a service "G38093" that stops at
      | stop | arrival | departure |
      | BKG  | --:--   | 22:03     |
      | WGR  | 22:07   | 22:07     |
      | WNP  | 22:10   | 22:10     |
      | LER  | 22:12   | 22:12     |
      | LEM  | 22:14   | 22:14     |
      | WMW  | 22:17   | 22:17     |
      | BHO  | 22:19   | 22:19     |
      | STO  | 22:22   | 22:23     |
      | HRY  | 22:26   | 22:26     |
      | CRH  | 22:29   | 22:29     |
      | UHL  | 22:31   | 22:31     |
      | GPO  | 22:38   | --:--     |
    When I query between "BKG" and "GPO" on "2020-04-06" at "22:03"
    Then I should not see a service "G38093" in the results

  Scenario: Service between KGX and SVG is cancelled on a particular day
    Given a query between "KGX" and "SVG" on "2020-03-30" at "23:51"
    Then I should see a service "C02680" that stops at
      | stop | arrival | departure |
      | KGX  | --:--   | 23:51     |
      | FPK  | 23:57   | 23:58     |
      | HGY  | 00:01   | 00:01     |
      | HRN  | 00:03   | 00:03     |
      | AAP  | 00:06   | 00:07     |
      | BOP  | 00:09   | 00:09     |
      | PAL  | 00:12   | 00:12     |
      | WIH  | 00:14   | 00:15     |
      | GPK  | 00:17   | 00:17     |
      | ENC  | 00:19   | 00:19     |
      | GDH  | 00:21   | 00:22     |
      | CWH  | 00:25   | 00:25     |
      | CUF  | 00:28   | 00:28     |
      | BAY  | 00:33   | 00:33     |
      | HFN  | 00:37   | 00:38     |
      | WAS  | 00:44   | 00:44     |
      | SVG  | 00:51   | --:--     |
    When I query between "KGX" and "SVG" on "2020-04-06" at "23:51"
    Then I should not see a service "C02680" in the results

