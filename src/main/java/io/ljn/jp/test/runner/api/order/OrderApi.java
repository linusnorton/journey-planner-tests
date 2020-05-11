package io.ljn.jp.test.runner.api.order;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import io.ljn.jp.test.runner.api.HttpClient;
import io.ljn.jp.test.runner.api.jp.LegAdapter;
import okhttp3.Response;

import java.io.IOException;

/**
 * Provides access to the order API
 */
public class OrderApi {
    private final HttpClient http = new HttpClient("https://m.fat.ctripqa.com");
    private final Moshi moshi = new Moshi.Builder()
        .add(new LegAdapter())
        .build();

    private final JsonAdapter<Order> adapter = moshi
        .adapter(Order.class)
        .serializeNulls();

    public Order createOrder(Order query) {
        String postJson = adapter.toJson(query);

        try {
            Response response = http.post("/restapi/soa2/18655/createOrderV2", postJson);

            if (!response.isSuccessful()) {
                throw new OrderApiException("Unable to create order: " + postJson + "\n" + response.body().string());
            }

            return adapter.fromJson(response.body().source());
        } catch (IOException e) {
            throw new OrderApiException("Unable to create order: " + postJson, e);
        }
    }
}
