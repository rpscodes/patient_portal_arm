FROM arm64v8/postgres:latest

ENV SHELL=/bin/sh

ENV POSTGRES_USER=patient_portal
ENV POSTGRES_PASSWORD=secret
ENV POSTGRES_HOST_AUTH_METHOD=scram-sha-256
ENV POSTGRES_INITDB_ARGS=--auth-host=scram-sha-256

COPY data.sql /docker-entrypoint-initdb.d/data.sql
