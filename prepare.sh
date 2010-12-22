#!/bin/bash

echo "Cloning all submodules..."
git submodule update --init

gem install tlb-testunit tlb-rspec2 tlb-rspec1

echo "Please run ./run_balanced.sh while inside any sample project to see tlb balance tests written using the corresponding framework, for instance, if you wish to see tlb balance test::unit tests, drop into directory called test-unit_example, and invoke ./run_balanced.sh"