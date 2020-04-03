package io.ljn.jp.test.runner.api;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class JourneyPlannerQuery {
    private static final DateTimeFormatter localDateTimeFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
    public final String dptCrsCode;
    public final String dptNlcCode;
    public final String arrCrsCode;
    public final String arrNlcCode;
    public final int adultCount;
    public final int childCount;
    public final int maxJourney;
    public final String[] railCardList;
    public final String departureDate;
    public final String returnDate;
    public final boolean openReturn;
    public final boolean keepOvertaken;
    public final boolean showRouteingDetail;

    public JourneyPlannerQuery(String origin, String destination, String date, String time, String railcard) {
        dptCrsCode = origin.length() == 3 ? origin : "";
        dptNlcCode = origin.length() == 4 ? origin : "";
        arrCrsCode = destination.length() == 3 ? destination : "";
        arrNlcCode = destination.length() == 4 ? destination : "";

        departureDate = LocalDate.parse(date).atTime(LocalTime.parse(time)).format(localDateTimeFormat);
        returnDate = "";

        railCardList = railcard.split(",");
        adultCount = 1;
        childCount = 0;
        maxJourney = -1;
        openReturn = false;
        keepOvertaken = false;
        showRouteingDetail = false;
    }
}
