package io.ljn.jp.test;

import io.ljn.jp.test.runner.api.ApiResponse;
import io.ljn.jp.test.runner.api.HttpClient;
import io.ljn.jp.test.runner.api.JourneyPlannerApi;
import io.ljn.jp.test.runner.journey.Journey;
import io.ljn.jp.test.runner.journey.StopTime;
import io.ljn.jp.test.runner.journey.TimetableLeg;
import org.junit.Test;

import java.util.stream.Collectors;

import static org.junit.Assert.assertNotNull;

public class AppTest {

    private JourneyPlannerApi journeyPlanner = new JourneyPlannerApi(
        new HttpClient()
    );

    @Test
    public void debugJourney() {
        ApiResponse response = journeyPlanner.planJourney("EDB", "BHM", "2020-03-04", "05:30", "");
        String journeys = response.outboundJourneyList
            .stream()
            .map(this::journeyToString)
            .collect(Collectors.joining("\n\n"));

        System.out.println(journeys);
        assertNotNull(journeys);
    }

    private String journeyToString(Journey journey) {
        String legs = journey.tisSegmentList.stream().map(this::legToString).collect(Collectors.joining("\n\t"));
        TimetableLeg firstLeg = journey.tisSegmentList.get(0);
        StopTime firstStop = firstLeg.getTisCallingPointList().get(0);
        TimetableLeg lastLeg = journey.tisSegmentList.get(journey.tisSegmentList.size() - 1);
        StopTime lastStop = lastLeg.tisCallingPointList.get(lastLeg.tisCallingPointList.size() - 1);

        return String.format(
            "%s (%s) -> %s (%s)\n\t%s",
            firstStop.getCrsCode(),
            firstStop.getPublicDepartureTime(),
            lastStop.getCrsCode(),
            lastStop.getPublicArrivalTime(),
            legs
        );
    }

    private String legToString(TimetableLeg leg) {
        StopTime firstStop = leg.getTisCallingPointList().get(0);
        StopTime lastStop = leg.tisCallingPointList.get(leg.tisCallingPointList.size() - 1);

        return String.format(
            "%s (%s) -> %s (%s)",
            firstStop.getCrsCode(),
            firstStop.getPublicDepartureTime(),
            lastStop.getCrsCode(),
            lastStop.getPublicArrivalTime()
        );
    }
}
