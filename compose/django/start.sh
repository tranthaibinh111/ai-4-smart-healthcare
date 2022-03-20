#!/bin/bash
function manage_app () {
  python manage.py makemigrations
  python manage.py migrate
  python manage.py create_root admin Abc123456
}

function start_development() {
  # use django runserver as development server here.
  manage_app
  python manage.py runserver 0.0.0.0:8000
}

function start_production() {
  # use gunicorn for production server here
  manage_app
  python manage.py collectstatic --no-input
  gunicorn config.wsgi -w 4 -b 0.0.0.0:8000 --chdir=/app --timeout 300  --log-file -
}

if [ "$DEBUG" = "True" ]
then
  echo "use development"
  start_development
else
  echo "use production"
  start_production
fi