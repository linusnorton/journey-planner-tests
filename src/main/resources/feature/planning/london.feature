@journey-planning
Feature: The journey planner should offer routes via London

  Scenario: Journeys between KGX and MAN can go via EUS using the underground
    Given a query between "KGX" and "MAN" on "a weekday" at "09:15"
    Then I should see the following transfer patterns
      | KGX, EUS, MAN |

  Scenario: Journeys between BMH and AFK should go via London not using the tube
    Given a query between "BMH" and "AFK" on "a weekday" at "09:00"
    Then I should see the following transfer patterns
      | BMH, WAT, WAE, AFK |

  Scenario: Journeys between London and WEH should go from LST via SRA
    Given a query between "1072" and "WEH" on "a weekday" at "12:00"
    Then I should see the following transfer patterns
      | MYB, WEH |
      | LBG, WEH |
      | PAD, WEH |
      | WAT, WEH |
      | LST, SRA, WEH |

  Scenario: Journeys between BDM and OXF should go via ZFD
    Given a query between "BDM" and "OXF" on "a weekday" at "07:30"
    Then I should see the following transfer patterns
      | BDM, ZFD, PAD, OXF |
      | BDM, STP, MYB, OXF |
      | BDM, ZFD, PAD, RDG, OXF |
      | BDM, STP, PAD, OXF |

  Scenario: Journeys between SVK and EDL should go via ZFD
    Given a query between "SVK" and "EDL" on "a weekday" at "08:00"
    Then I should see the following transfer patterns
      | SVK, LST, STP, SHF, EDL |
      | SVK, LST, EUS, MAN, EDL |
