Feature: SDCI+ for ToD transactions

  Scenario: ToD Sale
    Given I have created an order with "a return" ticket for "2" passengers, including "2" reservations each
    Then I should generate the following SDCI+
      | record type | value | credit / debit marker | credit / debit value |
      | CF          | N/A   | N/A                   | N/A                  |
      | BP          | 500   | debit                 | debit                |
      | BP          | 0     | debit                 | debit                |
      | BP          | 500   | debit                 | debit                |
      | BP          | 0     | debit                 | debit                |
      | CW          | 1000  | debit                 | debit                |

  Scenario: ToD non-issue
    Given I have non-issued an order with "a return" ticket for "2" passengers, including "2" reservations each
    Then I should generate the following SDCI+
      | record type | value | credit / debit marker | credit / debit value |
      | CF          | N/A   | N/A                   | N/A                  |
      | BR          | 500   | debit                 | credit               |
      | BR          | 0     | debit                 | credit               |
      | BR          | 500   | debit                 | credit               |
      | BR          | 0     | debit                 | credit               |
      | CW          | 1000  | credit                | credit               |
