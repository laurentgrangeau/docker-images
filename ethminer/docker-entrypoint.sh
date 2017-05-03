#!/bin/bash
set -e

ldconfig /usr/lib/ /opt/amdgpu-pro/lib/x86_64-linux-gnu/
ethminer -G --farm-recheck 400 -F http://$PROXY_IP:$PROXY_PORT/$RIG --cl-local-work 256 --cl-global-work 16384
