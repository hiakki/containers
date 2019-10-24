#!/bin/bash
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=hiakki
# image name
IMAGE=nginx_on_alpine

loc=$(dirname "$0")
cd $PWD/$loc

docker build -t $USERNAME/$IMAGE .
