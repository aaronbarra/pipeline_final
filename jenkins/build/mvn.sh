#!/bin/bash
echo "****************"
echo "* Building jar!*"
echo "****************"
echo  $PROJ
PROJ=/home/tsoft/jenkins/pipeline
docker run --rm -v /root/.m2:/root/.m2 -v /home/ubuntu/jenkins/pipeline/java-app:/app -w /app maven:3-alpine mvn "$@"
