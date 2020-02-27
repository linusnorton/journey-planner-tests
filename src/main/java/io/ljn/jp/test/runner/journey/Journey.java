package io.ljn.jp.test.runner.journey;

import lombok.Data;

import java.util.List;

@Data
public class Journey {
    public final List<TimetableLeg> tisSegmentList;
    public final List<Fare> tisFareList;
}
