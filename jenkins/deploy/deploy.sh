#!/bin/bash
# Generamos
echo centos > /tmp/.auth 
echo $BUILD_TAG >> /tmp/.auth 

# Transifere el archivo
scp -i /tmp/tmp/tf_pipeline/class_key.pem /tmp/.auth ubuntu@ec2-18-191-178-221.us-east-2.compute.amazonaws.com:/tmp/.auth 
scp -i /tmp/tmp/tf_pipeline/class_key.pem /tmp/jenkins/deploy/publish ubuntu@ec2-18-191-178-221.us-east-2.compute.amazonaws.com:/tmp/publish
ssh -i /tmp/tmp/tf_pipeline/class_key.pem ubuntu@ec2-18-191-178-221.us-east-2.compute.amazonaws.com /tmp/publish
