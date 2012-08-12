@echo off
export TLB_JOB_NAME='rspec-2' 
export TLB_TOTAL_PARTITIONS=2
set TEST_TASK=rake bal
set ALL_PARTITIONS_RAN_VERIFICATION_TASK=rake tlb:ensure_all_partitions_executed

IF "%~1" == "--help" (
	echo Partitions this sample project into 2 parts and executes them sequentially. You can set 'TLB_JAR' and 'VERBOSE'. Make sure the java is available.
	GOTO EOF
)

call ..\recipe.bat

:EOF