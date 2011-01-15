package com.github.tlb.sampleprojects;

public class Skynet {
    public String makeTerminator() {
        takeTimeToManufacture();
        return "Cyborg-101";
    }

    private void takeTimeToManufacture() {
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
