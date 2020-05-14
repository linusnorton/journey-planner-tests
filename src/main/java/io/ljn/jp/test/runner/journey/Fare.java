package io.ljn.jp.test.runner.journey;

import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
public class Fare {
    public final String fareId;
    public final int fareReferenceId;
    public final FareClassification fareClassification;
    public final FareJourney fareJourney;
    public final FarePrice farePrice;
    public final List<RailcardFareDetail> railcardFareDetailList;
}
