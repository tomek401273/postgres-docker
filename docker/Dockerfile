FROM postgres:latest
COPY ./script.sql /docker-entrypoint.initdb.d/001_data.sql
ENV PGDATA=/dat
