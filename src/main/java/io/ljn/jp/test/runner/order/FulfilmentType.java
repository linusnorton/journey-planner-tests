package io.ljn.jp.test.runner.order;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public enum FulfilmentType {
    ToD(0),
    eTicket(1),
    mTicket(2);

    public final int label;
}
