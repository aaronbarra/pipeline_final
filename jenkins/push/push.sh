#!/bin/bash
echo "########################"
echo "*** Preparing to push ***"
echo "########################"
REGISTRY="https://registry.hub.docker.com/aaronbarra/jenkinspipeline"
IMAGE="jenkinspipeline" 
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$BUILD_TAG
