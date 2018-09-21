#!/bin/bash

mkdir -p .secrets/db-keys

openssl rand -base64 32 > .secrets/db-keys/xtrabackup_password
openssl rand -base64 32 > .secrets/db-keys/mysql_password
openssl rand -base64 32 > .secrets/db-keys/mysql_root_password

chmod 600 .secrets/db-keys/xtrabackup_password
chmod 600 .secrets/db-keys/mysql_password
chmod 600 .secrets/db-keys/mysql_root_password

docker network create database --driver overlay --attachable
