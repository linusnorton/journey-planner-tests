package io.ljn.jp.test.runner.api.jp;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import io.ljn.jp.test.runner.api.HttpClient;
import okhttp3.Response;

import java.io.IOException;

/**
 * Provides access to the journey planner
 */
public class JourneyPlannerApi {
    private final HttpClient http = new HttpClient("http://apiproxy-fws.ctripqa.com");
    private final Moshi moshi = new Moshi.Builder()
        .add(new LegAdapter())
        .build();

    private final JsonAdapter<JourneyPlanResponse> responseAdapter = moshi.adapter(JourneyPlanResponse.class);
    private final JsonAdapter<JourneyPlannerQuery> requestAdapter = moshi.adapter(JourneyPlannerQuery.class);

    public JourneyPlanResponse planJourney(JourneyPlannerQuery query) {
        String postJson = requestAdapter.toJson(query);

        try {
            Response response = http.post("/apiproxy/train/tisuk/fare/fare/tisSearch", postJson);

            if (!response.isSuccessful()) {
                throw new JourneyPlannerException("Unable to plan journey: " + postJson + "\n" + response.body().string());
            }

            return responseAdapter.fromJson(response.body().source());
        } catch (IOException e) {
            throw new JourneyPlannerException("Unable to plan journey: " + postJson, e);
        }
    }
}
