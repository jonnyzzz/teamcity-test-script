#!/bin/bash

set -e -x -u
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


echo "Running integration tests..."

FAILED=0

TC=##teamcity
echo " ${TC}[testSuiteStarted name='integration-tests'] "


for TEST in test/* ; do
  TEST_NAME=$(basename $TEST)

  echo " ${TC}[testStarted name='$TEST_NAME' captureStandardOutput='true'] "

  ./$TEST || {
    echo " ${TC}[testFailed name='$TEST_NAME'] "
  }

  echo " ${TC}[testFinished name='$TEST_NAME'] "
done

echo " ${TC}[testSuiteFinished name='integration-tests'] "
