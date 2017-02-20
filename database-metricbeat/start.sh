#!/usr/bin/env ash

if [ -z $DRY_RUN ]; then
  metricbeat -e -v -c /metricbeat/metricbeat.yml $@
fi
