#!/bin/bash

export TLB_JOB_NAME='buildr-junit'
export TLB_TOTAL_PARTITIONS=2

export load_balance=true
export TEST_TASK='buildr clean test'

source ../recipe.sh