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

    private final JsonAdapter<Order> orderAdapter = moshi
        .adapter(Order.class)
        .serializeNulls();

    private final JsonAdapter<OrderPaymentQuery> paymentAdapter = moshi
        .adapter(OrderPaymentQuery.class)
        .serializeNulls();

    public Order createOrder(Order query) {
        String postJson = orderAdapter.toJson(query);

        try {
            Response response = http.post("/restapi/soa2/18655/createOrderV2", postJson);

            if (!response.isSuccessful()) {
                throw new OrderApiException("Unable to create order: " + postJson + "\n" + response.body().string());
            }

            String textResponse = response.body().source().peek().readUtf8();
            Order order = orderAdapter.fromJson(response.body().source());

            if (order.ticketIssue == null) {
                throw new OrderApiException("Unable to create order: " + postJson + "\n" + textResponse);
            }

            return order;
        } catch (IOException e) {
            throw new OrderApiException("Unable to create order: " + postJson, e);
        }
    }

    public Order payForOrder(OrderPaymentQuery paymentQuery) {
        String postJson = paymentAdapter.toJson(paymentQuery);

        try {
            Response response = http.post("/restapi/soa2/18655/confirmPaymentV2", postJson);

            if (!response.isSuccessful()) {
                throw new OrderApiException("Unable to create payment: " + postJson + "\n" + response.body().string());
            }

            String textResponse = response.body().source().peek().readUtf8();
            Order order = orderAdapter.fromJson(response.body().source());

            if (order.ticketIssue == null) {
                throw new OrderApiException("Unable to create payment: " + postJson + "\n" + textResponse);
            }

            return order;
        } catch (IOException e) {
            throw new OrderApiException("Unable to create payment: " + postJson, e);
        }
    }
}
