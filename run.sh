#!/usr/bin/env bash
set -e
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
export PYTHONPATH="$ROOT_DIR/src"

# Generate config.toml from template if available (using Python for portability)
if [ -f "$ROOT_DIR/modelscope_config.toml.template" ]; then
    python3 -c "
import os
with open('$ROOT_DIR/modelscope_config.toml.template') as f:
    content = f.read()
for key, val in os.environ.items():
    if key.startswith('OPENSTORYLINE_'):
        content = content.replace(f'\${key}', val)
with open('$ROOT_DIR/config.toml', 'w') as f:
    f.write(content)
"
fi

HOST="${HOST:-0.0.0.0}"
PORT="${PORT:-7860}"
python -m open_storyline.mcp.server &
MCP_PID=$!
uvicorn agent_fastapi:app \
  --host "$HOST" \
  --port "$PORT" &
WEB_PID=$!
trap 'kill $MCP_PID $WEB_PID' INT TERM
wait