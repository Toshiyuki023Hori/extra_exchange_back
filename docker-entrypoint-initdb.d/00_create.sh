#!/bin/bash
set -e

# EOSQLはコードブロックのようなものです
# .shと.sqlで書き方が違うから注意(Docker imageのPosgresとMySQLで違うのかも...?)
# CREATE USER == CREATE ROLE に等しいから注意
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE USER $DB_USER WITH LOGIN PASSWORD '${DB_PASSWORD}';
  ALTER ROLE $DB_USER CREATEROLE CREATEDB;
  CREATE DATABASE $DB_dev;
  CREATE DATABASE $DB_test;
  CREATE DATABASE $DB_production;
  GRANT ALL PRIVILEGES ON DATABASE $DB_dev TO $DB_USER;
  GRANT ALL PRIVILEGES ON DATABASE $DB_test TO $DB_USER;
  GRANT ALL PRIVILEGES ON DATABASE $DB_production TO $DB_USER;
EOSQL

