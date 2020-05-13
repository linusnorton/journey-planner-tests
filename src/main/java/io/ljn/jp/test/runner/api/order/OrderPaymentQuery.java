package io.ljn.jp.test.runner.api.order;

import io.ljn.jp.test.runner.order.CustomerInfo;
import io.ljn.jp.test.runner.order.Payment;

public class OrderPaymentQuery {
    public final String channelOrderNo = "3055062077";
    public final String channelType = "TRNP";
    public final String userId = CustomerInfo.USER_ID;
    public final String orderTransactionId;
    public final Payment payment;

    public OrderPaymentQuery(String orderTransactionId, int amount) {
        this.orderTransactionId = orderTransactionId;
        this.payment = new Payment(amount);
    }
}
