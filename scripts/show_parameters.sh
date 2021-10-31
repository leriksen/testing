#!/usr/bin/env bash

set euo -pipefail

echo "logic goes here"

for var in "${!parameter_@}"; do
    printf '%s=%s\n' "$var" "${!var}"
done

exit 0