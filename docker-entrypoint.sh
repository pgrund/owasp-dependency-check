#!/bin/sh

/usr/share/dependency-check/bin/dependency-check.sh --scan "/tmp/src" --data "/tmp/dependency-check/data" --format "ALL" --cveValidForHours 48  --project ${PROJECT_NAME} $@
