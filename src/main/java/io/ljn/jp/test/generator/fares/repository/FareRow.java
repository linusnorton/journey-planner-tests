package io.ljn.jp.test.generator.fares.repository;

import lombok.Data;

import java.util.Date;

@Data
public class FareRow {
    public final String origin;
    public final String destination;
    public final String ticketCode;
    public final String routeCode;
    public final int price;
    public final Date date;
}
