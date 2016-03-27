#!/bin/bash
set -e

ethminer --farm-recheck 200 -F http://$PROXY_IP:$PROXY_PORT/$RIG
