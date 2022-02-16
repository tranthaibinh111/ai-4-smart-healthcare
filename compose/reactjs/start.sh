#!/bin/bash

function start_development() {
  yarn start
}

function start_production() {
  serve -s build -l 4000
}

if [ "$NODE_ENV" = "production" ]
then
  echo "use production server"
  start_production
else
  echo "use development server"
  start_development
fi
