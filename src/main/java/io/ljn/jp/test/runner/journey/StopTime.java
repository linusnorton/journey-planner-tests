package io.ljn.jp.test.runner.journey;

import lombok.Data;

@Data
public class StopTime {
    private final String crsCode;
    private final String publicArrivalTime;
    private final String publicDepartureTime;
}
