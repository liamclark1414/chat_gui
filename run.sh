#!/usr/bin/env bash
# Start the local chat UI (makes sure Ollama is up first).
cd "$(dirname "$0")"
if ! curl -s -o /dev/null http://127.0.0.1:11434/api/tags; then
  echo "Starting Ollama..."
  (ollama serve >/dev/null 2>&1 &)
  for _ in $(seq 1 20); do curl -s -o /dev/null http://127.0.0.1:11434/api/tags && break; sleep 0.5; done
fi
exec python3 server.py "$@"
