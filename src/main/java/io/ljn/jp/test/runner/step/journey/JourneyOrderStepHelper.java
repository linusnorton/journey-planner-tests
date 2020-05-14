package io.ljn.jp.test.runner.step.journey;

import io.ljn.jp.test.runner.api.jp.JourneyPlanResponse;
import io.ljn.jp.test.runner.api.jp.JourneyPlannerApi;
import io.ljn.jp.test.runner.api.jp.JourneyPlannerException;
import io.ljn.jp.test.runner.api.jp.JourneyPlannerQuery;
import io.ljn.jp.test.runner.api.order.Order;
import io.ljn.jp.test.runner.api.order.OrderApi;
import io.ljn.jp.test.runner.api.order.OrderApiException;
import io.ljn.jp.test.runner.api.order.OrderPaymentQuery;
import io.ljn.jp.test.runner.journey.Fare;
import io.ljn.jp.test.runner.journey.FareReference;
import io.ljn.jp.test.runner.journey.Journey;
import io.ljn.jp.test.runner.order.FulfilmentType;
import lombok.RequiredArgsConstructor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

@RequiredArgsConstructor
public class JourneyOrderStepHelper {

    private final JourneyPlannerApi journeyPlannerApi;
    private final OrderApi orderApi;
    private final Map<String, String> railcards = Map.of(
        "", "",
        "N/A", "",
        "Senior Railcard", "SRN",
        "16-25", "YNG",
        "Two Together", "TGR"
    );

    public void createOrder(Row row, FulfilmentType fulfilmentType) {
        int testId = (int) row.getCell(0).getNumericCellValue();

        try {
            JourneyPlannerQuery journeyPlannerQuery = getJourneyPlannerQuery(row);
            JourneyPlanResponse journeyPlanResponse = getJourneyPlannerResponse(journeyPlannerQuery);
            String ticketCode = row.getCell(20).getStringCellValue();
            Order order = createOrder(journeyPlanResponse, fulfilmentType, ticketCode);
            Order confirmedOrder = payForOrder(order);

            addOrderDetailsToSpreadsheet(row, order);
            System.out.println("Test " + testId + " order: " + confirmedOrder.ticketIssue.orderTransactionId);
        } catch (JourneyPlannerException | OrderApiException e) {
            System.out.println("Test " + testId + " failed: " + e.getMessage());
        }
    }

    private JourneyPlannerQuery getJourneyPlannerQuery(Row row) {
        String origin = getSafeValue(row.getCell(4));
        String destination = getSafeValue(row.getCell(6));
        String outwardDate = getDate(row.getCell(11));
        String outwardTime = getTime(row.getCell(12));
        String returnDate = getDate(row.getCell(13));
        String returnTime = getTime(row.getCell(14));

        int numAdults = getInt(row.getCell(15));
        int numChildren = getInt(row.getCell(16));
        String railcard = railcards.get(row.getCell(17).getStringCellValue());

        return new JourneyPlannerQuery(
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
    }

    private JourneyPlanResponse getJourneyPlannerResponse(JourneyPlannerQuery query) {
        JourneyPlanResponse response = journeyPlannerApi.planJourney(query);

        if (response.inboundJourneyList == null || response.inboundJourneyList.size() == 0) {
            throw new JourneyPlannerException(String.format("No results for %s to %s", query.dptNlcCode, query.arrNlcCode));
        }

        return response;
    }

    private Order createOrder(JourneyPlanResponse response, FulfilmentType fulfilmentType, String ticketCode) {
        Journey journey = response.inboundJourneyList.get(0);
        Fare fare = journey.journeyFareList.stream()
            .map(f -> getFare(response.tisFareList, f))
            .filter(f -> f.fareClassification.ticketCode.equals(ticketCode))
            .findFirst()
            .orElseThrow(() -> new JourneyPlannerException("Could not find ticket code " + ticketCode));

        Order createOrderQuery = new Order(journey, fare, fulfilmentType);

        return orderApi.createOrder(createOrderQuery);
    }

    private Fare getFare(List<Fare> tisFareList, FareReference fareRef) {
        return tisFareList.stream()
            .filter(f -> f.fareReferenceId == fareRef.fareReferenceId)
            .findFirst()
            .orElseThrow(() -> new JourneyPlannerException("Fare ref not found " + fareRef.fareReferenceId));
    }

    private Order payForOrder(Order order) {
        OrderPaymentQuery paymentQuery = new OrderPaymentQuery(order.ticketIssue.orderTransactionId, order.ticketIssue.totalPrice);

        return orderApi.payForOrder(paymentQuery);
    }

    private void addOrderDetailsToSpreadsheet(Row row, Order order) {
        row.getCell(28).setCellValue(order.ticketIssue.orderTransactionId);

        if (order.ticketIssue.payloads != null) {
            row.getCell(29).setCellValue(order.ticketIssue.payloads.get(0).pdfUrl);
        }
    }

    private int getInt(Cell cell) {
        try {
            return (int) cell.getNumericCellValue();
        } catch (IllegalStateException e) {
            try {
                return Integer.parseInt(cell.getStringCellValue());
            } catch (NumberFormatException e2) {
                return 1;
            }
        }
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
