#!/usr/bin/env bash
#/bin/sh

pwd
whoami

echo "===========================  Waiting till DB initialization  ==========================="
/opt/wait-for-it.sh --host=db --port=27017 --strict --timeout=0
echo "===========================       DB is initialized        ============================="

./gradlew
