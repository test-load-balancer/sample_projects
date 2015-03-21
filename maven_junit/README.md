Sample Execution
================
* download the server https://tlb.googlecode.com/files/tlb-server-0.3.2.tar.gz
* start the server with `java -cp -jar tlb-server-0.3.2.jar`
* set the evironment variables in `environment.sh`
* execute maven as it is in the `start.sh`
* You should see now see in the `target/reports` directory, that only have of the tests were executed
* Set the environment variable `TLB_PARTITION_NUMBER` to 2 and execute maven again
* You should see now the second partition of the tests executed
