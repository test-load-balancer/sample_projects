#!/bin/bash
export CRITERIA_DEFAULTING_ORDER='com.github.tlb.splitter.TimeBasedTestSplitterCriteria:com.github.tlb.splitter.CountBasedTestSplitterCriteria' 
export TLB_CRITERIA='com.github.tlb.splitter.DefaultingTestSplitterCriteria' 
export TOTAL_PARTITIONS=2
export TLB_URL='http://localhost:7019' 
export TALK_TO_SERVICE='com.github.tlb.service.TalkToTlbServer' 
export JOB_VERSION=1.2
export TLB_JOB_NAME='sample-ant' 
ant test.balanced -v