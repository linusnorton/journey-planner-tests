package io.ljn.jp.test.runner.api;

import lombok.Data;

@Data
public class JourneyPlannerQuery {
    public final String origin;
    public final String destination;
    public final String date;
    public final String time;
}
