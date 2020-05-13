package io.ljn.jp.test.runner.order;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class TicketPayload {
    public final int payloadId;
    public final String orderTransactionId;
    public final String channelOrderNo;
    public final String orderFareId;
    public final String direction;
    public final int status;
    public final String payloadDetail;
    public final String pdfUrl;
    public final String pkPassUrl;
    public final String barcodePictureUrl;
}
