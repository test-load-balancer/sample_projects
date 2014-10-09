package com.github.tlb.sampleprojects;

import org.junit.Test;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

public class ZionTest {
    
    @Test
    public void shouldKnowWhereZionIs() {
        Zion zion = new Zion();
        assertThat(zion.whereAreYou(), is("underground"));
    }
}
