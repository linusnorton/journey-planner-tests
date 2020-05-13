package io.ljn.jp.test.runner.order;

public class Payment {
    public final String paymentIndex = null;
    public final int paymentAmount;
    public final int ticketAmount;
    public final Object paymentCard = null;

    public Payment(int amount) {
        this.paymentAmount = amount;
        this.ticketAmount = amount;
    }
}
