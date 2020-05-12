package io.ljn.jp.test.runner.journey;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class StopTime {
    public final String activity;
    public final String crsCode;
    public final String line;
    public final String location;
    public final String path;
    public final String platform;
    public final String publicArrivalTime;
    public final String publicDepartureTime;
    public final String scheduledArrivalTime;
    public final String scheduledDepartureTime;
    public final String scheduledPassTime;
    public final String stationName;
    public final String stationType;
}
