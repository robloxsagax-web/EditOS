# EditOS Repository Analysis

## 📋 Project Overview

**Project:** EditOS - AI-powered conversational video editor
**Repository:** https://github.com/robloxsagax-web/EditOS
**ModelScope:** https://www.modelscope.cn/studios/Muhammad_Mujtaba/EditOS

EditOS transforms complex video creation into natural, intuitive conversations using AI agents.

---

## 🔧 Configuration Files

| File | Purpose |
|------|---------|
| `config.toml` | Runtime config (auto-generated) |
| `modelscope_config.toml.template` | Template with env var placeholders |
| `run.sh` | Startup script that generates config |

---

## 🔑 Required Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `OPENSTORYLINE_LLM_API_KEY` | OpenRouter API key | ✅ Yes |
| `OPENSTORYLINE_VLM_API_KEY` | OpenRouter API key | ✅ Yes |
| `OPENSTORYLINE_PEXELS_API_KEY` | Pexels for stock media | Optional |
| `OPENSTORYLINE_GENERATE_VOICEOVER__PROVIDERS__ELEVENLABS__API_KEY` | ElevenLabs for TTS | Optional |

### Hardcoded Defaults
| Setting | Value |
|---------|-------|
| LLM Model | `openai/gpt-4o-mini-2024-07-18` |
| VLM Model | `google/gemini-2.5-flash-image` |
| Base URL | `https://openrouter.ai/api/v1` |

---

## 🏗️ Architecture

```
EditOS/
├── src/edit_os/           Core application
│   ├── mcp/               Model Context Protocol
│   ├── nodes/             Video processing nodes
│   ├── skills/            Agent skills library
│   ├── storage/           Agent Memory
│   └── utils/             Helper utilities
├── web/                   Web interface
├── prompts/               LLM prompt templates
├── resource/              Static resources
└── docs/                  Documentation
```

---

## 🎬 Video Processing Nodes

| Node | Description |
|------|-------------|
| `load_media` | Load and validate input media files |
| `search_media` | Search and download online media (Pexels) |
| `split_shots` | Shot detection and segmentation |
| `asr_node` | Speech-to-text transcription |
| `understand_clips` | AI-powered clip content analysis |
| `filter_clips` | Filter clips based on criteria |
| `group_clips` | Group related clips together |
| `plan_timeline` | Plan video timeline structure |
| `generate_script` | Generate narration script |
| `generate_voiceover` | Text-to-speech voiceover |
| `select_bgm` | Background music selection |
| `recommend_effects` | Recommend visual effects |
| `render_video` | Final video rendering |

---

## 🚀 Deployment

### ModelScope
1. Set environment variables in ModelScope settings
2. Use `modelscope_entrypoint.sh` or `run.sh`
3. Config auto-generates from template

### Local
1. Clone repository
2. Run `./download.sh` to get resources
3. Configure `config.toml` with API keys
4. Run `./run.sh`

---

## ✅ Current Status

| Feature | Status |
|---------|--------|
| Video Editing Pipeline | ✅ Working |
| Pexels Stock Search | ✅ Working |
| ElevenLabs Voiceover | ✅ Working (uses Sarah voice) |
| LLM Connection | ✅ Working |
| VLM Connection | ✅ Working |
| MCP Server | ✅ Working |
| AI Transitions | ⚠️ Optional (requires paid API) |

---

## 📝 Recent Changes

```
edf03a2 - fix: make download.sh resilient to missing external resources
aa84078 - merge modelscope master into GitHub main
37b14ad - fix: use Sarah free API voice instead of Rachel
```
