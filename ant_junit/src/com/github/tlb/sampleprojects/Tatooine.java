package com.github.tlb.sampleprojects;

public class Tatooine {
    public int numberOfSuns() {
        takeTimeToCount();
        return 2;
    }

    private void takeTimeToCount() {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    public int numberOfMoons() {
        takeTimeToCount();
        return 3;
    }
}
