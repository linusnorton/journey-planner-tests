package io.ljn.jp.test.runner.journey;

import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
public class Journey {
    public final List<? extends Leg> tisSegmentList;
    public final List<Fare> tisFareList;
    public final StationInfo dptLocation;
    public final StationInfo arrLocation;
    public final String departureDateTime;
    public final String arrivalDateTime;

    @Override
    public String toString() {
        String legs = tisSegmentList.stream().map(Leg::toString).collect(Collectors.joining("\n\t"));

        return String.format(
            "%s (%s) -> %s (%s)\n\t%s",
            dptLocation.getCrsCode(),
            departureDateTime.substring(11),
            arrLocation.getCrsCode(),
            arrivalDateTime.substring(11),
            legs
        );
    }

}
