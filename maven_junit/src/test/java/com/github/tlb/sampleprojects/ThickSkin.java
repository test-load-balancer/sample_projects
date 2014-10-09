package com.github.tlb.sampleprojects;

import org.junit.Test;

import static junit.framework.Assert.assertTrue;

public class ThickSkin {
    public static class Brat {
        public static class ThickSkinnedBratTest {
            @Test
            public void shouldArmTwistThickSninnedBrat() throws InterruptedException {
                Thread.sleep(1000);
                boolean hasArmTwisted = true;
                assertTrue(hasArmTwisted);
            }
        }
    }

    public static class BratAfterArmTwistingTest {
        @Test
        public void shouldBehave() throws InterruptedException {
            Thread.sleep(1000);
            boolean hasBeenArmTwisted = true;
            boolean isBehaving = true;
            assertTrue(hasBeenArmTwisted && isBehaving);
        }
    }
}
