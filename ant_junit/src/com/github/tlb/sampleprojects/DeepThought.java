package com.github.tlb.sampleprojects;

public class DeepThought {
    public static final int THE_ANSWER = 42;

    public static int whatIstheAnswerFor(String question) {
        thinkForAFewMillionYears();
        return THE_ANSWER;
    }

    private static void thinkForAFewMillionYears() {
        try {
            Thread.sleep(THE_ANSWER * fakeYears());
        } catch (InterruptedException e) {
            //Ignore stupid rats trying to disturb you
        }
    }

    private static int fakeYears() {
        return 50;
    }

    public static void nowWhatIsTheQuestion() {
        thinkForAFewMillionYears();
        thenSomeMore();
        andThenSomeMore();
        throw new OhMyGodException("Now, that's a little tricky!");
    }

    private static void andThenSomeMore() {
        thinkForAFewMillionYears();
    }

    private static void thenSomeMore() {
        thinkForAFewMillionYears();
    }

    public static final class OhMyGodException extends RuntimeException {
        public OhMyGodException(String message) {
            super(message);
        }
    }
}
