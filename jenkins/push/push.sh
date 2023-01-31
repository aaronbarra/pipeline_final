#!/bin/bash
echo "########################"
echo "*** Preparing to push ***"
echo "########################"
REGISTRY="registry.hub.docker.com"
IMAGE="app"
BUILD_ID=$BUILD_ID
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_ID $REGISTRY/$IMAGE:$BUILD_ID
echo "*** Pushing image ***"
docker login -u aaronbarra --password-stdin karina3008. -server docker.io
docker push $REGISTRY/$IMAGE:$BUILD_ID
