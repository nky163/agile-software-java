#!/bin/bash
usermod -u $HOST_UID -o -m $CONTAINER_USER
groupmod -g $HOST_GID $CONTAINER_GROUP