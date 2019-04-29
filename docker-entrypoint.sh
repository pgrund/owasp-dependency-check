#!/bin/sh

/usr/share/dependency-check/bin/dependency-check.sh --scan "/tmp/src" --data "/tmp/dependency-check/data" --out "/tmp/reports" --format "ALL"  --project ${PROJECT_NAME} $@
