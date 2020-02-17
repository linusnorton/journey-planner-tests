package io.ljn.jp.test.generator;

import java.util.List;

/**
 * Return a list of rows that can be fed to a ScenarioFactory to create scenarios
 */
public interface RowRepository<RowT> {

    List<RowT> getRows();

}
