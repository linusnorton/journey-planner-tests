package io.ljn.jp.test.runner.api;

import okhttp3.*;

import java.io.IOException;
import java.time.Duration;

import static java.time.Duration.*;

/**
 * Wrapper around OkHttp library to simplify API calls
 */
public class HttpClient {
    private final OkHttpClient http = new OkHttpClient().newBuilder()
        .connectTimeout(ofMinutes(1))
        .readTimeout(ofMinutes(1))
        .callTimeout(ofMinutes(1))
        .build();

    private final String host = "http://apiproxy-fws.ctripqa.com";

    public Response get(String urlFormat, Object... values) throws IOException {
        String url = String.format(urlFormat, values);
        Request request = new Request.Builder()
            .get()
            .url(host + url)
            .build();

        return http.newCall(request).execute();
    }

    public Response post(String url, String postJson) throws IOException {
        RequestBody body = RequestBody.create(postJson, MediaType.parse("application/json"));
        Request request = new Request.Builder()
            .post(body)
            .url(host + url)
            .build();

        return http.newCall(request).execute();
    }
}
