package io.ljn.jp.test.generator.fares;

import io.ljn.jp.test.generator.ScenarioFactory;
import io.ljn.jp.test.generator.fares.repository.GroupFareRow;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class GroupFareScenarioFactory implements ScenarioFactory<GroupFareRow> {

    public Object getScenario(GroupFareRow row) {
        return row;
    }

}
