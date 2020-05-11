package io.ljn.jp.test.runner.api.order;

import io.ljn.jp.test.runner.journey.Fare;
import io.ljn.jp.test.runner.journey.Journey;
import io.ljn.jp.test.runner.order.CustomerInfo;
import io.ljn.jp.test.runner.order.FulfilmentType;
import io.ljn.jp.test.runner.order.OrderPassenger;

import java.util.Collections;
import java.util.List;

public class TicketIssue {
    public final String channelOrderNo = "3055062077";
    public final String channelType = "TRNP";

    public final Integer adminFee = null;
    public final CustomerInfo customerInfo = new CustomerInfo();
    public final List<OrderPassenger> passengers = Collections.singletonList(new OrderPassenger());
    public final String reservationDemand = null;
    public final String railCards = null;

    public final String orderTransactionId = null;
    public final String transactionReference = null;
    public final String journeyLegs = null;
    public final String payment = null;
    public final String payloads = null;
    public final String ticketStatus = null;
    public final String payStatus = null;

    public final String departureNLCCode;
    public final String arrivalNLCCode;
    public final String departureDateTime;
    public final String returnDateTime;

    public final int adultCount;
    public final int childCount;
    public final float totalPrice;
    public final int fulfillType;

    public final Journey outJourney;
    public final Journey returnJourney;
    public final Fare outFare;
    public final Fare returnFare;

    public TicketIssue(Journey journey, Fare fare, FulfilmentType fulfillType) {
        this.departureNLCCode = fare.fareJourney.originLocation.nlc;
        this.arrivalNLCCode = fare.fareJourney.destinationLocation.nlc;
        this.departureDateTime = journey.departureDateTime;
        this.returnDateTime = null;
        this.adultCount = fare.railcardFareDetailList.get(0).adultCount;
        this.childCount = fare.railcardFareDetailList.get(0).childCount;
        this.totalPrice = fare.farePrice.price;
        this.fulfillType = fulfillType.label;
        this.outJourney = journey;
        this.returnJourney = null;
        this.outFare = fare;
        this.returnFare = null;
    }
}
