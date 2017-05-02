#!/bin/bash
set -e

ethminer -M -G --farm-recheck 200 -F http://$PROXY_IP:$PROXY_PORT/$RIG
