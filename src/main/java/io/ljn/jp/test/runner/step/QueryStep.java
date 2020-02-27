package io.ljn.jp.test.runner.step;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.ljn.jp.test.runner.api.JourneyPlannerApi;
import io.ljn.jp.test.runner.journey.Journey;
import io.ljn.jp.test.runner.journey.StopTime;
import lombok.RequiredArgsConstructor;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;

@RequiredArgsConstructor
@SuppressWarnings({"checkstyle:MethodName"})
public class QueryStep {
    private final JourneyPlannerApi journeyPlanner;
    private List<Journey> journeys = new ArrayList<>();

    @Given("a/I query between {string} and {string} on {string} at {string}")
    public void aQueryBetweenAndOnAt(String origin, String destination, String date, String time) {
        journeys = journeyPlanner.planJourney(origin, destination, date, time).outboundJourneyList;

        if (journeys == null || journeys.size() == 0) {
            throw new NoResultsException(String.format("No results between %s and %s on %s %s", origin, destination, date, time));
        }
    }

    @Then("I should see a service {string} that stops at")
    public void iShouldSeeAServiceThatStopsAt(String tuid, DataTable dataTable) {
        String expected = dataTable
            .asMaps()
            .stream()
            .map(stopTime -> stopTime.get("stop") + "_" + stopTime.get("arrival") + "_" + stopTime.get("departure"))
            .reduce((acc, item) -> acc + "," + item)
            .get();

        String actual = journeys
            .stream()
            .filter(j -> j.tisSegmentList.get(0).tisTrainInfo.trainUid.equals(tuid))
            .map(j -> serialize(j.tisSegmentList.get(0).tisCallingPointList))
            .findFirst()
            .orElseThrow(() -> new MissingTrainException("Could not find: " + tuid));

        assertEquals(expected, actual);
    }

    private String serialize(List<StopTime> tisCallingPointList) {
        return tisCallingPointList
            .stream()
            .map(s -> s.getCrsCode() + "_" + getTime(s.getPublicArrivalTime()) + "_" + getTime(s.getPublicDepartureTime()))
            .reduce((acc, item) -> acc + "," + item)
            .get();
    }

    private String getTime(String time) {
        return time == null ? "--:--" : time;
    }

    @Then("I should not see a service {string} in the results")
    public void iShouldNotSeeAServiceInTheResults(String tuid) {
        boolean actual = journeys
            .stream()
            .anyMatch(j -> j.tisSegmentList.get(0).tisTrainInfo.trainUid.equals(tuid));

        assertFalse(actual);
    }

    @Then("I should see a fare {string} on {string} that is {string} pence")
    public void iShouldSeeAFareOnThatIsPence(String ticketCode, String routeCode, String price) {

    }
}
