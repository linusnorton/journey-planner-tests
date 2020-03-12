package io.ljn.jp.test.generator.timetable.repository;

import java.util.ArrayList;
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

            final List<StopTimeRow> newStops = new ArrayList<>(assocStops.subList(0, assocIndex));
            newStops.addAll(baseStops.subList(baseIndex, baseStops.size()));

            newStops.set(assocIndex , new StopTimeRow(
                location,
                assocStops.get(assocIndex).arrivalTime,
                baseStops.get(baseIndex).departureTime
            ));

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

            final List<StopTimeRow> newStops = new ArrayList<>(baseStops.subList(0, baseIndex));

            newStops.addAll(assocStops.subList(assocIndex, assocStops.size()));

            newStops.set(baseIndex, new StopTimeRow(
                location,
                baseStops.get(baseIndex).arrivalTime,
                assocStops.get(assocIndex).departureTime
            ));


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
