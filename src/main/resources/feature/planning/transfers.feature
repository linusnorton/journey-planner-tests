@journey-planning
Feature: The journey planner should make use of transfers to connect trains

  Scenario: Journeys between NRW and WWW can go via PBO or use a transfer to connect LST to EUS to go via London
    Given a query between "NRW" and "WWW" on "a weekday" at "07:30"
    Then I should see the following transfer patterns
      # Can be ELY or PBO
      #      | NRW, ELY, BHM, BMO, WWW      |
      #      | NRW, PBO, BHM, BSW, WWW      |
      | NRW, LST, EUS, BHM, BMO, WWW |

#  Scenario: Journeys from FAV to SHF should offer a walking route via London and a non-walking route via Chesterfield
#    Given a query between "FAV" and "SHF" on "a weekday" at "05:45"
#    Then I should see the following transfer patterns
#      | FAV, STP, KGX, RET, SHF |
#      | FAV, STP, SHF           |
#    And I should see a fare "SOS" on "00200"
#    And I should see a fare "SOS" on "00129"

  Scenario: Journeys between CBW and DVP should involve a walk from CBW to CBE and then train to DVP
    Given a query between "CBW" and "DVP" on "a weekday" at "09:00"
    Then I should see the following transfer patterns
      | CBW, CBE, DVP |
      # Disappeared?
      #      | CBW, AFK, DVP |

  Scenario: Journeys between LUA and FIL should involve a bus from LUA to LTN and then train
    Given a query between "LUA" and "FIL" on "a weekday" at "09:00"
    Then I should see the following transfer patterns
      | LUA, LTN, SHF, HUL, FIL |
