#!/bin/bash

export TLB_JAR='vendor/tlb_rb/tlb-all-gv0.2-9-g1f1a4aa.jar'
export TLB_JOB_NAME='rspec-1' 
export TOTAL_PARTITIONS=2
export TEST_TASK='rake bal'

source ../recipe.sh