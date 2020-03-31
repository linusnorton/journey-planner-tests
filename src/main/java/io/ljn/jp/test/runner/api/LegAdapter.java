package io.ljn.jp.test.runner.api;

import com.squareup.moshi.*;
import io.ljn.jp.test.runner.journey.Leg;
import io.ljn.jp.test.runner.journey.TimetableLeg;
import io.ljn.jp.test.runner.journey.TransferLeg;

import java.io.IOException;
import java.util.Map;

public class LegAdapter {
    @FromJson
    Leg fromJson(JsonReader json) {
        Moshi moshi = new Moshi.Builder().build();
        JsonReader peeked = json.peekJson();
        try {
            Map<String, Double> obj = (Map<String, Double>) peeked.readJsonValue();
            if (obj.get("segmentType") == 0.0) {
                JsonAdapter<TimetableLeg> childJsonAdapter = moshi.adapter(TimetableLeg.class);
                return childJsonAdapter.fromJson(json);
            }
            else {
                JsonAdapter<TransferLeg> parentJsonAdapter = moshi.adapter(TransferLeg.class);
                return parentJsonAdapter.fromJson(json);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }

    @ToJson
    String toJson(Leg leg) {
        Moshi moshi = new Moshi.Builder().build();
        JsonAdapter<Leg> jsonAdapter = moshi.adapter(Leg.class);

        return jsonAdapter.toJson(leg);
    }
}
