FROM mysql
# run as:
# docker build . -t mysql-test
# docker run --rm -p 3306:3306 -e MYSQL_ROOT_PASSWORD=pw -d mysql-test
# jdbc url to access then: jdbc:mysql://localhost:3306/test  test/test

COPY init.sql /docker-entrypoint-initdb.d

