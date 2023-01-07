#!/bin/sh

docker-compose exec db bash -c "chmod 755 docker-entrypoint-initdb.d/init_db.sh"
docker-compose exec db bash -c "./docker-entrypoint-initdb.d/init_db.sh"
