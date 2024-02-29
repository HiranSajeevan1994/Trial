#!/bin/bash

# Check if an argument (hostname or IP) is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <hostname>"
  exit 1
fi

hostname=$1

# Perform 3 pings
for ((i=1; i<=3; i++))
do
  echo "Pinging $hostname (attempt $i)..."
  ping -c 1 $hostname
done
