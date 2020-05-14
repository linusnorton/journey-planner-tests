package io.ljn.jp.test.runner.journey;

import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
public class Journey {
    public final List<? extends Leg> tisSegmentList;
    public final List<FareReference> journeyFareList;
    public final StationInfo dptLocation;
    public final StationInfo arrLocation;
    public final String departureDateTime;
    public final String arrivalDateTime;

    public final List<String> callingPointCrsSet;
    public final boolean changeAtLondon;
    public final float cheapestFare;
    public final long departureTimeMillis;
    public final String doubleBackValidRoutes;
    public final int durationMinutes;
    public final boolean includeLondon;
    public final boolean includeThameslink;
    public final boolean includeUnderground;
    public final boolean invalidDoubleBack;
    public final boolean invalidTripleBack;
    public final int journeyDistance;
    public final String journeyId;
    public final String journeyReferenceId;
    public final boolean journeyReservable;
    public final String modeCodeSet;
    public final String returnType;
    public final List<String> routeingNodeList;
    public final String routeingNodeSet;
    public final String routeingSegmentList;
    public final String routeingStationList;
    public final int stopQuantity;

    @Override
    public String toString() {
        String legs = tisSegmentList.stream().map(Leg::toString).collect(Collectors.joining("\n\t"));

        return String.format(
            "%s (%s) -> %s (%s)\n\t%s",
            dptLocation.crsCode,
            departureDateTime.substring(11),
            arrLocation.crsCode,
            arrivalDateTime.substring(11),
            legs
        );
    }

}
