package io.ljn.jp.test.generator.timetable.repository;

import lombok.Data;

@Data
public class StopTimeRow {
    public final String stop;
    public final Integer arrivalTime;
    public final Integer departureTime;
}
