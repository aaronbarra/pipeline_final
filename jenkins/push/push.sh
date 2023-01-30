#!/bin/bash
export BUILD_TAG=12
echo "########################"
echo "*** Preparing to push ***"
echo "########################"
REGISTRY="ec2-3-137-174-128.us-east-2.compute.amazonaws.com:5000"
IMAGE="app" 
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$BUILD_TAG
