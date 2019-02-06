#!/usr/bin/env bash

set -euo pipefail

RUN_FAILED=No

while read -r formula; do
  echo

  FORMULA_SHORT_NAME=$(basename "$formula" ".rb")

  echo "👩🏻‍🔬 Building and testing $FORMULA_SHORT_NAME..."

  if ! brew install "$formula"; then
    echo "😱 Building $FORMULA_SHORT_NAME failed!"
    RUN_FAILED=Yes
    continue
  fi

  TEST_FAILED=No

  # NOTE: We need this so we can test the exit state of `brew test` while also piping its output
  set +e
    if ! TEST_OUTPUT=$(unbuffer brew test "$formula" 2>&1 | tee /dev/tty); then
      TEST_FAILED=Yes
    fi
  set -e

  if [[ "$TEST_FAILED" = "Yes" ]]; then
    if grep -q "defines no test" <<< "$TEST_OUTPUT"; then
      echo "🙈 Ignoring missing tests step for $FORMULA_SHORT_NAME."
    else
      echo "😱 Test for $FORMULA_SHORT_NAME failed!"
      RUN_FAILED=Yes
    fi
  else
    echo "👍🏼 Test for $FORMULA_SHORT_NAME passed!"
  fi
done < <(
  # Hack to avoid testing BASE.PBP and its dependencies in CI
  grep -Lwr \
    --include=\*.rb ./Formula \
    -e 'BASE.PBP' \
    -e 'base_pbp'
)

echo

if [[ "$RUN_FAILED" = "Yes" ]]; then
  echo "😥 The test run has failed!"
  exit 1
fi

echo "🥳 All the tests are passing! Excellent!"
exit 0
