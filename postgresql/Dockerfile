FROM postgres:9.4

ENV POSTGRES_DB test
ENV POSTGRES_USER test
ENV POSTGRES_PASSWORD test

COPY psql_init.sql /docker-entrypoint-initdb.d/

