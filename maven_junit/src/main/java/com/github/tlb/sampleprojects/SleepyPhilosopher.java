package com.github.tlb.sampleprojects;

/**
 * @understands the concept of a philosopher who needs to sleep in order to come up with her philosophy
 */
public class SleepyPhilosopher {

    public void sleepFor(int seconds) {
        try {
            Thread.sleep(seconds * 1000);
        } catch (InterruptedException e) {
            //Ignore the demons trying to wake you up
        }
    }
}
