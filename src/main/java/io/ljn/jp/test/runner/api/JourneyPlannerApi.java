package io.ljn.jp.test.runner.api;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import io.ljn.jp.test.runner.journey.Journey;
import okhttp3.Response;

import java.io.IOException;
import java.util.List;

/**
 * Provides access to the journey planner
 */
public class JourneyPlannerApi {
    private final HttpClient http;
    private final Moshi moshi = new Moshi.Builder().build();
    private final JsonAdapter<ApiResponse> responseAdapter = moshi.adapter(ApiResponse.class);
    private final JsonAdapter<JourneyPlannerQuery> requestAdapter = moshi.adapter(JourneyPlannerQuery.class);

    public JourneyPlannerApi(HttpClient http) {
        this.http = http;
    }

    public List<Journey> planJourney(String origin, String destination, String date, String time) {
        JourneyPlannerQuery query = new JourneyPlannerQuery(origin, destination, date, time);
        String postJson = requestAdapter.toJson(query);

        try {
            Response response = http.post("/apiproxy/train/tisuk/fare/fare/train", postJson);
            ApiResponse responseJson = responseAdapter.fromJson(response.body().source());

            return responseJson.outboundJourneyList;
        } catch (IOException e) {
            throw new JourneyPlannerException("Unable to plan journey: " + postJson, e);
        }
    }
}
