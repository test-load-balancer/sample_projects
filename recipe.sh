#!/bin/bash

function in_red {
    tput setaf 7; tput setab 1; echo -n $1; tput sgr0
}

function divider {
    tput setaf 1; tput bold; echo -n $1
    in_red $2
    tput setaf 1; tput bold; echo $3
    tput sgr0
}

function echo_note {
    echo
    divider "=======" "NOTE:" "------------------------------------------------------------------------------"
    tput setaf 4
    echo $1
    divider "--------------------------------------------------------------------------------" "END" "======="
    tput sgr0
    echo
}

echo "******************************** starting the server *********************************"
echo_note "This starts the TLB server. Only one instance of TLB server is required for balancing.
Host/Port of TLB server should be reachable and open to all machines that run one or more partitions of tests of a project.
In this case, the demo script starts its own TLB server on the local box, obviously localhost and 7019(port) are accessible of partitions
that we execute locally."
export TLB_DATA_DIR='/tmp/demo_tlb_store'
mkdir -p $TLB_DATA_DIR
exec java -jar $TLB_JAR 2>/tmp/7019.err 1>/tmp/7019.out &
sleep 1
tlb_server_pid=$!
echo "******************************** started the server *********************************"

export TLB_OUT_FILE=/tmp/tlb_balancer.out 
export TLB_ERR_FILE=/tmp/tlb_balancer.err
export TLB_PREFERRED_SPLITTERS='tlb.splitter.TimeBasedTestSplitter:tlb.splitter.CountBasedTestSplitter' 
export TLB_SPLITTER='tlb.splitter.DefaultingTestSplitter' 
export TLB_BASE_URL='http://localhost:7019' 
export TYPE_OF_SERVER='tlb.service.TlbServer' 
export TLB_JOB_VERSION=`date | sed -e 's# #-#g'`
echo_note "We'll make $TOTAL_PARTITIONS partitions of this test suite. In a real situation all partitions would run on different machines in-parallel,
 or atleast on the same machine as multiple independent processes(that run parallely). But for this example, we'll execute them serially,
 one after another. This is just a demostration of configuration required to make TLB aware of prefered balancing & reordering scheme. Please do
 not confuse this with a real world usage of TLB. Running partitioned test suites serially in a real situation will make no sense at all.

**We are emphasising this so much because people have asked us why partitions in this example run one after another.**

We recomend playing with the TOTAL_PARTITIONS variable defined in this shell-script, see how TLB partitions your tests."

export TLB_ORDERER='tlb.orderer.FailedFirstOrderer'

for i in `seq 1 $TLB_TOTAL_PARTITIONS`; do
    echo ">>>>>>>>>>>>>>>>>>>>>>>>>>> executing partition $i <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    export TLB_PARTITION_NUMBER=$i
    echo_note "This is partition number $PARTITION_NUMBER of $TOTAL_PARTITIONS, while this partition is running on your machine, imagine other partition(s)
 running parallely on machines other than yours(say one partition per machine). TLB will ensure all partitions finish at almost the same time, which means
 your build will take just as much time as running this partition does."
    export TLB_BALANCER_PORT=300$i
    echo "partition number is: $PARTITION_NUMBER balancer running on $TLB_BALANCER_PORT"
    echo_note "We are starting seperate balancer servers for every partition to demostrate the fact that a balancer server must be unique to a partition.
Even though it is a server, it can not be used across partitions. Its very light-weight process that will be started in the background by TLB and
 then reaped in the end, when tests finish."
    $TEST_TASK
    echo "==================================================================================="
done

echo "****************************** terminating the tlb server ********************************"
echo_note "Terminating the TLB server now, in a real situation TLB server would not be started and terminated every time partitions of a test-suite or
 a single partition ends, insteed it'll continue running and can cater more than one project's test-suite. Its a shared server, and is not supposed
 to be started and terminated everytime. In addition to this, it should be accessible to all machines executing partitions. A partition is made aware of
 TLB server by setting TLB_URL. The TLB_URL value in this example is set to $TLB_URL, this is because we use a local server in this case."

kill $tlb_server_pid
wait
echo "****************************** tlb server reaped *****************************************"


