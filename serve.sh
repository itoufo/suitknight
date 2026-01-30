#!/bin/bash
cd "$(dirname "$0")"

PORT=8000
while lsof -i :"$PORT" >/dev/null 2>&1; do
  PORT=$((PORT + 1))
done

echo "Starting server at http://localhost:$PORT"
echo "Press Ctrl+C to stop"
python3 -m http.server "$PORT"
