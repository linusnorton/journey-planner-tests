package io.ljn.jp.test.runner.journey;

import lombok.Data;

import java.util.List;

@Data
public class Fare {
    public final FareClassification fareClassification;
    public final FareJourney fareJourney;
    public final FarePrice farePrice;
    public final List<RailcardFareDetail> railcardFareDetailList;
}
