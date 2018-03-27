FROM postgres:9.4
# possible to start vanilla postgres like this
# docker run -p 5432:5432 --rm  -ePOSTGRES_USER=test -e POSTGRES_PASSWORD=test postgres:9.4 -c max-prepared-transactions=110
# config can be set as defined at https://github.com/docker-library/docs/tree/master/postgres#database-configuration
# docker run -p 5432:5432 --rm  -ePOSTGRES_USER=test -e POSTGRES_PASSWORD=test postgres:9.4 -c max-prepared-transactions=110 -c log-statement=all
# the '-c' parameter is normal PostgreSQL runtime settings which could be done as defined in documentation
#   https://www.postgresql.org/docs/current/static/app-postgres.html (see general purpose and -c)
#   now is only point where to find the config options (I'm not sure)
#   it's possible to run '-c log-statement' and '-c log_statement', it seems it works both

ENV POSTGRES_DB test
ENV POSTGRES_USER test
ENV POSTGRES_PASSWORD test

COPY psql_init.sql /docker-entrypoint-initdb.d/

