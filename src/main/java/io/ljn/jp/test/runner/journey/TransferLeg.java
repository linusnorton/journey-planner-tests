package io.ljn.jp.test.runner.journey;

import lombok.Data;

@Data
public class TransferLeg implements Leg {
    public final StationInfo dptStation;
    public final StationInfo arrStation;
    public final int durationMinutes;

    public String toString() {
        return String.format(
            "%s -> %s (%s)",
            dptStation.getCrsCode(),
            arrStation.getCrsCode(),
            durationMinutes
        );
    }
}
