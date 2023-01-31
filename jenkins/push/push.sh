#!/bin/bash
export BUILD_TAG=12
echo "########################"
echo "*** Preparing to push ***"
echo "########################"
REGISTRY="https://registry.hub.docker.com/aaronbarra"
IMAGE="app" 
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$BUILD_TAG
