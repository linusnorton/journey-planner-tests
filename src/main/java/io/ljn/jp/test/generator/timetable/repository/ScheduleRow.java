package io.ljn.jp.test.generator.timetable.repository;

import lombok.Data;

import java.time.LocalDate;

@Data
public class ScheduleRow {
    public final int originalId;
    public final int overlayId;
    public final String tuid;
    public final LocalDate originalRunsFrom;
    public final LocalDate overlayRunsFrom;
}
