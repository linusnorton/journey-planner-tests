package io.ljn.jp.test;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class ExampleSteps {

    @Given("I create a feature file")
    public void iCreateAFeatureFile() {
        System.out.println("Running tests");
    }

    @When("I run the tests")
    public void iRunTheTests() {
    }

    @Then("I want them to pass")
    public void iWantThemToPass() {
    }
}
