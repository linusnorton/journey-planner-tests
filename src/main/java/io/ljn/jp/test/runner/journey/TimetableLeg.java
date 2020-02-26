package io.ljn.jp.test.runner.journey;

import lombok.Data;

import java.util.List;

@Data
public class TimetableLeg implements Leg {
    private final List<StopTime> stopTimes;
}
