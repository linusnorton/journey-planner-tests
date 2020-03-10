package io.ljn.jp.test.generator.timetable.repository;

import java.util.List;
import java.util.stream.IntStream;

public enum AssociationCategory {
    JJ {
        @Override
        public List<StopTimeRow> getStopTimes(List<StopTimeRow> baseStops, List<StopTimeRow> assocStops, String location) {
            final int baseIndex = indexOf(baseStops, location);
            final int assocIndex = indexOf(assocStops, location);

            if (baseIndex == -1 || assocIndex == -1) {
                return null;
            }

            final List<StopTimeRow> newStops = assocStops.subList(0, assocIndex - 1);

            newStops.addAll(baseStops.subList(baseIndex, baseStops.size()));

            return newStops;
        }
    },
    VV {
        @Override
        public List<StopTimeRow> getStopTimes(List<StopTimeRow> baseStops, List<StopTimeRow> assocStops, String location) {
            final int baseIndex = indexOf(baseStops, location);
            final int assocIndex = indexOf(assocStops, location);

            if (baseIndex == -1 || assocIndex == -1) {
                return null;
            }

            final List<StopTimeRow> newStops = baseStops.subList(0, baseIndex - 1);

            newStops.addAll(assocStops.subList(assocIndex, assocStops.size()));

            return newStops;
        }
    };

    private static int indexOf(List<StopTimeRow> stopTimes, String location) {
        return IntStream
            .range(0, stopTimes.size())
            .filter(i -> stopTimes.get(i).getStop().equals(location))
            .findFirst()
            .orElse(-1);
    }

    public abstract List<StopTimeRow> getStopTimes(List<StopTimeRow> baseStops, List<StopTimeRow> assocStops, String location);
}
