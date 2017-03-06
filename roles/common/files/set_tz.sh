#!/bin/bash

if ! diff /usr/share/zoneinfo/America/Chicago /etc/localtime; then
  cp /usr/share/zoneinfo/America/Chicago /etc/localtime
  printf "CHANGED"
fi
