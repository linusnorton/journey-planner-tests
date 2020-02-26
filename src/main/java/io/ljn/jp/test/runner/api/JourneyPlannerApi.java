package io.ljn.jp.test.runner.api;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import io.ljn.jp.test.runner.journey.Journey;
import okhttp3.Response;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

/**
 * Provides access to the journey planner
 */
public class JourneyPlannerApi {
    private final HttpClient http;
    private final Moshi moshi = new Moshi.Builder().build();
    private final Type responseType = Types.newParameterizedType(ApiResponse.class, List.class, Journey.class);
    private final JsonAdapter<ApiResponse<List<Journey>>> responseAdapter = moshi.adapter(responseType);
    private final JsonAdapter<JourneyPlannerQuery> requestAdapter = moshi.adapter(JourneyPlannerQuery.class);

    public JourneyPlannerApi(HttpClient http) {
        this.http = http;
    }

    public List<Journey> planJourney(String origin, String destination, String date, String time) {
        try {
            JourneyPlannerQuery query = new JourneyPlannerQuery(origin, destination, date, time);
            String postJson = requestAdapter.toJson(query);
            Response response = http.post("/apiproxy/train/tisuk/fare/fare/train", postJson);
            System.out.println(response.body().string());
            ApiResponse<List<Journey>> responseJson = responseAdapter.fromJson(response.body().source());

            return responseJson.data;
        } catch (IOException e) {
            throw new JourneyPlannerException("Unable to plan journey", e);
        }
    }
}
