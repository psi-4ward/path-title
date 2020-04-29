#!/bin/sh
rm -rf build
docker run --rm -u gradle -v "$PWD":/app -w /app -ti gradle:4.4-jre9 gradle buildPlugin --no-daemon

ls -l build/lib

