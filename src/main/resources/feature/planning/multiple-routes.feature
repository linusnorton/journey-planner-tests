@journey-planning @pending
Feature: The journey planner should offer the user multiple routes

  Scenario: Journeys between OXF and ARU have a number of routes
    Given a query between "OXF" and "ARU" on "a weekday" at "05:30"
    Then I should see the following transfer patterns
      | OXF, DID, RDG, GTW, ARU |
      | OXF, PAD, VIC, ARU |
      | OXF, DID, PAD, VIC, ARU |
      | OXF, RDG, BSK, FRM, FOD, ARU |

  Scenario: Journeys between EDB and BHM have direct and indirect services
    Given a query between "EDB" and "BHM" on "a weekday" at "05:30"
    Then I should see the following transfer patterns
      | EDB, NCL, BHM |
      | EDB, BHM |

  Scenario: Journeys between BMH and MAN have direct and indirect services
    Given a query between "BMH" and "MAN" on "a weekday" at "06:00"
    Then I should see the following transfer patterns
      | BMH, MAN |
      | BMH, SOU, BHM, MAN |
      | BMH, WAT, EUS, MAN |

  Scenario: Journeys between LIV and LEI have a number of routes
    Given a query between "LIV" and "LEI" on "a weekday" at "06:00"
    Then I should see the following transfer patterns
      | LIV, TAM, DBY, LEI |
      | LIV, CRE, NUN, LEI |
      | LIV, BHM, LEI |
      | LIV, MAN, NUN, LEI |
      | LIV, MCV, MAN, NUN, LEI |

