Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service is cancelled on a particular day
    Given a query between "SOC" and "FST" on "2020-05-18" at "12:12"
    Then I should see a service "Y38710" that stops at
      | stop | arrival | departure |
      | SOC  | --:--   | 12:12     |
      | WCF  | 12:15   | 12:15     |
      | CHW  | 12:17   | 12:17     |
      | LES  | 12:20   | 12:20     |
      | BEF  | 12:24   | 12:24     |
      | PSE  | 12:29   | 12:29     |
      | SFO  | 12:35   | 12:35     |
      | ETL  | 12:38   | 12:38     |
      | TIL  | 12:44   | 12:44     |
      | GRY  | 12:47   | 12:47     |
      | CFH  | 12:51   | 12:51     |
      | OCK  | 12:55   | 12:55     |
      | UPM  | 13:01   | 13:01     |
      | BKG  | 13:09   | 13:09     |
      | WEH  | 13:14   | 13:14     |
      | LHS  | 13:19   | 13:19     |
      | FST  | 13:25   | --:--     |
    When I query between "SOC" and "FST" on "2020-05-25" at "12:12"
    Then I should not see a service "Y38710" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "LST" and "ENF" on "2020-04-03" at "07:15"
    Then I should see a service "G38390" that stops at
      | stop | arrival | departure |
      | LST  | --:--   | 07:15     |
      | HAC  | 07:22   | 07:22     |
      | REC  | 07:25   | 07:25     |
      | SKW  | 07:26   | 07:26     |
      | SMH  | 07:28   | 07:28     |
      | SVS  | 07:30   | 07:31     |
      | BCV  | 07:33   | 07:33     |
      | WHL  | 07:35   | 07:35     |
      | SLV  | 07:37   | 07:37     |
      | EDR  | 07:39   | 07:39     |
      | BHK  | 07:42   | 07:42     |
      | ENF  | 07:48   | --:--     |
    When I query between "LST" and "ENF" on "2020-04-10" at "07:15"
    Then I should not see a service "G38390" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "ORE" and "BTN" on "2020-04-06" at "12:33"
    Then I should see a service "W21705" that stops at
      | stop | arrival | departure |
      | ORE  | --:--   | 12:33     |
      | HGS  | 12:36   | 12:37     |
      | SLQ  | 12:40   | 12:40     |
      | BEX  | 12:47   | 12:47     |
      | EBN  | 13:03   | 13:10     |
      | PLG  | 13:17   | 13:17     |
      | GLY  | 13:26   | 13:26     |
      | LWS  | 13:32   | 13:33     |
      | FMR  | 13:40   | 13:41     |
      | BTN  | 13:48   | --:--     |
    When I query between "ORE" and "BTN" on "2020-04-13" at "12:33"
    Then I should not see a service "W21705" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "LBG" and "CAT" on "2020-04-06" at "20:14"
    Then I should see a service "L05341" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 20:14     |
      | SBM  | 20:18   | 20:19     |
      | QRP  | 20:22   | 20:22     |
      | PMR  | 20:25   | 20:25     |
      | EDW  | 20:28   | 20:28     |
      | NDL  | 20:30   | 20:30     |
      | TUH  | 20:34   | 20:34     |
      | STE  | 20:38   | 20:38     |
      | SRC  | 20:41   | 20:42     |
      | NRB  | 20:44   | 20:44     |
      | TTH  | 20:47   | 20:47     |
      | SRS  | 20:50   | 20:50     |
      | ECR  | 20:53   | 20:54     |
      | PUR  | 21:01   | 21:03     |
      | KLY  | 21:06   | 21:06     |
      | WHY  | 21:10   | 21:10     |
      | WHS  | 21:12   | 21:12     |
      | CAT  | 21:17   | --:--     |
    When I query between "LBG" and "CAT" on "2020-04-13" at "20:14"
    Then I should not see a service "L05341" in the results

  Scenario: Service is cancelled on a particular day
    Given a query between "NRW" and "LST" on "2020-04-03" at "19:30"
    Then I should see a service "L41982" that stops at
      | stop | arrival | departure |
      | NRW  | --:--   | 19:30     |
      | DIS  | 19:47   | 19:47     |
      | IPS  | 20:10   | 20:10     |
      | MNG  | 20:20   | 20:20     |
      | COL  | 20:29   | 20:30     |
      | LST  | 21:19   | --:--     |
    When I query between "NRW" and "LST" on "2020-04-10" at "19:30"
    Then I should not see a service "L41982" in the results

