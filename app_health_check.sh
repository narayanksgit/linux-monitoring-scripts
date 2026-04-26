#!/bin/bash
URL="http://localhost:8080"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$STATUS" = "200" ]; then
  echo "$(date) - App is UP"
else
  echo "$(date) - App is DOWN (HTTP $STATUS)"
fi
