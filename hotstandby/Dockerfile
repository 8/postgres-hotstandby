FROM postgres

COPY postgresql.conf /docker-entrypoint-initdb.d/
COPY recovery.conf /docker-entrypoint-initdb.d/
COPY setup.sh /docker-entrypoint-initdb.d/