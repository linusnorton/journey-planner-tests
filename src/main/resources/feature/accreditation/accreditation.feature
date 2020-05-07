@accreditation
Feature: Bulk purchase ToD tickets, e-tickets and m-tickets for accreditation and create a spreadsheet containing the order number

  Scenario:
    Given a spreadsheet "accreditation-tests.xlsx"
    When I purchase tickets from sheet "ToD"
    And I purchase tickets from sheet "eTicket"
    And I purchase tickets from sheet "mTicket"
    Then I should be able to collate the results into "results.xslx"
