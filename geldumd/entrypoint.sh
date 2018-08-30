#!/bin/bash

command="--log-file /dev/stdout --non-interactive"
command="${command} --confirm-external-bind --rpc-bind-ip 0.0.0.0"
command="${command} --p2p-bind-ip 0.0.0.0"

command="${command} --rpc-bind-port"
if [ -v rpc_bind_port ]; then
  command="${command} ${rpc_bind_port}"
else
  command="${command} 21937"
fi

command="${command} --p2p-bind-port"
if [ -v p2p_bind_port ]; then
  command="${command} ${p2p_bind_port}"
else
  command="${command} 21936"
fi

if [ -v no_igd ]; then
  command="${command} --no-idg"
fi

/geldum/geldumd $command
