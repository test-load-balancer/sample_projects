#!/bin/bash

dev_lib_dir=../../tlb/target
dist_lib_dir=../../server

if [ -e $dev_lib_dir ]; then
    export TLB_JAR=`ls $dev_lib_dir/tlb-server*.jar`
else
    export TLB_JAR=`ls $dist_lib_dir/tlb-server*.jar`
fi
export TLB_JOB_NAME='buildr-junit'
export TLB_TOTAL_PARTITIONS=2

export load_balance=true
export TEST_TASK='buildr clean test'

source ../recipe.sh