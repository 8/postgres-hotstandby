#!/bin/bash

# overwrite the configuration files after initdb has run
cp /docker-entrypoint-initdb.d/pg_hba.conf /var/lib/postgresql/data/
cp /docker-entrypoint-initdb.d/postgresql.conf /var/lib/postgresql/data/