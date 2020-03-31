package io.ljn.jp.test;

import io.ljn.jp.test.runner.api.ApiResponse;
import io.ljn.jp.test.runner.api.HttpClient;
import io.ljn.jp.test.runner.api.JourneyPlannerApi;
import org.junit.Test;

import static org.junit.Assert.assertNotNull;

public class AppTest {

    private JourneyPlannerApi journeyPlanner = new JourneyPlannerApi(
        new HttpClient()
    );

    @Test
    public void debugJourney() {
        ApiResponse response = journeyPlanner.planJourney("EDB", "BHM", "2020-03-04", "05:30", "");
        String journeys = response.outwardToString();

        System.out.println(journeys);
        assertNotNull(journeys);
    }

}
