package io.ljn.jp.test.generator;

import com.github.mustachejava.Mustache;

import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * Generates a feature file when a repository, scenario factory, mustache template and destination file
 */
public class FeatureGenerator {

    public <RowT> void run(
        RowRepository<RowT> repository,
        ScenarioFactory<RowT> scenarioFactory,
        String fileName,
        Mustache template
    ) {
        List<Object> scenarios = repository.getRows()
            .parallelStream()
            .map(scenarioFactory::getScenario)
            .filter(Objects::nonNull)
            .collect(Collectors.toList());

        Map<String, Object> context = new HashMap<>();
        context.put("scenarios", scenarios);

        try {
            FileWriter writer = new FileWriter(fileName);
            template.execute(writer, context).flush();
            writer.close();
        } catch (IOException e) {
            throw new GeneratorException("Could not create feature file: " + fileName, e);
        }
    }

}
