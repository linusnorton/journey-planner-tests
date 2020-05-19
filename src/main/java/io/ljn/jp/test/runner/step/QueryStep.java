package io.ljn.jp.test.runner.step;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.ljn.jp.test.runner.api.jp.JourneyPlanResponse;
import io.ljn.jp.test.runner.api.jp.JourneyPlannerApi;
import io.ljn.jp.test.runner.api.jp.JourneyPlannerQuery;
import io.ljn.jp.test.runner.journey.StopTime;
import io.ljn.jp.test.runner.journey.TimetableLeg;
import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

import static io.ljn.jp.test.runner.step.date.DateUtil.getWeekDay;
import static org.junit.Assert.*;

@RequiredArgsConstructor
@SuppressWarnings({"checkstyle:MethodName"})
public class QueryStep {
    private final JourneyPlannerApi journeyPlanner;
    private JourneyPlanResponse response;
    private String origin;
    private String destination;
    private String date;
    private String time;
    private String railcard;

    @Given("a/I query between {string} and {string} on {string} at {string}")
    public void aQueryBetweenAndOnAt(String origin, String destination, String date, String time) {
        aQueryBetweenAndOnAtWithARailcard(origin, destination, date, time, "");
    }

    @Given("a query between {string} and {string} on {string} at {string} with a {string} railcard")
    public void aQueryBetweenAndOnAtWithARailcard(String origin, String destination, String date, String time, String railcard) {
        if (date.equals("a weekday")) {
            date = getWeekDay();
        }

        this.origin = origin;
        this.destination = destination;
        this.date = date;
        this.time = time;
        this.railcard = railcard;

        JourneyPlannerQuery query = new JourneyPlannerQuery(origin, destination, date, time, railcard);
        response = journeyPlanner.planJourney(query);

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
            .filter(j -> j.tisSegmentList.size() == 1)
            .flatMap(j -> j.tisSegmentList.stream())
            .filter(l -> l instanceof TimetableLeg && ((TimetableLeg) l).tisTrainInfo.trainUid.equals(tuid))
            .map(l -> serialize(((TimetableLeg) l).tisCallingPointList))
            .findFirst()
            .orElseThrow(() -> new MissingTrainException("Could not find: " + tuid));

        assertEquals("Expected " + expected + " to equal " + actual, expected, actual);
    }

    private String serialize(List<StopTime> tisCallingPointList) {
        return tisCallingPointList
            .stream()
            .filter(s -> (s.publicArrivalTime != null || s.publicDepartureTime != null)
                         && (!"00:00:00".equals(s.publicArrivalTime) || !"00:00:00".equals(s.publicDepartureTime))
            )
            .map(s -> s.crsCode + "_" + getTime(s.publicArrivalTime) + "_" + getTime(s.publicDepartureTime))
            .reduce((acc, item) -> acc + "\n" + item)
            .get();
    }

    private String getTime(String time) {
        return time == null || time.equals("00:00:00") ? "--:--" : time.substring(0, 5);
    }

    @Then("I should not see a service {string} in the results")
    public void iShouldNotSeeAServiceInTheResults(String tuid) {
        boolean actual = response.outboundJourneyList
            .stream()
            .map(j -> j.tisSegmentList.get(0))
            .filter(l -> l instanceof TimetableLeg && ((TimetableLeg) l).tisTrainInfo.trainUid.equals(tuid))
            .anyMatch(l -> ((TimetableLeg) l).tisTrainInfo.trainUid.equals(tuid));

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
            .map(j -> j.dptLocation.crsCode + "," + j.tisSegmentList.stream().map(l -> l.getArrStation().crsCode).collect(Collectors.joining(",")))
            .collect(Collectors.toList());

        String journeys = response.outwardToString();
        String nreDate = date.substring(8, 10) + date.substring(5, 7) + date.substring(0, 4);
        String nre = String.format("http://ojp.nationalrail.co.uk/service/timesandfares/%s/%s/%s/%s/dep", origin, destination, nreDate, time.replace(":", ""));
        String comparisonUrl = String.format("https://linusnorton.github.io/journey-planner-comparison/?origin=%s&destination=%s&outwardDate=%s&outwardTime=%s", origin, destination, date, time);
        String errorHelp = journeys + "\n\nCheck with: \n\n" + nre + "\n" + comparisonUrl + "\n\n";

        for (String pattern : expected) {
            assertTrue("Could not find pattern: " + pattern + " in \n\n" + errorHelp, actual.contains(pattern));
        }
    }
}
