# opa-policy
[OPA](https://www.openpolicyagent.org/) bundles of Policies to be used with [conftest](https://github.com/instrumenta/conftest) for fitness function testing your platform

Why you should care? Being able to test baseline values before attempting to deploy allows operators to *fail fast*. Current state of Pivotal's customers is that there are long waits to to find out about errors in configuration. 

These policies along with these tools are used to help bridge that gap.

**Caveat: This repo is a sample/tool to help operators get started. Pivotal does not make guarantees on future or current support for its contents.

# Using this Repository

## Testing Configuration and Validation

The main point of this repo is to run [conftest](https://github.com/instrumenta/conftest) against the OPA policies contained within. Something like this

```sh
$ conftest test cf.yml
```

Check out the OPA and conftest communities for information on running them. This grouping of policies is intended to be a starting point for cloud foundry users.

## .rego tests
If you write code you should be testing it. Releases to this project only accept code that has passed tests with the ci tool. Please test your rego if you plan to contribute

The policies are separated by packages so run the following command to capture all of them.

```shell
opa test -vl policies/*
```

You can also test on commit by using the included githook. From root of this directory run

```shell
cp ./.githooks/* ./.git/hooks/
```