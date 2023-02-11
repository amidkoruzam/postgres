#!/bin/bash

container_id=$(docker run -d --rm -e POSTGRES_PASSWORD=password -v ${PWD}/db.sql:/docker-entrypoint-initdb.d/db.sql postgres:15.2)
docker exec -it $container_id bash -c "while !(pg_isready -d music); do sleep 1; done; psql -U postgres -d music"
docker stop $container_id