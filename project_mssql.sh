#!/bin/bash

docker-compose up -d
#docker-compose up -d

curl http://localhost:8978

docker ps

docker swarm init
docker service ls

docker container exec -it dbeaver_container bash
docker container exec -it mssql_container bash