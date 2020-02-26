package io.ljn.jp.test.runner.journey;

import lombok.Data;

import java.util.List;

@Data
public class TimetableLeg {
    public final List<StopTime> tisCallingPointList;
    public final TrainInfo tisTrainInfo;
}
