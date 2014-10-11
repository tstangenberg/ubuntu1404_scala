#!/bin/bash -e
VERSION=`cat VERSION`
TAG="shippableimages/ubuntu1404_scala:$VERSION"
echo "Building $TAG"
docker build --rm -t $TAG .
