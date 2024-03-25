#!/bin/bash

set -x
ROOT=`dirname $0`/..
source $ROOT/.env

podman compose exec superset superset db upgrade
podman compose exec superset superset init
podman compose exec superset superset fab create-admin \
              --username $SUPERSET_USER \
              --firstname Superset \
              --lastname Admin \
              --email admin@example.com \
              --password $SUPERSET_PASSWORD

