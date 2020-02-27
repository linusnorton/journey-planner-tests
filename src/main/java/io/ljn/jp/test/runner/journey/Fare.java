package io.ljn.jp.test.runner.journey;

import lombok.Data;

@Data
public class Fare {
    public final FareClassification fareClassification;
    public final FareJourney fareJourney;
    public final FarePrice farePrice;
}
