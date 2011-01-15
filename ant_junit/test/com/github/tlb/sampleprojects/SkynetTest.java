package com.github.tlb.sampleprojects;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class SkynetTest {
    
    @Test
    public void shouldMakeTerminators() {
        Skynet skynet = new Skynet();
        assertThat(skynet.makeTerminator(), is("Cyborg-101"));
    }
}
