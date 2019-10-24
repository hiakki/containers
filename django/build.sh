#!/bin/bash
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=hiakki
# image name
IMAGE=my-django

loc=$(dirname "$0")
cd $PWD/$loc

docker build -t $USERNAME/$IMAGE .
