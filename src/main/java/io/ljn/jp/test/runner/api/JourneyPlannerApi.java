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
    private final JsonAdapter<ApiResponse<List<Journey>>> jsonAdapter = moshi.adapter(responseType);

    public JourneyPlannerApi(HttpClient http) {
        this.http = http;
    }

    public List<Journey> planJourney(String origin, String destination, String date, String time) {
        try {
            Response response = http.get("jp?origin=%s&destination=%s&date=%s&time=%s", origin, destination, date, time);
            ApiResponse<List<Journey>> json = jsonAdapter.fromJson(response.body().source());

            return json.data;
        } catch (IOException e) {
            throw new JourneyPlannerException("Unable to plan journey", e);
        }
    }
}
