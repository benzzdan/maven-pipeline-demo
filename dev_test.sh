#!/bin/bash

#Remove container if is running
docker rm -f dev_test

#Remove old image
mvn com.spotify:docker-maven-plugin:removeImage -DimageName=wlobeos/mvn-rest-demo:2.7

#Create jar and image for docker
mvn clean compile assembly:single install

#Create container
docker run -it --name dev_test -p8082:8082 everlosa/testapi:dev_test

