FROM postgres:11.1-alpine
COPY ./script.sql /docker-entrypoint.initdb.d/001_data.sql
ENV PGDATA=/dat
