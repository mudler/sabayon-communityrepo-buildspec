#!/bin/bash
set -e

. /vagrant/scripts/repositories.sh

export EMERGE_DEFAULTS_ARGS="-k --accept-properties=-interactive --verbose --oneshot --complete-graph --buildpkg"
export REPOSITORY_NAME="community"
export REPOSITORY_DESCRIPTION="Community Repository"

BUILD_ARGS=(
    "app-text/cherrytree::and3k-sunrise"
    "--layman and3k-sunrise"
)

build_all "${BUILD_ARGS[@]}"
