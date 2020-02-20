package io.ljn.jp.test.generator.fares;

import io.ljn.jp.test.generator.ScenarioFactory;
import io.ljn.jp.test.generator.fares.repository.NonDerivableRow;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class NonDerivableScenarioFactory implements ScenarioFactory<NonDerivableRow> {

    public Object getScenario(NonDerivableRow row) {
        return row;
    }

}
