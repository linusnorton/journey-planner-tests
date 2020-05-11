package io.ljn.jp.test.runner.api.jp;

public class JourneyPlannerException extends RuntimeException {
    public JourneyPlannerException(String message, Throwable e) {
        super(message, e);
    }

    public JourneyPlannerException(String message) {
        super(message);
    }
}
