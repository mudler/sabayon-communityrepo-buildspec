#!/bin/bash
# written by mudler@sabayon.org

. /vagrant/scripts/repositories.sh

export DEPLOY_SERVER
export DEPLOY_PORT
export DOCKER_PULL_IMAGE=1

mkdir -p /vagrant/logs/$NOW
chmod -R 444 /vagrant/logs/$NOW
update_vagrant_repo

for i in "${REPOSITORIES[@]}"
do
  automated_build $i
done
