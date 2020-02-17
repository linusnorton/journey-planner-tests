package io.ljn.jp.test;

import io.ljn.jp.test.generator.GenerateTestsApp;
import org.junit.Test;
import static org.junit.Assert.*;

public class AppTest {
    @Test
    public void testApp() {
        GenerateTestsApp classUnderTest = new GenerateTestsApp();
        assertNotNull(classUnderTest);
    }
}
