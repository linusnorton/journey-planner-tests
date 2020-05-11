package io.ljn.jp.test.runner.api.order;

public class OrderApiException extends RuntimeException {
    public OrderApiException(String message, Throwable e) {
        super(message, e);
    }

    public OrderApiException(String message) {
        super(message);
    }
}
