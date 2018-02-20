#!/bin/bash
cleanup () {
  kill -s SIGTERM $!
  exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
  echo "echo"
  sleep 60 &
  wait $!
done
