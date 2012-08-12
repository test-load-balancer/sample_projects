@echo off

set DEV_LIB_DIR=..\..\tlb/target
set DIST_LIB_DIR=..\..\server
set TLB_TMP_DIR=.\tmp
set TLB_DATA_DIR=%TLB_TMP_DIR%\demo_tlb_store
rm -rf %TLB_TMP_DIR%
mkdir %TLB_DATA_DIR%

IF "%TLB_JAR%" == "" (
	IF EXIST %DEV_LIB_DIR% (
		set TLB_JAR=%DEV_LIB_DIR%\tlb-server*.jar
	) ELSE (
		set TLB_JAR=%DIST_LIB_DIR%\tlb-server*.jar
	)
)

call:surround "You can set(to yes) or unset 'PERFORM_CORRECTNESS_CHECK' environment variable to enable or disable correctness checking"
call:surround "******************************** starting the server *********************************"

call:starting_tlb_server_message

start "TLB Server" /min "..\start_server.bat"

call:surround "******************************** started the server *********************************"

set TLB_OUT_FILE=%TLB_TMP_DIR%\tlb_balancer.out 
set TLB_ERR_FILE=%TLB_TMP_DIR%\tlb_balancer.err
set TLB_JOB_VERSION=%random%
set TLB_BASE_URL=http://localhost:7019 

call:making_partitions_message %TLB_TOTAL_PARTITIONS%

IF NOT "%PERFORM_CORRECTNESS_CHECK%" == "" (
    echo "--- Correctness check ENABLED ---"
    set SPLIT_CORRECTNESS_CHECKER=tlb.splitter.correctness.AbortOnFailure
) ELSE ( 
    echo "--- Correctness check DISABLED ---"
)

echo.

SET /a i=1
:LOOP
	IF %i% GTR %TLB_TOTAL_PARTITIONS% GOTO END_LOOP
    call:surround ">>>>>>>>>>>>>>>>>>>>>>>>>>> executin partition %i% <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    
	set TLB_PARTITION_NUMBER=%i%
	
	call:surround "This is partition %TLB_PARTITION_NUMBER% of total %TLB_TOTAL_PARTITIONS%"
    call:this_is_partition_x_of_y_message %TLB_PARTITION_NUMBER% %TLB_TOTAL_PARTITIONS%
    set TLB_BALANCER_PORT=300%i%
    call:running_partition_x_on_port %TLB_PARTITION_NUMBER% %TLB_BALANCER_PORT%
    call:run %TEST_TASK%

	IF "%i%" == "%TLB_TOTAL_PARTITIONS%" (
		IF NOT "%SPLIT_CORRECTNESS_CHECKER%" == "" (
			call:run %ALL_PARTITIONS_RAN_VERIFICATION_TASK%
		)
	)
    echo "==================================================================================="
	SET /a i=%i%+1
	GOTO LOOP

:END_LOOP

call:stop

:stop
    TASKKILL /FI "WINDOWTITLE eq TLB Server"
GOTO:EOF

:run
    echo "--- EXECUTING: %* ---"
    call %*
	echo ""
GOTO:EOF

:surround
    echo.
	echo %*
	echo.
GOTO:EOF

:echo_note
    IF NOT "%VERBOSE%" == "" (
		call:surround "NOTE:"
		call:surround "%~1"
	)
GOTO:EOF

:starting_tlb_server_message
    call:echo_note "This starts the TLB server. Only one instance of TLB server is required for balancing. Host/Port of TLB server should be reachable and open to all machines that run one or more partitions of tests of a project. In this case, the demo script starts its own TLB server on the local box, obviously localhost and 7019(port) are accessible of partitions that we execute locally."
GOTO:EOF

:making_partitions_message
   call:echo_note "We'll make %~1 partitions of this test suite. In a real situation all partitions would run on different machines in-parallel, or atleast on the same machine as multiple independent processes(that run parallely). But for this example, we'll execute them serially, one after another. This is just a demostration of configuration required to make TLB aware of prefered balancing & reordering scheme. Please do not confuse this with a real world usage of TLB. Running partitioned test suites serially in a real situation will make no sense at all. **We are emphasising this so much because people have asked us why partitions in this example run one after another.** We recomend playing with the TOTAL_PARTITIONS variable defined in this shell-script, see how TLB partitions your tests."
GOTO:EOF

:this_is_partition_x_of_y_message
    call:echo_note "This is partition number %~1 of %~2, while this partition is running on your machine, imagine other partition(s) running parallely on machines other than yours(say one partition per machine). TLB will ensure all partitions finish at almost the same time, which means your build will take just as much time as running this partition does."
GOTO:EOF

:running_partition_x_on_port
    echo "partition number is: %~1 (balancer will listen to port %~2, if using non-java environment)"
    call:echo_note "We are starting seperate balancer servers for every partition to demostrate the fact that a balancer server must be unique to a partition. Even though it is a server, it can not be used across partitions. Its very light-weight process that will be started in the background by TLB and  then reaped in the end, when tests finish."
GOTO:EOF

:terminating_tlb_server
    call:echo_note "Terminating the TLB server now, in a real situation TLB server would not be started and terminated every time partitions of a test-suite or a single partition ends, insteed it'll continue running and can cater more than one project's test-suite. Its a shared server, and is not supposed to be started and terminated everytime. In addition to this, it should be accessible to all machines executing partitions. A partition is made aware of TLB server by setting TLB_URL. The TLB_URL value in this example is set to %~1, this is because we use a local server in this case."
GOTO:EOF