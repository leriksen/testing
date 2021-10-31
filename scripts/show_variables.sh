#!/usr/bin/env bash

set euo -pipefail

prefix="variable_"

# look for all the environment variables with the prefix in front
for var in "${!variable_@}"; do
  # display the envvar, after stripping the prefix off the front
  printf '%s=%s\n' ${var#"$prefix"} "${!var}"
done

exit 0