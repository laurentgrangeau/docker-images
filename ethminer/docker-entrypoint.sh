#!/bin/bash
set -e

ldconfig /usr/lib/ /opt/amdgpu-pro/lib/x86_64-linux-gnu/
ethminer -M -G --farm-recheck 200 -F http://$PROXY_IP:$PROXY_PORT/$RIG
