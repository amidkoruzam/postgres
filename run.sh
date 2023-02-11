#!/bin/bash

container_id=$(docker run -d --rm -e POSTGRES_PASSWORD=password -v ${PWD}/db.sql:/docker-entrypoint-initdb.d/db.sql postgres)
docker exec -it $container_id bash 
docker stop $container_id