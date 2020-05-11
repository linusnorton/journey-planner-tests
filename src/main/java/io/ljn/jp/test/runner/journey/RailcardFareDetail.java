package io.ljn.jp.test.runner.journey;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class RailcardFareDetail {
    public final int adultCount;
    public final int childCount;
    public final float totalPrice;
    public final float pricePerAdult;
    public final float pricePreChild;
    public final String adultStatusCode;
    public final String childStatusCode;
}
