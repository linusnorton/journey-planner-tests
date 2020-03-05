package io.ljn.jp.test.runner.step.date;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class DateUtil {
    public static String getNextWeekday() {
        return LocalDate
            .now()
            .plusWeeks(1)
            .datesUntil(LocalDate.now().plusWeeks(2))
            .filter(d -> d.getDayOfWeek().getValue() < 6)
            .findFirst()
            .get()
            .format(DateTimeFormatter.ISO_LOCAL_DATE);
    }
}
