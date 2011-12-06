#!/bin/bash

if [[ $1 = no-verbosity ]]; then
    verbose=false
else 
    verbose=true
fi

dev_lib_dir=../../tlb/target
dist_lib_dir=../../server

if [ -e $dev_lib_dir ]; then
    export TLB_JAR=`ls $dev_lib_dir/tlb-server*.jar`
else
    export TLB_JAR=`ls $dist_lib_dir/tlb-server*.jar`
fi

source ../messages.sh

echo "You can set(to yes) or unset 'PERFORM_CORRECTNESS_CHECK' environment variable to enable or disable correctness checking"

function run {
    echo "--- EXECUTING: $* ---"
    $*
    ret=$?
    echo "--- INVOCATION RETURNED: $ret ---"
}

echo "******************************** starting the server *********************************"
starting_tlb_server_message
export TLB_DATA_DIR='/tmp/demo_tlb_store'
mkdir -p $TLB_DATA_DIR
exec java -jar $TLB_JAR 2>/tmp/7019.err 1>/tmp/7019.out &
sleep 1
tlb_server_pid=$!
echo "******************************** started the server *********************************"

export TLB_OUT_FILE=/tmp/tlb_balancer.out 
export TLB_ERR_FILE=/tmp/tlb_balancer.err
export TLB_BASE_URL='http://localhost:7019' 
export TLB_JOB_VERSION=`date | sed -e 's# #-#g'`
making_partitions_message $TLB_TOTAL_PARTITIONS

if [ -n $PERFORM_CORRECTNESS_CHECK ]; then
    echo "--- Correctness check ENABLED ---"
    export SPLIT_CORRECTNESS_CHECKER=tlb.splitter.correctness.AbortOnFailure
else 
    echo "--- Correctness check DISABLED ---"
fi

for((i=1; i <= $TLB_TOTAL_PARTITIONS; i++)); do
    echo ">>>>>>>>>>>>>>>>>>>>>>>>>>> executing partition $i <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    export TLB_PARTITION_NUMBER=$i
    this_is_partition_x_of_y_message $TLB_PARTITION_NUMBER $TLB_TOTAL_PARTITIONS
    export TLB_BALANCER_PORT=300$i
    running_partition_x_on_port $TLB_PARTITION_NUMBER $TLB_BALANCER_PORT
    run $TEST_TASK

    if [ $i -eq $TLB_TOTAL_PARTITIONS -a -n $PERFORM_CORRECTNESS_CHECK ]; then
        run $ALL_PARTITIONS_RAN_VERIFICATION_TASK
    fi
    echo "==================================================================================="
done

echo "****************************** terminating the tlb server ********************************"
terminating_tlb_server $TLB_BASE_URL
kill $tlb_server_pid
wait
echo "****************************** tlb server reaped *****************************************"