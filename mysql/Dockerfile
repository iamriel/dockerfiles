# Use base mysql image with tag 5.7
FROM mysql:5.7
# Copy our custom SQL file to /docker-entrypoint-initdb.d folder
COPY ./create_databases.sql /docker-entrypoint-initdb.d/create_databases.sql
