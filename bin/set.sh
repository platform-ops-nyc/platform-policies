#!/bin/bash
fly -t wings set-pipeline -p opa-policies -c .ci/pipeline.yml  -l .ci/credentials.yml
fly -t wings sync
fly -t wings unpause-pipeline -p opa-policies
