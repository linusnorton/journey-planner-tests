package io.ljn.jp.test.generator;

public class GeneratorException extends RuntimeException {
    public GeneratorException(String error, Exception exception) {
        super(error, exception);
    }
}
