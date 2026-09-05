#!/usr/bin/env bash
set -e

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
export PYTHONPATH="$ROOT_DIR/src"

# Generate config.toml from template with environment variables (using Python for portability)
echo "Generating config.toml from template..."
python3 << 'PYTHON_EOF'
import os
with open(os.environ.get("ROOT_DIR", ".") + "/modelscope_config.toml.template") as f:
    content = f.read()
for key, val in os.environ.items():
    if key.startswith("OPENSTORYLINE_"):
        content = content.replace("${" + key + "}", val)
with open(os.environ.get("ROOT_DIR", ".") + "/config.toml", "w") as f:
    f.write(content)
print("Config generated successfully!")
PYTHON_EOF

# Required environment variables check
if [ -z "$OPENSTORYLINE_LLM_API_KEY" ]; then
    echo "ERROR: OPENSTORYLINE_LLM_API_KEY is not set"
    exit 1
fi

if [ -z "$OPENSTORYLINE_VLM_API_KEY" ]; then
    echo "ERROR: OPENSTORYLINE_VLM_API_KEY is not set"
    exit 1
fi

echo "LLM Model: $(grep 'model =' $ROOT_DIR/config.toml | head -1)"
echo "VLM Model: $(grep 'model =' $ROOT_DIR/config.toml | tail -1)"

# Download models if needed
if [ ! -f ".storyline/models/transnetv2-pytorch-weights.pth" ]; then
    echo "Downloading TransNetV2 model..."
    mkdir -p .storyline/models
    wget -q --show-progress -O .storyline/models/transnetv2-pytorch-weights.pth \
        "https://download.openmmlab.com/mmaction/others/transnetv2.pth" || \
    wget -q --show-progress -O .storyline/models/transnetv2-pytorch-weights.pth \
        "https://github.com/TooTouch/TransNetV2/releases/download/v1.0.0/transnetv2-pytorch-weights.pth" || \
    echo "Warning: Could not download TransNetV2 model, will use fallback"
fi

# Create necessary directories
mkdir -p outputs/media
mkdir -p outputs
mkdir -p .storyline/.server_cache
mkdir -p .storyline/skills

HOST="${HOST:-0.0.0.0}"
PORT="${PORT:-7860}"

echo "Starting MCP server on port 8001..."
python -m open_storyline.mcp.server &
MCP_PID=$!

echo "Starting Web UI on $HOST:$PORT..."
uvicorn agent_fastapi:app \
  --host "$HOST" \
  --port "$PORT" &
WEB_PID=$!

echo "Services started successfully!"
echo "Web UI: http://$HOST:$PORT"
echo "MCP Server: http://127.0.0.1:8001/mcp"

trap 'kill $MCP_PID $WEB_PID 2>/dev/null' INT TERM

wait
