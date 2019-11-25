#!/bin/bash
fly -t hush sync
fly login -t hush -c https://hush-house.pivotal.io/ -n platformservices
