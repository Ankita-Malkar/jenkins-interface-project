#!/bin/bash

echo "Running Linux Tests..."

if [ -f index.html ] && [ -f login.html ] && [ -f dashboard.html ]; then
    echo "All interface files present"
    exit 0
else
    echo "Test failed"
    exit 1
fi
