#!/bin/bash
docker-compose build
docker-compose up -d

docker exec -it  projet_1_nginx /bin/bash
