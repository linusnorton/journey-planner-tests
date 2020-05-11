package io.ljn.jp.test.runner.journey;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class FareJourney {
    public final FareLocation originLocation;
    public final FareLocation destinationLocation;
    public final String travelDate;
}
