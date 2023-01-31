#!/bin/bash
echo "########################"
echo "*** Preparing to push ***"
echo "########################"
REGISTRY="registry.hub.docker.com/aaronbarra"
IMAGE="app"
BUILD_ID=$BUILD_ID
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_ID $REGISTRY/$IMAGE:$BUILD_ID
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$BUILD_ID
