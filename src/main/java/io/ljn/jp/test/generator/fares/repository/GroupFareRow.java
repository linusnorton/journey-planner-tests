package io.ljn.jp.test.generator.fares.repository;

import lombok.Data;

import java.util.Date;

@Data
public class GroupFareRow {
    public final String origin;
    public final String destination;
    public final String ticketCode;
    public final String groupRouteCode;
    public final String memberRouteCode;
    public final int groupPrice;
    public final int memberPrice;
    public final Date date;
}
