package io.ljn.jp.test.runner.step;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.ljn.jp.test.runner.order.FulfilmentType;
import io.ljn.jp.test.runner.step.journey.JourneyOrderStepHelper;
import lombok.RequiredArgsConstructor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import java.io.File;
import java.io.IOException;
import java.util.stream.IntStream;

@RequiredArgsConstructor
@SuppressWarnings({"checkstyle:MethodName"})
public class AccreditationStep {

    private final JourneyOrderStepHelper helper;
    private Workbook wb;

    @Given("a spreadsheet {string}")
    public void aSpreadsheet(String filename) throws IOException {
        String filePath = AccreditationStep.class.getClassLoader().getResource(filename).getFile();
        wb = WorkbookFactory.create(new File(filePath));
    }

    @When("I purchase tickets from sheet {string}")
    public void iPurchaseTicketsFromSheet(String sheetName) {
        Sheet sheet = wb.getSheet(sheetName);
        FulfilmentType fulfilmentType = FulfilmentType.fromString(sheetName);
        IntStream
            .range(1, sheet.getPhysicalNumberOfRows() - 1)
            .mapToObj(sheet::getRow)
            .parallel()
            .filter(row -> cellNotEmpty(row.getCell(0)) && cellNotEmpty(row.getCell(4)))
            .forEach(row -> helper.createOrder(row, fulfilmentType));
    }

    private boolean cellNotEmpty(Cell cell) {
        return cell != null && !cell.toString().isEmpty();
    }

    @Then("I should be able to collate the results into {string}")
    public void iShouldBeAbleToCollateTheResultsInto(String filename) {

    }
}
