package io.ljn.jp.test.runner.step;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.ljn.jp.test.runner.api.ApiResponse;
import io.ljn.jp.test.runner.api.JourneyPlannerApi;
import io.ljn.jp.test.runner.journey.StopTime;
import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

import static io.ljn.jp.test.runner.step.date.DateUtil.getNextWeekday;
import static org.junit.Assert.*;

@RequiredArgsConstructor
@SuppressWarnings({"checkstyle:MethodName"})
public class QueryStep {
    private final JourneyPlannerApi journeyPlanner;
    private ApiResponse response;

    @Given("a/I query between {string} and {string} on {string} at {string}")
    public void aQueryBetweenAndOnAt(String origin, String destination, String date, String time) {
        if (date.equals("a weekday")) {
            date = getNextWeekday();
        }

        response = journeyPlanner.planJourney(origin, destination, date, time);

        if (response.outboundJourneyList == null) {
            throw new NoResultsException(String.format("No results between %s and %s on %s %s", origin, destination, date, time));
        }
    }

    @Then("I should see a service {string} that stops at")
    public void iShouldSeeAServiceThatStopsAt(String tuid, DataTable dataTable) {
        String expected = dataTable
            .asMaps()
            .stream()
            .map(stopTime -> stopTime.get("stop") + "_" + stopTime.get("arrival") + "_" + stopTime.get("departure"))
            .reduce((acc, item) -> acc + "\n" + item)
            .get();

        String actual = response.outboundJourneyList
            .stream()
            .filter(j -> j.tisSegmentList.get(0).tisTrainInfo.trainUid.equals(tuid))
            .map(j -> serialize(j.tisSegmentList.get(0).tisCallingPointList))
            .findFirst()
            .orElseThrow(() -> new MissingTrainException("Could not find: " + tuid));

        assertEquals("Expected " + expected + " to equal " + actual, expected, actual);
    }

    private String serialize(List<StopTime> tisCallingPointList) {
        return tisCallingPointList
            .stream()
            .filter(s -> s.getPublicArrivalTime() != null || s.getPublicDepartureTime() != null)
            .map(s -> s.getCrsCode() + "_" + getTime(s.getPublicArrivalTime()) + "_" + getTime(s.getPublicDepartureTime()))
            .reduce((acc, item) -> acc + "\n" + item)
            .get();
    }

    private String getTime(String time) {
        return time == null ? "--:--" : time.substring(0, 5);
    }

    @Then("I should not see a service {string} in the results")
    public void iShouldNotSeeAServiceInTheResults(String tuid) {
        boolean actual = response.outboundJourneyList
            .stream()
            .anyMatch(j -> j.tisSegmentList.get(0).tisTrainInfo.trainUid.equals(tuid));

        assertFalse("Found " + tuid + " when it should not be present", actual);
    }

    @Then("I should see a fare {string} on {string} that is {string} pence")
    public void iShouldSeeAFareOnThatIsPence(String ticketCode, String routeCode, String price) {
        final float pricePounds = Float.parseFloat(price) / 100;
        boolean actual = response.tisFareList
            .stream()
            .anyMatch(f -> f.fareClassification.ticketCode.equals(ticketCode)
                && f.fareClassification.routeCode.equals(routeCode)
                && f.farePrice.price == pricePounds
            );

        assertTrue("Could not find a fare", actual);
    }

    @Then("I should see a fare {string} on {string}")
    public void iShouldSeeAFareOn(String ticketCode, String routeCode) {
        boolean actual = response.tisFareList
            .stream()
            .anyMatch(f -> f.fareClassification.ticketCode.equals(ticketCode)
                && f.fareClassification.routeCode.equals(routeCode)
            );

        assertTrue("Could not find a fare", actual);
    }

    @Then("I should see the following transfer patterns")
    public void iShouldSeeTheFollowingTransferPatterns(DataTable dataTable) {
        if (response.outboundJourneyList.size() == 0) {
            throw new NoResultsException("No results found");
        }

        List<String> expected = dataTable
            .asList()
            .stream()
            .map(s -> s.replace(" ", ""))
            .collect(Collectors.toList());

        List<String> actual = response.outboundJourneyList
            .stream()
            .map(j -> j.dptLocation.crsCode + "," + j.tisSegmentList.stream().map(l -> l.arrStation.crsCode).collect(Collectors.joining(",")))
            .collect(Collectors.toList());

        for (String pattern : expected) {
            assertTrue("Could not find pattern: " + pattern, actual.contains(pattern));
        }
    }
}
