package io.ljn.jp.test.runner.api.order;

import io.ljn.jp.test.runner.journey.Fare;
import io.ljn.jp.test.runner.journey.Journey;
import io.ljn.jp.test.runner.order.CustomerInfo;
import io.ljn.jp.test.runner.order.FulfilmentType;
import io.ljn.jp.test.runner.order.OrderPassenger;
import lombok.RequiredArgsConstructor;

import java.util.Collections;
import java.util.List;

@RequiredArgsConstructor
public class TicketIssue {
    public final String channelOrderNo;
    public final String channelType;

    public final Integer adminFee;
    public final CustomerInfo customerInfo;
    public final List<OrderPassenger> passengers;
    public final String reservationDemand;
    public final String railCards;

    public final String orderTransactionId;
    public final String transactionReference;
    public final List<OrderLeg> journeyLegs;
    public final String payment;
    public final String payloads;
    public final String ticketStatus;
    public final String payStatus;

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
        channelOrderNo = "3055062077";
        channelType = "TRNP";
        adminFee = null;
        customerInfo = new CustomerInfo();
        passengers = Collections.singletonList(new OrderPassenger());
        reservationDemand = null;
        railCards = null;
        orderTransactionId = null;
        transactionReference = null;
        journeyLegs = null;
        payment = null;
        payloads = null;
        ticketStatus = null;
        payStatus = null;

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
