#!/bin/bash

ant init

export TLB_JAR=`ls lib/tlb-standalone/tlb-all*.jar`
export TLB_JOB_NAME='ant-junit' 
export TLB_TOTAL_PARTITIONS=2
export TEST_TASK='ant test.balanced'

source ../recipe.sh