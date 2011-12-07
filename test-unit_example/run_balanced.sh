#!/bin/bash

export TLB_JOB_NAME='test-unit' 
export TLB_TOTAL_PARTITIONS=2
export TEST_TASK='rake bal'
export ALL_PARTITIONS_RAN_VERIFICATION_TASK='rake tlb:ensure_all_partitions_executed'

source ../recipe.sh