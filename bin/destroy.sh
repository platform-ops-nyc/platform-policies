#!/bin/bash
input="$1"

fly -t wings destroy-pipeline -p ${input}