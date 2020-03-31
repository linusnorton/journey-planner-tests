package io.ljn.jp.test.runner.step.date;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class DateUtil {
    public static String getWeekDay() {
        return LocalDate
            .now()
            .plusWeeks(8)
            .datesUntil(LocalDate.now().plusWeeks(10))
            .filter(d -> d.getDayOfWeek().getValue() < 6)
            .findFirst()
            .get()
            .format(DateTimeFormatter.ISO_LOCAL_DATE);
    }
}
