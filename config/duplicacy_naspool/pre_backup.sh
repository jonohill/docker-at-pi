#!/usr/bin/env bash

set -e

cd /data
find . \
    -name .no_backup \
    -type f \
    -exec dirname {} \; \
    | sed 's|^./|-|g' | sed 's|$|/|g' >/config/filters
cd -
