package com.github.tlb.sampleprojects;

import org.junit.Test;

import static junit.framework.Assert.assertTrue;

public class ThickSkin {
    public static class Brat {
        public static class ThickSkinnedBratTest {
            @Test
            public void shouldArmTwistThickSninnedBrat() throws InterruptedException {
                Thread.sleep(2500);
                boolean hasArmTwisted = true;
                assertTrue(hasArmTwisted);
            }
        }
    }
}
