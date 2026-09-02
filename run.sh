#!/usr/bin/env bash
set -e

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
export PYTHONPATH="$ROOT_DIR/src"

# Generate config.toml from template if running with env vars
if [ -f "$ROOT_DIR/modelscope_config.toml.template" ] && [ -n "$OPENSTORYLINE_LLM_API_KEY" ]; then
    echo "Generating config.toml from template..."
    envsubst < "$ROOT_DIR/modelscope_config.toml.template" > "$ROOT_DIR/config.toml"
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