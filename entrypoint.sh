#!/bin/sh

if [ ! -d "/root/.cyber/cosmovisor" ]
then
  cp -r /cyber/cosmovisor/  /root/.cyber/
fi

if [  -f "/root/.cyber/cosmovisor/genesis/bin/cyber" ]
then
  cp /cyber/cosmovisor/genesis/bin/cyber  /root/.cyber/cosmovisor/genesis/bin/cyber
fi

if [ "$2" = 'init' ]
then
  return 0
else
  exec "$@"
fi
