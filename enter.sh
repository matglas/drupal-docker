#!/usr/bin/env bash

ES_COMPOSE_CONTAINER=`docker-compose ps -q data`
docker exec -it $ES_COMPOSE_CONTAINER /bin/bash
