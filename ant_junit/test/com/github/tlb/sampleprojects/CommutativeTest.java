package com.github.tlb.sampleprojects;

import org.junit.Test;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;
import static org.hamcrest.core.IsNot.not;

public class CommutativeTest {

    @Test
    public void shouldShowThatAdditionIsCommutative() {
        assertThat(SimpleCalculator.sum(1, 2), is(SimpleCalculator.sum(2, 1)));
    }

    @Test
    public void shouldShowThatMultiplicationIsCommutative() {
        assertThat(SimpleCalculator.product(10, 20), is(SimpleCalculator.product(20, 10)));
    }

    @Test
    public void shouldShowThatSubtractionIsNotCommutative() {
        assertThat(SimpleCalculator.difference(1, 2), is(not(SimpleCalculator.difference(2, 1))));
    }

    @Test
    public void shouldShowThatDivisionIsNotCommutative() {
        assertThat(SimpleCalculator.quotient(1, 2), is(not(SimpleCalculator.quotient(2, 1))));
    }
}
