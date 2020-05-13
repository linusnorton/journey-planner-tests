package io.ljn.jp.test.runner.order;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public enum FulfilmentType {
    ToD(0),
    eTicket(1),
    mTicket(2);

    public final int label;

    public static FulfilmentType fromString(String name) {
        switch (name) {
            case "ToD": return ToD;
            case "eTicket": return eTicket;
            case "mTicket": return mTicket;
            default: throw new RuntimeException("Unknown fulfilment type: " + name);
        }
    }
}
