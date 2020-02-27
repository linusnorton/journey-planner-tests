package io.ljn.jp.test.runner.journey;

import lombok.Data;

@Data
public class FareJourney {
    public final FareLocation originLocation;
    public final FareLocation destinationLocation;
}
