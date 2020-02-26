package io.ljn.jp.test.runner.journey;

import lombok.Data;

@Data
public class StopTime {
    private final String stop;
    private final int arrivalTime;
    private final int departureTime;
    private final boolean pickUp;
    private final boolean dropOff;
}
