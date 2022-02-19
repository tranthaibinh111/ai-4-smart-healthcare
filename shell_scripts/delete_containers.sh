#!/bin/bash
dir="$(pwd)/shell_scripts"

bash "$dir/delete_nginx.sh"
bash "$dir/delete_reactjs.sh"
bash "$dir/delete_django.sh"
bash "$dir/delete_postgres.sh"
docker volume rm -f ai-4-smart-healthcare_static_volume;
