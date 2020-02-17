package io.ljn.jp.test.generator;

/**
 * Creates a scenario from a row
 */
public interface ScenarioFactory<RowT> {

    // although this looks flaky the mustache template system is not typed so this is all it gets
    Object getScenario(RowT row);

}
