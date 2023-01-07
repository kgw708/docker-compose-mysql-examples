#!/bin/sh

mysql -u docker -pdocker test_database < "/docker-entrypoint-initdb.d/create_test_table.sql"
