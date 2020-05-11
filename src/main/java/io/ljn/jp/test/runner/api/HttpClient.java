package io.ljn.jp.test.runner.api;

import okhttp3.*;

import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.io.IOException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import static java.time.Duration.ofMinutes;

/**
 * Wrapper around OkHttp library to simplify API calls
 */
public class HttpClient {
    private final OkHttpClient http;
    private final String host;

    public HttpClient(String host) {
        this.host = host;

        // horrific code to disable SSL
        try {
            final TrustManager[] trustAllCerts = new TrustManager[]{
                new X509TrustManager() {
                    @Override
                    public void checkClientTrusted(java.security.cert.X509Certificate[] chain,
                                                   String authType) throws CertificateException {
                    }

                    @Override
                    public void checkServerTrusted(java.security.cert.X509Certificate[] chain,
                                                   String authType) throws CertificateException {
                    }

                    @Override
                    public java.security.cert.X509Certificate[] getAcceptedIssuers() {
                        return new X509Certificate[0];
                    }
                }
            };

            // Install the all-trusting trust manager
            final SSLContext sslContext = SSLContext.getInstance("SSL");
            sslContext.init(null, trustAllCerts, new java.security.SecureRandom());
            // Create an ssl socket factory with our all-trusting manager
            final SSLSocketFactory sslSocketFactory = sslContext.getSocketFactory();

            this.http = new OkHttpClient()
                .newBuilder()
                .connectTimeout(ofMinutes(1))
                .readTimeout(ofMinutes(1))
                .callTimeout(ofMinutes(1))
                .sslSocketFactory(sslSocketFactory, (X509TrustManager) trustAllCerts[0])
                .hostnameVerifier((hostname, session) -> true)
                .build();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

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
