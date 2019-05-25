#!/usr/bin/env bash
#https://carlosbecker.com/posts/dump-postgres-table-inserts/
pg_dump \
  -h localhost \
  -p 5432 \
  -U user -W \
  --table="table-name" \
  --data-only \
  --column-inserts \
  database-name > table.sql

 pg_dump \
  -h localhost \
  -p 5432 \
  -U postgres -W \
  --table="jobs" \
  --data-only \
  --column-inserts \
  biblio > table.sql

 pg_dump \
  -h localhost \
  -p 5432 \
  -U postgres -W \
  --table="jobs" \
  --column-inserts \
  biblio > table2.sql

###############################################################
psql \
  -h localhost \
  -p 5432 \
  -U user \
  database-name \
  -f table.sql

psql \
  -h localhost \
  -p 5430 \
  -U docker \
  docker \
  -f table.sql

