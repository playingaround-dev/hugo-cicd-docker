#!/bin/sh
set -ex

USERNAME=freakynit
IMAGE=hugo-cicd-docker

docker build -t $USERNAME/$IMAGE:latest .
