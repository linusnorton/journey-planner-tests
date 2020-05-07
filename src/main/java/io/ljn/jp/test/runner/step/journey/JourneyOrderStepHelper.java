package io.ljn.jp.test.runner.step.journey;

import io.ljn.jp.test.runner.api.JourneyPlanResponse;
import io.ljn.jp.test.runner.api.JourneyPlannerApi;
import io.ljn.jp.test.runner.api.JourneyPlannerQuery;
import lombok.RequiredArgsConstructor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Map;

@RequiredArgsConstructor
public class JourneyOrderStepHelper {

    private final JourneyPlannerApi api;
    private final Map<String, String> railcards = Map.of(
        "", "",
        "N/A", "",
        "Senior Railcard", "SRN",
        "16-25", "YNG",
        "Two Together", "TGR"
    );

    public void createOrder(Row row) {
        String origin = getSafeValue(row.getCell(4));
        String destination = getSafeValue(row.getCell(6));

        if (origin.isEmpty() || destination.isEmpty()) {
            return;
        }

        String outwardDate = getDate(row.getCell(11));
        String outwardTime = getTime(row.getCell(12));
        String returnDate = getDate(row.getCell(13));
        String returnTime = getTime(row.getCell(14));
        int numAdults = (int) row.getCell(15).getNumericCellValue();
        int numChildren = (int) row.getCell(16).getNumericCellValue();
        String railcard = railcards.get(row.getCell(17).getStringCellValue());

        JourneyPlannerQuery query = new JourneyPlannerQuery(
            origin,
            destination,
            outwardDate,
            outwardTime,
            returnDate.equals("N/A") ? "" : returnDate,
            returnTime.equals("N/A") ? outwardTime : returnTime,
            railcard,
            numAdults,
            numChildren
        );

        JourneyPlanResponse response = api.planJourney(query);
    }

    private String getDate(Cell cell) {
        try {
            return cell.getLocalDateTimeCellValue().toLocalDate().format(DateTimeFormatter.ISO_DATE);
        } catch (IllegalStateException e) {
            return cell.getStringCellValue();
        }
    }

    private String getTime(Cell cell) {
        try {
            double value = cell.getNumericCellValue() * 24;
            int hour = (int) Math.floor(value);
            int mins = (int) Math.round((value - hour) * 60);

            return LocalTime.MIDNIGHT.plusHours(hour).plusMinutes(mins).format(DateTimeFormatter.ISO_TIME);
        } catch (IllegalStateException e) {
            return cell.getStringCellValue();
        }
    }

    private String getSafeValue(Cell cell) {
        try {
            return cell.getStringCellValue();
        } catch (IllegalStateException e) {
            return String.valueOf((int) cell.getNumericCellValue());
        }
    }
}
