package com.github.tlb.sampleprojects;

import org.junit.Test;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

public class SimpleCalculatorTest {

    @Test
    public void shouldReturnTheSumOfTwoNumbers() {
        assertThat(4, is(SimpleCalculator.sum(2, 2)));
    }

    @Test
    public void shouldReturnTheSumOfTwoNegetiveNumbers() {
        assertThat(-4, is(SimpleCalculator.sum(-2, -2)));
    }

    @Test
    public void shouldReturnTheDifferenceOfTwoNumbers() {
        assertThat(1, is(SimpleCalculator.difference(3, 2)));
    }

    @Test
    public void shouldReturnTheDifferenceOfTwoNegetiveNumbers() {
        assertThat(-1, is(SimpleCalculator.difference(-3, -2)));
    }

    @Test
    public void shouldReturnTheProductOfTwoNumbers() {
        assertThat(6, is(SimpleCalculator.product(3, 2)));
    }

    @Test
    public void shouldReturnTheProductOfAPositiveAndANegetiveNumber() {
        assertThat(-6, is(SimpleCalculator.product(3, -2)));
    }

    @Test
    public void shouldReturnTheQuotientOfTwoNumbers() {
        assertThat(1, is(SimpleCalculator.quotient(3, 2)));
    }

    @Test
    public void shouldReturnTheQuotientOfPositiveNumberWithNegetiveNumber() {
        assertThat(-3, is(SimpleCalculator.quotient(-10, 3)));
    }
}
