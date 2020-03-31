package io.ljn.jp.test.runner.journey;

import lombok.Data;

import java.util.List;

@Data
public class TimetableLeg implements Leg {
    public final List<StopTime> tisCallingPointList;
    public final TrainInfo tisTrainInfo;
    public final StationInfo dptStation;
    public final StationInfo arrStation;

    public String toString() {
        StopTime firstStop = tisCallingPointList.get(0);
        StopTime lastStop = tisCallingPointList.get(tisCallingPointList.size() - 1);

        return String.format(
            "%s (%s) -> %s (%s)",
            firstStop.getCrsCode(),
            firstStop.getPublicDepartureTime(),
            lastStop.getCrsCode(),
            lastStop.getPublicArrivalTime()
        );
    }

}
