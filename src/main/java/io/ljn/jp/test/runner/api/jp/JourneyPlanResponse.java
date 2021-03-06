package io.ljn.jp.test.runner.api.jp;

import io.ljn.jp.test.runner.journey.Fare;
import lombok.Data;
import io.ljn.jp.test.runner.journey.Journey;

import java.util.List;
import java.util.stream.Collectors;

@Data
public class JourneyPlanResponse {
    public final List<Journey> outboundJourneyList;
    public final List<Journey> inboundJourneyList;
    public final List<Fare> tisFareList;

    public String outwardToString() {
        return outboundJourneyList.stream()
            .map(Journey::toString)
            .limit(6)
            .collect(Collectors.joining("\n\n"));
    }


}
