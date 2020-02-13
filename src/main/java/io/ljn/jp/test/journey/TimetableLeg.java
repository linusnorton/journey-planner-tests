package io.ljn.jp.test.journey;

import java.util.List;

public class TimetableLeg implements Leg {
    public final List<StopTime> stopTimes;

    public TimetableLeg(List<StopTime> stopTimes) {
        this.stopTimes = stopTimes;
    }
}
