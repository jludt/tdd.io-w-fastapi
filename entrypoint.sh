#!/bin/sh

echo "Waiting for postgres to start..."

while ! nc -z web-db 5432; do
  sleep 0.1
done

echo "Postgres SQL Started!"

exec "$@"
