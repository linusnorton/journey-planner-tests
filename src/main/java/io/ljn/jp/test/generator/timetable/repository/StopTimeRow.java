package io.ljn.jp.test.generator.timetable.repository;

import lombok.Data;

@Data
public class StopTimeRow {
    public final String stop;
    public final String arrivalTime;
    public final String departureTime;
}
