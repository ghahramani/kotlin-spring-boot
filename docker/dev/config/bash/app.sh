#!/usr/bin/env bash
#/bin/sh

pwd
whoami

echo "===========================  Waiting till DB initialization  ==========================="
/opt/wait-for-it.sh --host=db --port=27017 --strict --timeout=0
echo "===========================        DB is initialized       ============================="

echo "===========================  Waiting till config server comes up  ======================="
/opt/wait-for-it.sh --host=config-server --port=8080 --strict --timeout=0
echo "===========================       Config server is up  =================================="

./gradlew