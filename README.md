# Journey Planner Tests

Functional tests for a UK rail journey planner written in Gherkin syntax.

These tests aim to cover the application of:

* Timetables
  * Timetable overlays
  * Cancellation records
  * Use of public time rather than scheduled time
  * Schedule associations
  * Transfers
  * TOC specific interchange
* Fares
  * NDFs overriding flow fares
  * Cluster fares being overridden by NLC fares
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
