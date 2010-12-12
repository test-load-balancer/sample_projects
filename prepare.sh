#!/bin/bash

echo "Cloning all submodules..."
git submodule update --init

for i in `find . -path '*/tlb_rb/.git' -type d`; do 
    echo "Preparing $i..."
    (cd $i/.. && git submodule update --init && rake build_tlb)
done

echo "Please run ./run_balanced.sh while inside any sample project to see tlb balance tests written using the corresponding framework, for instance, if you want to see tlb balance test::unit tests, please drop into test-unit_example, and run ./run_balanced.sh"