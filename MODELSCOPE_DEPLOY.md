# ModelScope Deployment Guide

This guide explains how to deploy OpenStoryline on ModelScope.

## Prerequisites

- Docker installed locally (for building the image)
- ModelScope account with container registry access
- API keys for LLM/VLM providers

## Environment Variables

Create a `.env` file based on `.env.example`:

```bash
# ===== LLM Configuration (OpenRouter) =====
OPENSTORYLINE_LLM_API_KEY="sk-or-v1-your-key"
OPENSTORYLINE_LLM_MODEL="openai/gpt-4o-mini-2024-07-18"
OPENSTORYLINE_LLM_BASE_URL="https://openrouter.ai/api/v1"

# ===== VLM Configuration (OpenRouter) =====
OPENSTORYLINE_VLM_API_KEY="sk-or-v1-your-key"
OPENSTORYLINE_VLM_MODEL="google/gemini-2.5-flash-image"
OPENSTORYLINE_VLM_BASE_URL="https://openrouter.ai/api/v1"

# ===== Optional: ElevenLabs TTS =====
OPENSTORYLINE_GENERATE_VOICEOVER__PROVIDERS__ELEVENLABS__API_KEY=""

# ===== Optional: Pexels =====
OPENSTORYLINE_PEXELS_API_KEY=""
```

## Local Docker Build & Test

```bash
# Build the image
docker build -t openstoryline -f Dockerfile.modelscope .

# Run with environment variables
docker run -p 7860:7860 \
  -e OPENSTORYLINE_LLM_API_KEY="your-key" \
  -e OPENSTORYLINE_LLM_MODEL="openai/gpt-4o-mini-2024-07-18" \
  -e OPENSTORYLINE_LLM_BASE_URL="https://openrouter.ai/api/v1" \
  -e OPENSTORYLINE_VLM_API_KEY="your-key" \
  -e OPENSTORYLINE_VLM_MODEL="google/gemini-2.5-flash-image" \
  -e OPENSTORYLINE_VLM_BASE_URL="https://openrouter.ai/api/v1" \
  openstoryline
```

## ModelScope Deployment

1. Push your Docker image to ModelScope container registry
2. Configure the following in ModelScope dashboard:
   - **Port**: 7860
   - **Environment Variables**: Add all required `OPENSTORYLINE_*` variables
   - **Start Command**: `bash run.sh`

## Supported Models

### LLM (Language Model)
- OpenAI: `openai/gpt-4o-mini-2024-07-18`, `openai/gpt-4o`
- Anthropic: `anthropic/claude-3.5-sonnet`
- Any OpenAI-compatible API

### VLM (Vision Language Model)
- Google: `google/gemini-2.5-flash-image`, `google/gemini-pro-vision`
- Qwen: `qwen/qwen-vl-plus`
- Any OpenAI-compatible API

## Features Included

- ✅ Native MoviePy transitions (FREE, no API cost)
- ✅ ElevenLabs TTS support
- ✅ Pexels stock video search
- ✅ Web UI with chat interface
- ✅ MCP server integration

## Troubleshooting

### Container won't start
- Verify all required environment variables are set
- Check logs: `docker logs <container_id>`

### Model errors
- Ensure API keys are valid
- Check base URLs are correct (must end with `/v1` for OpenRouter)

### Out of memory
- Reduce `max_frames` in config (default: 64)
- Use smaller models like `gpt-4o-mini`
