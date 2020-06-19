@timetable
Feature: Schedule cancellations
  A schedule might be cancelled for a subset of dates using an overlay record

  Scenario: Service between BTN and BDM is cancelled on a particular day
    Given a query between "BTN" and "BDM" on "2020-06-29" at "22:55"
    Then I should see a service "L24309" that stops at
      | stop | arrival | departure |
      | BTN  | --:--   | 22:55     |
      | PRP  | 22:59   | 22:59     |
      | HSK  | 23:05   | 23:05     |
      | BUG  | 23:09   | 23:09     |
      | WVF  | 23:11   | 23:11     |
      | HHE  | 23:15   | 23:16     |
      | BAB  | 23:21   | 23:21     |
      | TBD  | 23:27   | 23:28     |
      | GTW  | 23:32   | 23:34     |
      | ECR  | 23:52   | 23:53     |
      | BFR  | 00:18   | 00:22     |
      | ZFD  | 00:26   | 00:26     |
      | STP  | 00:30   | 00:31     |
      | WHP  | 00:39   | 00:39     |
      | SAC  | 00:56   | 00:56     |
      | HPD  | 01:02   | 01:02     |
      | LTN  | 01:07   | 01:08     |
      | LUT  | 01:11   | 01:12     |
      | LEA  | 01:16   | 01:16     |
      | HLN  | 01:21   | 01:21     |
      | FLT  | 01:25   | 01:25     |
      | BDM  | 01:36   | --:--     |
    When I query between "BTN" and "BDM" on "2020-07-06" at "22:55"
    Then I should not see a service "L24309" in the results

  Scenario: Service between BDM and BTN is cancelled on a particular day
    Given a query between "BDM" and "BTN" on "2020-06-29" at "23:45"
    Then I should see a service "Y08384" that stops at
      | stop | arrival | departure |
      | BDM  | --:--   | 23:45     |
      | FLT  | 23:56   | 23:56     |
      | HLN  | 00:01   | 00:01     |
      | LEA  | 00:06   | 00:06     |
      | LUT  | 00:09   | 00:10     |
      | LTN  | 00:12   | 00:13     |
      | HPD  | 00:18   | 00:18     |
      | SAC  | 00:24   | 00:25     |
      | WHP  | 00:42   | 00:42     |
      | STP  | 00:52   | 00:52     |
      | BFR  | 01:01   | 01:02     |
      | ECR  | 01:28   | 01:28     |
      | PUR  | 01:34   | 01:34     |
      | RDH  | 01:45   | 01:46     |
      | HOR  | 01:52   | 01:52     |
      | GTW  | 01:56   | 01:58     |
      | TBD  | 02:03   | 02:04     |
      | HHE  | 02:13   | 02:14     |
      | BTN  | 02:28   | --:--     |
    When I query between "BDM" and "BTN" on "2020-07-06" at "23:45"
    Then I should not see a service "Y08384" in the results

  Scenario: Service between LIV and CTR is cancelled on a particular day
    Given a query between "LIV" and "CTR" on "2020-06-30" at "23:23"
    Then I should see a service "Y34224" that stops at
      | stop | arrival | departure |
      | LIV  | --:--   | 23:23     |
      | LPY  | 23:33   | 23:34     |
      | RUN  | 23:42   | 23:42     |
      | FRD  | 23:50   | 23:51     |
      | HSB  | 23:55   | 23:55     |
      | CTR  | 00:10   | --:--     |
    When I query between "LIV" and "CTR" on "2020-07-07" at "23:23"
    Then I should not see a service "Y34224" in the results

  Scenario: Service between BDM and BTN is cancelled on a particular day
    Given a query between "BDM" and "BTN" on "2020-06-29" at "22:45"
    Then I should see a service "L24310" that stops at
      | stop | arrival | departure |
      | BDM  | --:--   | 22:45     |
      | FLT  | 22:56   | 22:56     |
      | HLN  | 23:00   | 23:00     |
      | LEA  | 23:05   | 23:05     |
      | LUT  | 23:09   | 23:10     |
      | LTN  | 23:12   | 23:13     |
      | HPD  | 23:18   | 23:18     |
      | SAC  | 23:24   | 23:25     |
      | WHP  | 23:41   | 23:41     |
      | STP  | 23:51   | 23:51     |
      | ZFD  | 23:55   | 23:56     |
      | BFR  | 23:59   | 00:02     |
      | ECR  | 00:27   | 00:28     |
      | GTW  | 00:48   | 00:49     |
      | TBD  | 00:54   | 00:55     |
      | HHE  | 01:04   | 01:04     |
      | WVF  | 01:08   | 01:08     |
      | BUG  | 01:10   | 01:10     |
      | HSK  | 01:14   | 01:14     |
      | PRP  | 01:20   | 01:20     |
      | BTN  | 01:24   | --:--     |
    When I query between "BDM" and "BTN" on "2020-07-06" at "22:45"
    Then I should not see a service "L24310" in the results

  Scenario: Service between CHX and DFD is cancelled on a particular day
    Given a query between "CHX" and "DFD" on "2020-07-01" at "23:50"
    Then I should see a service "W58582" that stops at
      | stop | arrival | departure |
      | CHX  | --:--   | 23:50     |
      | WAE  | 23:52   | 23:53     |
      | LBG  | 23:57   | 23:59     |
      | LEW  | 00:07   | 00:08     |
      | HGR  | 00:12   | 00:13     |
      | LEE  | 00:15   | 00:15     |
      | MTG  | 00:18   | 00:18     |
      | NEH  | 00:20   | 00:21     |
      | SID  | 00:24   | 00:24     |
      | AYP  | 00:27   | 00:27     |
      | BXY  | 00:29   | 00:29     |
      | CRY  | 00:32   | 00:33     |
      | DFD  | 00:38   | --:--     |
    When I query between "CHX" and "DFD" on "2020-07-08" at "23:50"
    Then I should not see a service "W58582" in the results

