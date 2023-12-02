#!/bin/sh

ulimit -n 4096 &

export DAEMON_LOG_BUFFER_SIZE=700

# Start cyber node

/usr/bin/cosmovisor run start --compute-gpu false --search-api $ALLOW_SEARCH --home /root/.cyber