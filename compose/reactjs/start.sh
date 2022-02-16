#!/bin/bash

function start_development() {
  yarn start
}

function start_production() {
  serve -s build -l 4000
}

if [ "$DEBUG" = "true" ]
then
  echo "use development server"
  start_development
else
  echo "use production server"
  start_production
fi
