package io.ljn.jp.test.runner.api.order;

import io.ljn.jp.test.runner.journey.Fare;
import io.ljn.jp.test.runner.journey.Journey;
import io.ljn.jp.test.runner.order.FulfilmentType;

public class Order {
    public final TicketIssue ticketIssue;

    public Order(Journey journey, Fare fare, FulfilmentType fulfillType) {
        this.ticketIssue = new TicketIssue(journey, fare, fulfillType);
    }
}
