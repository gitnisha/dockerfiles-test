# from https://github.com/wnameless/docker-oracle-xe-11g
# docker run -d -p 49160:22 -p 49161:1521 wnameless/oracle-xe-11g
FROM wnameless/oracle-xe-11g

# https://github.com/wnameless/docker-oracle-xe-11g/issues/59
ADD init.sql /docker-entrypoint-initdb.d/
