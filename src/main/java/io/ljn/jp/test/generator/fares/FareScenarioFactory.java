package io.ljn.jp.test.generator.fares;

import io.ljn.jp.test.generator.ScenarioFactory;
import io.ljn.jp.test.generator.fares.repository.FareRow;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class FareScenarioFactory implements ScenarioFactory<FareRow> {

    public Object getScenario(FareRow row) {
        return row;
    }

}
