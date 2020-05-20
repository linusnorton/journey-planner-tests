@journey-planning
Feature: The journey planner should offer the user multiple routes

  Scenario: Journeys between OXF and ARU have a number of routes
    Given a query between "OXF" and "ARU" on "a weekday" at "05:30"
    Then I should see the following transfer patterns
      | OXF, RDG, GTW, ARU |
      | OXF, PAD, VIC, ARU |
      | OXF, DID, PAD, VIC, ARU |

  Scenario: Journeys between EDB and BHM have direct and indirect services
    Given a query between "EDB" and "BHM" on "a weekday" at "05:30"
    Then I should see the following transfer patterns
      | EDB, NCL, BHM |
      | EDB, WVH, BHM |
      | EDB, BHM |

  Scenario: Journeys between BMH and MAN have direct and indirect services
    Given a query between "BMH" and "MAN" on "a weekday" at "06:00"
    Then I should see the following transfer patterns
      | BMH, MAN |
      | BMH, WAT, EUS, MAN |
      | BMH, WIN, BHM, MAN |

  Scenario: Journeys between LIV and LEI have a number of routes
    Given a query between "LIV" and "LEI" on "a weekday" at "06:00"
    Then I should see the following transfer patterns
      | LIV, STA, NUN, LEI |
      | LIV, BHM, LEI |
      | LIV, MAN, NUN, LEI |
      | LIV, MCV, MAN, NUN, LEI |

  Scenario: Journeys between HNH and SMD have a number of routes
    Given a query between "HNH" and "SMD" on "a weekday" at "07:00"
    Then I should see the following transfer patterns
      | HNH, STP, LEI, SMD |
      | HNH, BFR, STP, LEI, SMD |
      | HNH, BFR, PBO, SMD |

  Scenario: Journeys between NRW and COV have a number of routes
    Given a query between "NRW" and "COV" on "a weekday" at "14:00"
    Then I should see the following transfer patterns
      | NRW, LST, EUS, COV |
#      These all seem redundant now
#      | NRW, CBG, FPK, EUS, COV |
#      | NRW, ELY, CBG, KGX, EUS, COV |
#      | NRW, PBO, BHM, COV |
#      | NRW, ELY, NUN, COV |

  Scenario: Journeys between BAU and SWA have a number of routes
    Given a query between "BAU" and "SWA" on "a weekday" at "07:00"
    Then I should see the following transfer patterns
      | BAU, HAB, SHF, BHM, BPW, SWA |
      | BAU, HAB, SPT, BPW, SWA |

  Scenario: Journeys between WFJ and STN have a number of routes
    Given a query between "WFJ" and "STN" on "a weekday" at "07:00"
    Then I should see the following transfer patterns
      | WFJ, EUS, KGX, EDB, STN |
      | WFJ, EUS, PRE, HYM, STN |
      | WFJ, MKC, CRE, PRE, HYM, STN |
      | WFJ, EUS, KGX, STN |
