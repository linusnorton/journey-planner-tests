package io.ljn.jp.test.journey;

import lombok.Data;

import java.util.List;

@Data
public class Journey {
    private final List<Leg> legs;
}
