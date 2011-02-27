package com.github.tlb.sampleprojects;

import org.hamcrest.core.Is;
import org.junit.Test;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

public class TatooineTest {
    @Test
    public void shouldFindNumberOfSuns() {
        Tatooine tatooine = new Tatooine();
        assertThat(tatooine.numberOfSuns(), is(2));
    }

    @Test
    public void shouldFindNumberOfMoons() {
        Tatooine tatooine = new Tatooine();
        assertThat(tatooine.numberOfMoons(), is(3));
    }
}
