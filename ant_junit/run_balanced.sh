#!/bin/bash

`ant init-tlb`

export TLB_JAR=`ls ../tlb/target/tlb-all*.jar`
export TLB_JOB_NAME='ant-junit' 
export TOTAL_PARTITIONS=2
export TEST_TASK='ant test.balanced'

source ../recipe.sh