package com.github.tlb.sampleprojects;

/**
 * @understands
 */
public class Zion {
    public String whereAreYou() {
        takeTimeToComputePosition();
        return "underground";
    }

    private void takeTimeToComputePosition() {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
