#!/bin/bash
if docker ps --format '{{.Names}}' | grep -q "^nginx-container$"; then
  echo "$(date) - nginx-container is running"
else
  echo "$(date) - nginx-container is NOT running"
fi
