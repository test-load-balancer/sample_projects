package com.github.tlb.sampleprojects;

import org.hamcrest.core.Is;
import org.junit.Test;

import static junit.framework.Assert.fail;
import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

public class DeepThoughtTest {

    @Test
    public void shouldTellMeTheAnswer() {
        assertThat(42, is(DeepThought.whatIstheAnswerFor("2 + 2")));
    }
    
    @Test
    public void shouldTellMeNotTheQuestion() {
        try {
            DeepThought.nowWhatIsTheQuestion();
            fail("You are lying!");
        } catch (Exception e) {
            assertThat("Now, that's a little tricky!", is(e.getMessage()));
        }
    }
}
