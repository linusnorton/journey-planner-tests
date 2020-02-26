package io.ljn.jp.test.runner.step;

public class MissingTrainException extends RuntimeException {
    public MissingTrainException(String ex) {
        super(ex);
    }
}
