@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between RDH and TON is cancelled on a particular day
    Given a query between "RDH" and "TON" on "2020-05-02" at "00:16"
    Then I should see a service "L03092" that stops at
      | stop | arrival | departure |
      | RDH  | --:--   | 00:16     |
      | NUF  | 00:20   | 00:21     |
      | GDN  | 00:26   | 00:26     |
      | EBR  | 00:32   | 00:32     |
      | PHR  | 00:38   | 00:38     |
      | LIH  | 00:42   | 00:42     |
      | TON  | 00:46   | --:--     |
    When I query between "RDH" and "TON" on "2020-05-09" at "00:16"
    Then I should not see a service "L03092" in the results

  Scenario: Service between HUL and LDS is cancelled on a particular day
    Given a query between "HUL" and "LDS" on "2020-05-02" at "23:08"
    Then I should see a service "Y33213" that stops at
      | stop | arrival | departure |
      | HUL  | --:--   | 23:08     |
      | BUH  | 23:19   | 23:20     |
      | SBY  | 23:39   | 23:40     |
      | LDS  | 00:04   | --:--     |
    When I query between "HUL" and "LDS" on "2020-05-09" at "23:08"
    Then I should not see a service "Y33213" in the results

  Scenario: Service between HUD and LDS is cancelled on a particular day
    Given a query between "HUD" and "LDS" on "2020-04-27" at "23:54"
    Then I should see a service "Y33543" that stops at
      | stop | arrival | departure |
      | HUD  | --:--   | 23:54     |
      | DHN  | 23:57   | 23:58     |
      | MIR  | 00:03   | 00:03     |
      | RVN  | 00:07   | 00:08     |
      | DEW  | 00:10   | 00:10     |
      | BTL  | 00:13   | 00:13     |
      | MLY  | 00:18   | 00:18     |
      | COT  | 00:21   | 00:22     |
      | LDS  | 00:29   | --:--     |
    When I query between "HUD" and "LDS" on "2020-05-04" at "23:54"
    Then I should not see a service "Y33543" in the results

  Scenario: Service between LBG and ECR is cancelled on a particular day
    Given a query between "LBG" and "ECR" on "2020-05-02" at "00:10"
    Then I should see a service "L06949" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 00:10     |
      | NXG  | 00:16   | 00:16     |
      | BCY  | 00:19   | 00:19     |
      | HPA  | 00:21   | 00:21     |
      | FOH  | 00:24   | 00:24     |
      | SYD  | 00:27   | 00:27     |
      | PNW  | 00:29   | 00:29     |
      | ANZ  | 00:31   | 00:31     |
      | NWD  | 00:34   | 00:35     |
      | ECR  | 00:38   | --:--     |
    When I query between "LBG" and "ECR" on "2020-05-09" at "00:10"
    Then I should not see a service "L06949" in the results

  Scenario: Service between LBG and ECR is cancelled on a particular day
    Given a query between "LBG" and "ECR" on "2020-05-02" at "00:35"
    Then I should see a service "L06950" that stops at
      | stop | arrival | departure |
      | LBG  | --:--   | 00:35     |
      | NXG  | 00:41   | 00:41     |
      | BCY  | 00:44   | 00:44     |
      | HPA  | 00:46   | 00:46     |
      | FOH  | 00:49   | 00:49     |
      | SYD  | 00:52   | 00:52     |
      | PNW  | 00:54   | 00:54     |
      | ANZ  | 00:56   | 00:56     |
      | NWD  | 00:59   | 01:08     |
      | ECR  | 01:13   | --:--     |
    When I query between "LBG" and "ECR" on "2020-05-09" at "00:35"
    Then I should not see a service "L06950" in the results

