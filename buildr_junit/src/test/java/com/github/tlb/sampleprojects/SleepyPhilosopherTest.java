package com.github.tlb.sampleprojects;

import org.hamcrest.core.Is;
import org.junit.Test;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

public class SleepyPhilosopherTest {

    @Test
    public void shouldMakeSurePhilosopherSleepsForFiveSeconds() {
        long before = System.currentTimeMillis();
        new SleepyPhilosopher().sleepFor(5);
        assertThat(true, is(4999L < System.currentTimeMillis() - before));
    }
}
