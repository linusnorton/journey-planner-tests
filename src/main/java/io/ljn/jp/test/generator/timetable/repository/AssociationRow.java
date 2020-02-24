package io.ljn.jp.test.generator.timetable.repository;

import lombok.Data;

import java.time.LocalDate;

@Data
public class AssociationRow {
    public final int baseId;
    public final int assocId;
    public final String baseTuid;
    public final String assocTuid;
    public final String assocLocation;
    public final AssociationCategory assocCategory;
    public final LocalDate date;
}
