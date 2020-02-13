package io.ljn.jp.test;

import io.ljn.jp.test.generator.GenerateTests;
import org.junit.Test;
import static org.junit.Assert.*;

public class AppTest {
    @Test
    public void testApp() {
        GenerateTests classUnderTest = new GenerateTests();
        assertNotNull(classUnderTest);
    }
}
