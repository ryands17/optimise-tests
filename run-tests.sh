#!/bin/bash

set -eu -o pipefail

PREVIOUS_COMMIT=$(git log -n 1 --skip=1 --pretty=format:%H)

LIST=$(git diff $PREVIOUS_COMMIT --name-only)

echo "Changed files $LIST"

if [[ $LIST == *'yarn.lock'* ]]; then
  echo 'packages changed! Run all the tests'
  yarn jest
else
  echo 'run only changed tests'
  yarn jest --changedSince=origin/main --coverage
fi
