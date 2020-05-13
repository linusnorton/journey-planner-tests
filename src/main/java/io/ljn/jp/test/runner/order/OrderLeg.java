package io.ljn.jp.test.runner.order;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class OrderLeg {
    public final int legIndex;
    public final String trainNo;
    public final String departureNLC;
    public final String destinationNLC;
    public final String departureDateTime;
    public final String legDirection;
}
