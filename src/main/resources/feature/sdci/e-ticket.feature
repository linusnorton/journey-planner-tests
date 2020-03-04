@sdci
Feature: SDCI+ for e-ticket transactions

  Scenario: e-ticket sale
    Given I have created an order with "a return" ticket for "2" passengers, including "2" reservations each
    Then I should generate the following SDCI+
      | record type | value | credit / debit marker | credit / debit value | sundry code |
      | CG          | N/A   | N/A                   | N/A                  | N/A         |
      | BE          | 500   | N/A                   | debit                | N/A         |
      | BE          | 0     | N/A                   | debit                | N/A         |
      | BE          | 500   | N/A                   | debit                | N/A         |
      | BE          | 0     | N/A                   | debit                | N/A         |
      | CW          | 1000  | debit                 | debit                | N/A         |

  Scenario: e-ticket non-issue
    Given I have created an order with "a return" ticket for "2" passengers, including "2" reservations each
    When I non-issue that order
    Then I should generate the following SDCI+
      | record type | value | credit / debit marker | credit / debit value | sundry code |
      | CG          | N/A   | N/A                   | N/A                  | N/A         |
      | BE          | 500   | N/A                   | debit                | N/A         |
      | BE          | 0     | N/A                   | debit                | N/A         |
      | BE          | 500   | N/A                   | debit                | N/A         |
      | BE          | 0     | N/A                   | debit                | N/A         |
      | CW          | 1000  | debit                 | debit                | N/A         |
      | CG          | N/A   | N/A                   | N/A                  | N/A         |
      | BF          | 500   | N/A                   | debit                | N/A         |
      | BF          | 0     | N/A                   | debit                | N/A         |
      | BF          | 500   | N/A                   | debit                | N/A         |
      | BF          | 0     | N/A                   | debit                | N/A         |
      | CW          | 1000  | credit                | credit               | N/A         |

  Scenario: e-ticket refund
    Given I have non-issued an order with "a return" ticket for "2" passengers, including "2" reservations each
    When I refund all tickets in the order before it is collected
    Then I should generate the following SDCI+
      | record type | value | credit / debit marker | credit / debit value | sundry code |
      | CG          | N/A   | N/A                   | N/A                  | N/A         |
      | BE          | 500   | N/A                   | debit                | N/A         |
      | BE          | 0     | N/A                   | debit                | N/A         |
      | BE          | 500   | N/A                   | debit                | N/A         |
      | BE          | 0     | N/A                   | debit                | N/A         |
      | CW          | 1000  | debit                 | debit                | N/A         |
      | CG          | N/A   | N/A                   | N/A                  | N/A         |
      | BS          | 500   | N/A                   | credit               | N/A         |
      | BS          | 0     | credit                | credit               | N/A         |
      | BS          | 500   | N/A                   | credit               | N/A         |
      | BS          | 0     | credit                | credit               | N/A         |
      | BP          | 100   | debit                 | debit                | 91311       |
      | CW          | 900   | credit                | credit               | N/A         |
