package io.ljn.jp.test.runner.step.journey;

import io.ljn.jp.test.runner.api.jp.JourneyPlanResponse;
import io.ljn.jp.test.runner.api.jp.JourneyPlannerApi;
import io.ljn.jp.test.runner.api.jp.JourneyPlannerException;
import io.ljn.jp.test.runner.api.jp.JourneyPlannerQuery;
import io.ljn.jp.test.runner.api.order.Order;
import io.ljn.jp.test.runner.api.order.OrderApi;
import io.ljn.jp.test.runner.api.order.OrderApiException;
import io.ljn.jp.test.runner.api.order.OrderPaymentQuery;
import io.ljn.jp.test.runner.order.FulfilmentType;
import lombok.RequiredArgsConstructor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
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
        JourneyPlannerQuery journeyPlannerQuery = getJourneyPlannerQuery(row);

        if (journeyPlannerQuery == null) {
            System.out.println("Cannot process row: " + testId);
            return;
        }

        JourneyPlanResponse response;

        try {
            response = journeyPlannerApi.planJourney(journeyPlannerQuery);
        } catch (JourneyPlannerException e) {
            System.out.println("Test " + testId + " failed: " + e.getMessage());
            return;
        }

        if (response.inboundJourneyList == null || response.inboundJourneyList.size() == 0) {
            System.out.println(String.format("No results for %s to %s", journeyPlannerQuery.dptNlcCode, journeyPlannerQuery.arrNlcCode));
            return;
        }

        Order createOrderQuery = new Order(
            response.inboundJourneyList.get(0),
            response.tisFareList.get(0),
            fulfilmentType
        );
        Order createdOrder = orderApi.createOrder(createOrderQuery);
        OrderPaymentQuery paymentQuery = new OrderPaymentQuery(createdOrder.ticketIssue.orderTransactionId, createdOrder.ticketIssue.totalPrice);

        try {
            Order paidOrder = orderApi.payForOrder(paymentQuery);
            System.out.println("Test " + testId + " order: " + paidOrder.ticketIssue.orderTransactionId);

            row.getCell(28).setCellValue(paidOrder.ticketIssue.orderTransactionId);

            if (paidOrder.ticketIssue.payloads != null) {
                row.getCell(29).setCellValue(paidOrder.ticketIssue.payloads.get(0).pdfUrl);
            }
        } catch (OrderApiException e) {
            System.out.println("Test " + testId + " failed: " + e.getMessage());
        }
    }

    private JourneyPlannerQuery getJourneyPlannerQuery(Row row) {
        try {
            String origin = getSafeValue(row.getCell(4));
            String destination = getSafeValue(row.getCell(6));

            if (origin.isEmpty() || destination.isEmpty()) {
                return null;
            }

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
        } catch (Exception e) {
            e.printStackTrace();
            return null;
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
