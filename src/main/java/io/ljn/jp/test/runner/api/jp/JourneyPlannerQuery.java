package io.ljn.jp.test.runner.api.jp;

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
        this(origin, destination, date, time, "", "", railcard, 1, 0);
    }

    public JourneyPlannerQuery(
        String origin,
        String destination,
        String outwardDate,
        String outwardTime,
        String returnDate,
        String returnTime,
        String railcard,
        int adults,
        int children
    ) {
        dptCrsCode = origin.length() == 3 ? origin : "";
        dptNlcCode = origin.length() == 4 ? origin : "";
        arrCrsCode = destination.length() == 3 ? destination : "";
        arrNlcCode = destination.length() == 4 ? destination : "";

        this.departureDate = getDateTime(outwardDate, outwardTime);
        this.returnDate = getDateTime(returnDate, returnTime);

        railCardList = railcard == null ? "".split(",") : railcard.split(",");
        adultCount = adults;
        childCount = children;
        maxJourney = 100;
        openReturn = false;
        keepOvertaken = false;
        showRouteingDetail = false;
    }

    private String getDateTime(String date, String time) {
        return date.equals("") ? "" : LocalDate.parse(date).atTime(LocalTime.parse(time)).format(localDateTimeFormat);
    }
}
