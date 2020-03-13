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

  Scenario: Journeys between HNH and SMD have a number of routes
    Given a query between "HNH" and "SMD" on "a weekday" at "07:00"
    Then I should see the following transfer patterns
      | HNH, STP, LEI, SMD |
      | HNH, STP, KGX, PDO, SMD |

  Scenario: Journeys between NRW and COV have a number of routes
    Given a query between "NRW" and "COV" on "a weekday" at "14:00"
    Then I should see the following transfer patterns
      | NRW, CBG, FPK, EUS, COV |
      | NRW, ELY, CBG, KGX, EUS, COV |
      | NRW, PBO, BHM, COV |
      | NRW, ELY, NUN, COV |

  Scenario: Journeys between BAU and SWA have a number of routes
    Given a query between "BAU" and "SWA" on "a weekday" at "07:00"
    Then I should see the following transfer patterns
      | BAU, HUU, HUL, SHF, BHM, NWP, SWA |
      | BAU, HAB, SPT, SHR, SWA |
      | BAU, HUU, HUL, MAN, SWA |
      | BAU, HUU, HUL, SHF, DBY, CDF, SWA |

