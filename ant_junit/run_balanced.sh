#!/bin/bash

export TLB_JOB_NAME='ant-junit'
export TLB_TOTAL_PARTITIONS=2
export TEST_TASK='ant test.balanced'
export ALL_PARTITIONS_RAN_VERIFICATION_TASK='ant assert.all.partitions.executed'

source ../recipe.sh