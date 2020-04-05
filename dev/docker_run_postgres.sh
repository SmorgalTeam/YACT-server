#!/bin/sh

# See https://hackernoon.com/dont-install-postgres-docker-pull-postgres-bee20e200198
# https://markheath.net/post/exploring-postgresql-with-docker
# https://dockertips.com/postgresql
docker run --rm --name pg -d -e POSTGRES_PASSWORD=postgres -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres
docker run -it --rm --name psql --link pg:postgres postgres psql -h postgres -U postgres
