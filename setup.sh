#!/bin/bash

docker build --build-arg connectors=tap-postgres,tap-mongodb,target-postgres -t pipelinewise:latest . --platform linux/amd64

$(pwd)/bin/pipelinewise-docker import --dir lcdp-project

/bin/bash ./sync_all.sh