FROM mysql
# run as:
# docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=pw -d <container-id>

COPY init.sql /docker-entrypoint-initdb.d

