#!/usr/bin/env bash

set -x

razor delete-policy --name puppetserver-perf-driver-dev
razor delete-tag --name puppetserver-perf-driver-dev
razor delete-policy --name puppetserver-perf-driver
razor delete-tag --name puppetserver-perf-driver
razor delete-policy --name puppetserver-perf-sut
razor delete-tag --name puppetserver-perf-sut
razor delete-policy --name puppetserver-perf-sut-small
razor delete-tag --name puppetserver-perf-sut-small
razor delete-broker --name puppetserver-perf-sut

set -e

razor create-broker --json ./puppetserver-perf-sut-broker.json
razor create-tag --json ./puppetserver-perf-sut-tag.json
razor create-policy --json ./puppetserver-perf-sut-policy.json
razor create-tag --json ./puppetserver-perf-sut-tag-small.json
razor create-policy --json ./puppetserver-perf-sut-policy-small.json
razor create-tag --json ./puppetserver-perf-driver-tag.json
razor create-policy --json ./puppetserver-perf-driver-policy.json
razor create-tag --json ./puppetserver-perf-driver-dev-tag.json
razor create-policy --json ./puppetserver-perf-driver-dev-policy.json
