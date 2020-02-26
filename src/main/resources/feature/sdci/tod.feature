@skipped
Feature: SDCI+ for ToD transactions

  Scenario: ToD Sale
    Given I have created an order with "a return" ticket for "2" passengers, including "2" reservations each
    Then I should generate the following SDCI+
      | record type | value | credit / debit marker | credit / debit value | sundry code |
      | CF          | N/A   | N/A                   | N/A                  | N/A         |
      | BP          | 1000  | debit                 | debit                | 91385       |
      | CW          | 1000  | debit                 | debit                | N/A         |

  Scenario: ToD non-issue
    Given I have created an order with "a return" ticket for "2" passengers, including "2" reservations each
    When I non-issue that order
    Then I should generate the following SDCI+
      | record type | value | credit / debit marker | credit / debit value | sundry code |
      | CF          | N/A   | N/A                   | N/A                  | N/A         |
      | BP          | 1000  | debit                 | debit                | 91385       |
      | CW          | 1000  | debit                 | debit                | N/A         |
      | CF          | N/A   | N/A                   | N/A                  | N/A         |
      | BR          | 1000  | debit                 | credit               | 91385       |
      | CW          | 1000  | credit                | credit               | N/A         |

  Scenario: Uncollected ToD refund
    Given I have non-issued an order with "a return" ticket for "2" passengers, including "2" reservations each
    When I refund all tickets in the order before it is collected
    Then I should generate the following SDCI+
      | record type | value | credit / debit marker | credit / debit value | sundry code |
      | CF          | N/A   | N/A                   | N/A                  | N/A         |
      | BP          | 1000  | debit                 | debit                | 91385       |
      | CW          | 1000  | debit                 | debit                | N/A         |
      | CF          | N/A   | N/A                   | N/A                  | N/A         |
      | BE          | 500   | N/A                   | debit                | N/A         |
      | BE          | 0     | N/A                   | debit                | N/A         |
      | BE          | 500   | N/A                   | debit                | N/A         |
      | BE          | 0     | N/A                   | debit                | N/A         |
      | BP          | 1000  | credit                | credit               | 92385       |
      | CF          | N/A   | N/A                   | N/A                  | N/A         |
      | BS          | 500   | N/A                   | credit               | N/A         |
      | BS          | 0     | credit                | credit               | N/A         |
      | BS          | 500   | N/A                   | credit               | N/A         |
      | BS          | 0     | credit                | credit               | N/A         |
      | BP          | 100   | debit                 | debit                | 91013       |
      | CW          | 900   | credit                | credit               | N/A         |
