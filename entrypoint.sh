#!/usr/bin/env bash

trap : INT TERM

: "${TEST:="Default Value"}"

export TEST

TEST=$(cat /home/node/app/secret.txt)

exec "$@" &
tail -f /dev/null & wait
