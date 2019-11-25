#!/bin/bash
input="$1"

fly -t hush destroy-pipeline -p ${input}