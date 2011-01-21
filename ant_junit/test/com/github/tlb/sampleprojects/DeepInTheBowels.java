package com.github.tlb.sampleprojects;

import org.junit.Test;

import static junit.framework.Assert.assertEquals;
import static junit.framework.Assert.assertTrue;

public class DeepInTheBowels {
    public static class DeepWithinTest {
        @Test
        public void shouldBeCapableOfTestingDeepWithinTheBowels() throws InterruptedException {
            Thread.sleep(2000);
            assertEquals(1, 1);
        }

        @Test
        public void shouldWorkFineEvenWhenStomachIsUpset() throws InterruptedException {
            Thread.sleep(1000);
            boolean stomachUpset = true;
            boolean workingFine = true;
            assertTrue(stomachUpset && workingFine);
        }
    }
}
