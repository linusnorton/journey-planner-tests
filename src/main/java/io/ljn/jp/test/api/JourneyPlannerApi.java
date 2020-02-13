package io.ljn.jp.test.api;

import java.io.IOException;

/**
 * Provides access to the journey planner
 */
public class JourneyPlannerApi {
    private final HttpClient http;

    public JourneyPlannerApi(HttpClient http) {
        this.http = http;
    }

    public void planJourney(String origin, String destination, String date, String time) {
        try {
            http.get("jp?origin=%s&destination=%s&date=%s&time=%s", origin, destination, date, time);
        }
        catch (IOException e) {
            throw new JourneyPlannerException("Unable to plan journey", e);
        }
    }
}
