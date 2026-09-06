#!/usr/bin/env bash
set -e
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
export PYTHONPATH="$ROOT_DIR/src"

# Generate config.toml from template if available
if [ -f "$ROOT_DIR/modelscope_config.toml.template" ]; then
    python3 << 'PYTHON_EOF'
import os

ROOT_DIR = os.environ.get("ROOT_DIR", ".")
template_path = os.path.join(ROOT_DIR, "modelscope_config.toml.template")
config_path = os.path.join(ROOT_DIR, "config.toml")

# Debug: print all OPENSTORYLINE_ env vars
print("=== Environment Variables Debug ===")
for key, val in sorted(os.environ.items()):
    if key.startswith("OPENSTORYLINE_"):
        print(f"  {key}={val[:20]}..." if len(val) > 20 else f"  {key}={val}")

with open(template_path) as f:
    content = f.read()

replacements = 0
for key, val in os.environ.items():
    if key.startswith("OPENSTORYLINE_"):
        placeholder = "${" + key + "}"
        if placeholder in content:
            content = content.replace(placeholder, val)
            replacements += 1
            print(f"Replaced: {key}")

print(f"=== Total replacements: {replacements} ===")

with open(config_path, "w") as f:
    f.write(content)
PYTHON_EOF
fi

HOST="${HOST:-0.0.0.0}"
PORT="${PORT:-7860}"
python -m edit_os.mcp.server &
MCP_PID=$!
uvicorn agent_fastapi:app \
  --host "$HOST" \
  --port "$PORT" &
WEB_PID=$!
trap 'kill $MCP_PID $WEB_PID' INT TERM
wait