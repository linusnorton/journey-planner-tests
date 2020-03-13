@journey-planning @pending
Feature: The journey planner should make use of transfers to connect trains

  Scenario: Journeys between NRW and WWW can go via PBO or use a transfer to connect LST to EUS to go via London
    Given a query between "NRW" and "WWW" on "a weekday" at "07:30"
    Then I should see the following transfer patterns
      | NRW, ELY, BHM, BMO, WWW      |
      | NRW, LST, EUS, BHM, BMO, WWW |
      | NRW, PBO, BHM, BMO, WWW      |

  Scenario: Journeys from FAV to SHF should offer a walking route via London and a non-walking route via Chesterfield
    Given a query between "FAV" and "SHF" on "a weekday" at "05:45"
    Then I should see the following transfer patterns
      | FAV, STP, KGX, RET, SHF |
      | FAV, STP, SHF           |
    And I should see a fare "SOS" on "00200"
    And I should see a fare "SOS" on "00129"

  Scenario: Journeys between CBW and DVP should involve a walk from CBW to CBE and then train to DVP
    Given a query between "CBW" and "DVP" on "a weekday" at "9:00"
    Then I should see the following transfer patterns
      | CBW, CBE, DVP |
      | CBW, AFK, DVP |
