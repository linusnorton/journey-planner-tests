package io.ljn.jp.test.runner.api;

import lombok.Data;
import io.ljn.jp.test.runner.journey.Journey;

import java.util.List;

@Data
public class ApiResponse {

    public final List<Journey> outboundJourneyList;
}
