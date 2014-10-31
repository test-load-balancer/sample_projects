package com.github.tlb.sampleprojects;

public class MillenniumFalcon {
    public boolean hasHyperdrive() {
        searchHyperdriveInTheEntireShip();
        return true;
    }

    private void searchHyperdriveInTheEntireShip() {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
