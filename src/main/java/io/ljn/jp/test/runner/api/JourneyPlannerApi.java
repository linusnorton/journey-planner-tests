package io.ljn.jp.test.runner.api;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import okhttp3.Response;

import java.io.IOException;

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

    public ApiResponse planJourney(String origin, String destination, String date, String time, String railcard) {
        JourneyPlannerQuery query = new JourneyPlannerQuery(origin, destination, date, time, railcard);
        String postJson = requestAdapter.toJson(query);

        try {
            Response response = http.post("/apiproxy/train/tisuk/fare/fare/train", postJson);

            if (!response.isSuccessful()) {
                throw new JourneyPlannerException("Unable to plan journey: " + postJson);
            }

            return responseAdapter.fromJson(response.body().source());
        } catch (IOException e) {
            throw new JourneyPlannerException("Unable to plan journey: " + postJson, e);
        }
    }
}
