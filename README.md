# OWASP Dependency Check with pre-seeded database

 [![license](https://img.shields.io/badge/license-MIT-blue.svg?style=plastic)](https://github.com/ICTU/owasp-dependency-check/blob/master/LICENSE)

## About

An alpine container containing version 5.0.0M2 of the [OWASP Dependency Check](https://www.owasp.org/index.php/OWASP_Dependency_Check) CLI, along with a pre-seeded database to speed up scans.

## Install

`$ docker pull ictu/owasp-dependency-check`

## Usage

###### run with default settings

`$ docker run --rm -v <project_source>:/tmp/src -v <report_destination_directory>:/tmp/reports -w /tmp/reports ictu/owasp-dependency-check`

###### run with additional arguments

`$ docker run --rm -v <project_source>:/tmp/src -v <report_destination_directory>:/tmp/reports -w /tmp/reports ictu/owasp-dependency-check --enableExperimental --disableBundleAudit "true"`

### Optional Environment Variables

`PROJECT_NAME` Default "generic". Set the project name for the generated report.
