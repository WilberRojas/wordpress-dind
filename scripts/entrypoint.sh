#!/bin/sh
# Start docker daemon
dockerd &
# wait daemon start
sleep 5
# run docker-compose
docker-compose up
