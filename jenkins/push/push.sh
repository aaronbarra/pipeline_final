#!/bin/bash
echo "########################"
echo "*** Preparing to push ***"
echo "########################"
REGISTRY="https://registry.hub.docker.com/aaronbarra/"
IMAGE="app"
BUILD_ID=$BUILD_ID
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_ID
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:+$BUILD_ID
