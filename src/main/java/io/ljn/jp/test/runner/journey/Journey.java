package io.ljn.jp.test.runner.journey;

import lombok.Data;

import java.util.List;

@Data
public class Journey {
    private final List<Leg> legs;
}
