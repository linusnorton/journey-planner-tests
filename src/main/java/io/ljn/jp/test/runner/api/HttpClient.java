package io.ljn.jp.test.runner.api;

import okhttp3.*;

import java.io.IOException;

/**
 * Wrapper around OkHttp library to simplify API calls
 */
public class HttpClient {
    private final OkHttpClient http = new OkHttpClient();
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
