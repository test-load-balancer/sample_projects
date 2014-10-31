package com.github.tlb.sampleprojects;

public class ZeroOne {
    public boolean hasHumans() {
        tryToFindHumans();
        return false;
    }

    private void tryToFindHumans() {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
