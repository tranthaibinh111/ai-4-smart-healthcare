#!/bin/bash

docker container rm -f ai-4-smart-healthcare_postgres;
docker volume rm -f ai-4-smart-healthcare_postgres_data;
docker volume rm -f ai-4-smart-healthcare_postgres_backups;
