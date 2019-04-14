#!/bin/bash

# todo: use $PGDATA instead of /var/lib/postgresql/data

# stop postgres so that we can replace the data repository
# pg_ctl -D "$PGDATA" -m fast -w stop
echo "executing setup.sh script on hotstandby"
echo "Stopping Postgres..."
pg_ctl -D "$PGDATA" -w stop

# wait for the master to be setup completely
sleep 10

# retrieve the backup from the master
echo "Deleting current database..."
rm -r $PGDATA/*
ls -l $PGDATA # <-- todo remove me, used for debugging
echo "Retrieving backup from the master..."
pg_basebackup -d "host=master port=5432 user=postgres password=postgres" -D "/var/lib/postgresql/data"

# copy the config files over after initdb has been run
# cp /docker-entrypoint-initdb.d/postgresql.conf /var/lib/postgresql/data/
cp /docker-entrypoint-initdb.d/recovery.conf /var/lib/postgresql/data/

# start postgres again
pg_ctl -D "$PGDATA" -o "-c listen_addresses=''" -w start
