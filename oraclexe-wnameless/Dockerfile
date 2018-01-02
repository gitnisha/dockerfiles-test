# from https://github.com/wnameless/docker-oracle-xe-11g
# docker build . -t oraclexe
# docker run -d -p 49160:22 -p 1521:1521 -e ORACLE_ALLOW_REMOTE=true oraclexe
FROM wnameless/oracle-xe-11g

# https://github.com/wnameless/docker-oracle-xe-11g/issues/59
ADD init.sql /docker-entrypoint-initdb.d/
