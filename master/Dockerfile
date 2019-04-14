FROM postgres
COPY postgresql.conf /docker-entrypoint-initdb.d/
COPY pg_hba.conf /docker-entrypoint-initdb.d/
COPY setup.sh /docker-entrypoint-initdb.d/

# create the database tables
COPY db.sql /docker-entrypoint-initdb.d/