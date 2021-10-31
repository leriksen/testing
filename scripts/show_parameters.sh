#!/usr/bin/env bash

set euo -pipefail

echo "logic goes here"

prefix="parameter_"

for var in "${!parameter_@}"; do
    printf '%s=%s\n' ${var#"$prefix"} "${!var}"
done

exit 0