#!/bin/bash

docker container rm -f ai-4-smart-healthcare_django;
docker image rm -f ai-4-smart-healthcare_django;
docker volume rm -f ai-4-smart-healthcare_django_ipython_data;
