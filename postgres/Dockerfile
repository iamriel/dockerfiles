FROM postgres:9.5.14

# Attention: This script is only run, when no database exists
COPY init.sh multiple_databases.sh /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/init.sh /docker-entrypoint-initdb.d/multiple_databases.sh

HEALTHCHECK CMD pg_isready -U postgres
