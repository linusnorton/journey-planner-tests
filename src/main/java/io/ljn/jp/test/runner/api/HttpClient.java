package io.ljn.jp.test.runner.api;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import java.io.IOException;

/**
 * Wrapper around OkHttp library to simplify API calls
 */
public class HttpClient {
    private final OkHttpClient http = new OkHttpClient();
    private final String host = "http://localhost/";

    public Response get(String urlFormat, Object... values) throws IOException {
        String url = String.format(urlFormat, values);
        Request request = new Request.Builder()
            .get()
            .url(host + url)
            .build();

        return http.newCall(request).execute();
    }
}
