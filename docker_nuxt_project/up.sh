#!/bin/bash
docker-compose build
docker-compose up -d

docker exec -it  nuxt-project_nuxt /bin/bash
