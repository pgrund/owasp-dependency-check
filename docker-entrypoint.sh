#!/bin/sh

/usr/share/dependency-check/bin/dependency-check.sh --scan "/tmp/src" --data "/tmp/data" --format "ALL"  --project ${PROJECT_NAME} $@