#!/bin/bash

# copy the config files over after initdb has been run
cp /docker-entrypoint-initdb.d/postgresql.conf /var/lib/postgresql/data/
cp /docker-entrypoint-initdb.d/recovery.conf /var/lib/postgresql/data/