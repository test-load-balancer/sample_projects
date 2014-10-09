package com.github.tlb.sampleprojects;

import org.junit.Test;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

public class ZeroOneTest {
    @Test
    public void shouldFindOnlyMachines() {
        ZeroOne zeroOne = new ZeroOne();
        assertThat(zeroOne.hasHumans(), is(false));
    }
}
