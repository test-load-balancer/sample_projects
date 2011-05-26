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
    if [[ $verbose = true ]]; then
        echo
        divider "=======" "NOTE:" "------------------------------------------------------------------------------"
        tput setaf 4
        echo $1
        divider "--------------------------------------------------------------------------------" "END" "======="
        tput sgr0
        echo
    fi
}

function starting_tlb_server_message {
    echo_note "This starts the TLB server. Only one instance of TLB server is required for balancing.
Host/Port of TLB server should be reachable and open to all machines that run one or more partitions of tests of a project.
In this case, the demo script starts its own TLB server on the local box, obviously localhost and 7019(port) are accessible of partitions
that we execute locally."
}

function making_partitions_message {
   echo_note "We'll make $1 partitions of this test suite. In a real situation all partitions would run on different machines in-parallel,
 or atleast on the same machine as multiple independent processes(that run parallely). But for this example, we'll execute them serially,
 one after another. This is just a demostration of configuration required to make TLB aware of prefered balancing & reordering scheme. Please do
 not confuse this with a real world usage of TLB. Running partitioned test suites serially in a real situation will make no sense at all.

**We are emphasising this so much because people have asked us why partitions in this example run one after another.**

We recomend playing with the TOTAL_PARTITIONS variable defined in this shell-script, see how TLB partitions your tests."
}

function this_is_partition_x_of_y_message {
    echo_note "This is partition number $1 of $2, while this partition is running on your machine, imagine other partition(s)
 running parallely on machines other than yours(say one partition per machine). TLB will ensure all partitions finish at almost the same time, which means
 your build will take just as much time as running this partition does."
}

function running_partition_x_on_port {
    echo "partition number is: $1 (balancer will listen to port $2, if using non-java environment)"
    echo_note "We are starting seperate balancer servers for every partition to demostrate the fact that a balancer server must be unique to a partition.
Even though it is a server, it can not be used across partitions. Its very light-weight process that will be started in the background by TLB and
 then reaped in the end, when tests finish."
}

function terminating_tlb_server {
    echo_note "Terminating the TLB server now, in a real situation TLB server would not be started and terminated every time partitions of a test-suite or
 a single partition ends, insteed it'll continue running and can cater more than one project's test-suite. Its a shared server, and is not supposed
 to be started and terminated everytime. In addition to this, it should be accessible to all machines executing partitions. A partition is made aware of
 TLB server by setting TLB_URL. The TLB_URL value in this example is set to $1, this is because we use a local server in this case."
}
