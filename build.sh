#!/bin/bash
DATE=`date +%Y-%m-%d`
for IMAGE_NAME in logstash-ng 
do
  docker build -t mastodonc/$IMAGE_NAME:$DATE ./$IMAGE_NAME
  docker push mastodonc/$IMAGE_NAME:$DATE
  docker tag mastodonc/$IMAGE_NAME:$DATE mastodonc/$IMAGE_NAME:latest
  docker push mastodonc/$IMAGE_NAME:latest
done
