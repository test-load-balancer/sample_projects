package com.github.tlb.sampleprojects;

import org.junit.Test;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

public class MillenniumFalconTest {
    @Test
    public void shouldHaveHyperdrive() {
        MillenniumFalcon millenniumFalcon = new MillenniumFalcon();
        assertThat(millenniumFalcon.hasHyperdrive(), is(true));
    }
}
