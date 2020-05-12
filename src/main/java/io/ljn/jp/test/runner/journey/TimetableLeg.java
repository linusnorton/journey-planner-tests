package io.ljn.jp.test.runner.journey;

import lombok.Data;

import java.util.List;

@Data
public class TimetableLeg implements Leg {
    public final List<StopTime> tisCallingPointList;
    public final TrainInfo tisTrainInfo;
    public final StationInfo dptStation;
    public final StationInfo arrStation;
    public final String arrivalDateTime;
    public final String departureDateTime;
    public final Float distance;
    public final int durationMinutes;
    public final String finalArrivalDateTime;
    public final StationInfo finalDestination;
    public final boolean seatAssignable;
    public final int segmentId;
    public final int segmentType;
    public final String tocIdSet;
    public final String trainArrLocation;
    public final String trainDptLocation;
    public final List<String> trainSegmentList;
    public final String trainUidSet;
    public final String validFlows;
    public final String validRouteAndTicketCode;
    public final String validRouteCodes;
    public final List<String> viaStationCrsSet;

    public String toString() {
        StopTime firstStop = tisCallingPointList.get(0);
        StopTime lastStop = tisCallingPointList.get(tisCallingPointList.size() - 1);

        return String.format(
            "%s (%s) -> %s (%s)",
            firstStop.crsCode,
            firstStop.publicDepartureTime,
            lastStop.crsCode,
            lastStop.publicArrivalTime
        );
    }

}
