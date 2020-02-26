package io.ljn.jp.test.runner.step;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.ljn.jp.test.runner.api.JourneyPlannerApi;

public class QueryStep {
    private final JourneyPlannerApi journeyPlanner;

    public QueryStep(JourneyPlannerApi journeyPlanner) {
        this.journeyPlanner = journeyPlanner;
    }

    @Given("a/I query between {string} and {string} on {string} at {string}")
    public void aQueryBetweenAndOnAt(String origin, String destination, String date, String time) {
        journeyPlanner.planJourney(origin, destination, date, time);
    }

    @Then("I should see a service {string} that stops at")
    public void i_should_see_a_service_that_stops_at(String string, DataTable dataTable) {
        // Write code here that turns the phrase above into concrete actions
        // For automatic transformation, change DataTable to one of
        // E, List<E>, List<List<E>>, List<Map<K,V>>, Map<K,V> or
        // Map<K, List<V>>. E,K,V must be a String, Integer, Float,
        // Double, Byte, Short, Long, BigInteger or BigDecimal.
        //
        // For other transformations you can register a DataTableType.
        throw new io.cucumber.java.PendingException();
    }

}
