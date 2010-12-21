#!/bin/bash

export TLB_JAR=`ruby -e 'require "rubygems"; require "tlb"; puts Tlb.tlb_jar;'`
export TLB_JOB_NAME='test-unit' 
export TOTAL_PARTITIONS=2
export TEST_TASK='rake bal'

source ../recipe.sh