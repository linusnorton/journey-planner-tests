# Journey Planner Tests

Functional tests for a UK rail journey planner written in Gherkin syntax.

These tests aim to cover the application of:

* Schedule Associations
* Timetable overlays
* Cancellation records
* Public time rather than scheduled
* Transfers
* TOC specific interchange
* NDFs overriding flow fares
* Application of daily updates
* Routeing guide
  * Direct services always valid
  * Shortest service always valid
  * Doublebacks
  * Mapped journey rules
  * Easements
  * Correct handling of the London group
  * NFM64

# Run

```
./gradlew cucumber
```

# Generate

Due the nature of the timetable data the tests need to be regenerated periodically. This requires a mysql database with the lastest DTD timetable loaded.

```
./gradlew run
```
