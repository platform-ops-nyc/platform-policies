#!/bin/bash
fly -t hush set-pipeline -p opa-policies -c .ci/pipeline.yml  -l .ci/credentials.yml
fly -t hush sync
fly -t hush unpause-pipeline -p opa-policies
