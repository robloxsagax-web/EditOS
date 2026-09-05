# FireRed-OpenStoryline (Forked: Muhammad_Mujtaba/dood)

## 📋 Project Overview
**Original Repo:** https://github.com/FireRedTeam/FireRed-OpenStoryline

**Forked for:** Muhammad Mujtaba's ModelScope deployment
**GitHub Mirror:** https://github.com/robloxsagax-web/Ai

A conversational AI video editor that turns complex video creation into natural chat interactions.

---

## 🔧 PAIN POINTS & SOLUTIONS

### 1. Config Environment Variables Not Substituting
**Problem:** `config.toml` had raw `${VAR}` placeholders instead of actual values
**Symptoms:** 
- `UnsupportedProtocol: Request URL is missing 'http://' or 'https://'`
- Empty model names like `${OPENSTORYLINE_VLM_MODEL}`
- LLM/VLM not connecting

**Solution:** 
- Created `modelscope_config.toml.template` with env var placeholders
- Fixed `run.sh` to generate `config.toml` from template using Python substitution
- Hardcoded default values for models/URLs, only API keys come from env vars

### 2. Duplicate Model Names
**Problem:** Model name appeared doubled: `openai/gpt-4o-mini-2024-07-18openai/gpt-4o-mini-2024-07-18`
**Symptoms:** HTTP 400 Bad Request from OpenRouter API
**Cause:** Unknown - possibly env var duplication or config merge issues

**Solution:** Added auto-fix in `src/open_storyline/agent.py`:
```python
if llm_model and len(llm_model) > 20:
    half = len(llm_model) // 2
    if llm_model[:half] == llm_model[half:]:
        llm_model = llm_model[:half]
```

### 3. Invalid Config Sections (Pydantic Validation Errors)
**Problem:** Config had sections not in the Settings model
**Symptoms:** `pydantic_core.ValidationError: Extra inputs are not permitted`
**Sections Removed:**
- `[transitions]` - NOT in Settings model
- `generate_ai_transition.enabled = false` - NOT in Settings model

**Solution:** Removed invalid sections from template

### 4. Invalid ElevenLabs Voice ID
**Problem:** Default voice_id was invalid
**File:** `src/open_storyline/nodes/core_nodes/generate_voiceover.py`
**Old:** `voice_id = "21m00Tcm4TlvRqSmPsE"` (invalid)
**New:** `voice_id = "21m00Tcm4TlvDq8ikWAM"` (Rachel - valid)

### 5. Missing Dependencies/Compatibility Issues
**Problem:** Dependency conflicts causing build failures
**Solution:** Pinned compatible versions:
- `langgraph==1.1.0`
- `langgraph-prebuilt==1.0.8`
- `mcp==1.0.0`
- Used flexible `>=` for langchain-core, langchain, langgraph, langchain-community

### 6. run.sh Not Generating Config
**Problem:** `run.sh` didn't generate config from template, used hardcoded config
**Solution:** Added template-to-config generation with Python substitution

---

## 📁 Key Files

### Configuration
| File | Purpose |
|------|---------|
| `config.toml` | Runtime config (auto-generated) |
| `modelscope_config.toml.template` | Template with env var placeholders |
| `run.sh` | Startup script that generates config |

### Source Code
| File | Purpose |
|------|---------|
| `src/open_storyline/agent.py` | LLM/VLM initialization, duplicate fix |
| `src/open_storyline/nodes/core_nodes/generate_voiceover.py` | Voice ID fix |
| `src/open_storyline/config.py` | Settings model (validates config) |

---

## 🔑 Required Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `OPENSTORYLINE_LLM_API_KEY` | OpenRouter API key | ✅ Yes |
| `OPENSTORYLINE_VLM_API_KEY` | OpenRouter API key | ✅ Yes |
| `OPENSTORYLINE_PEXELS_API_KEY` | Pexels for stock media | Optional |
| `OPENSTORYLINE_GENERATE_VOICEOVER__PROVIDERS__ELEVENLABS__API_KEY` | ElevenLabs for TTS | Optional |

### Hardcoded Defaults (No env var needed)
| Setting | Value |
|---------|-------|
| LLM Model | `openai/gpt-4o-mini-2024-07-18` |
| VLM Model | `google/gemini-2.5-flash-image` |
| Base URL | `https://openrouter.ai/api/v1` |

---

## 🚀 Deployment

### ModelScope
1. Set environment variables in ModelScope settings
2. Use `modelscope_entrypoint.sh` or `run.sh`
3. Config auto-generates from template

### Local / Railway / Other
1. Copy `run.sh` and `modelscope_config.toml.template`
2. Set environment variables
3. Run `./run.sh`

---

## ✅ Current Status

| Feature | Status |
|---------|--------|
| Video Editing Pipeline | ✅ Working |
| Pexels Stock Search | ✅ Working |
| ElevenLabs Voiceover | ✅ Fixed |
| LLM Connection | ✅ Working |
| VLM Connection | ✅ Working |
| MCP Server | ✅ Working |
| AI Transitions | ⚠️ Not configured (optional, expensive) |

---

## 🐛 Known Limitations

1. **AI Transitions** - Disabled by default, requires paid video generation API
2. **Pexels** - Needs API key for stock media search
3. **ElevenLabs** - Needs API key for voiceover generation
4. **TransNetV2 Model** - Downloaded on first run for shot segmentation

---

## 📝 Git History (This Fork)

```
97dee3d - fix: use valid ElevenLabs voice_id (Rachel)
2be212c - config: use user's specified models
fc712d8 - fix: hardcode all LLM/VLM defaults, only API keys from env
47f916c - fix: hardcode VLM defaults, simplify run.sh
cbfc285 - fix: remove enabled=false from generate_ai_transition (not in model)
9f7447d - fix: run.sh now generates config from template with env vars
1ca238e - fix: auto-fix duplicate model names in LLM and VLM config
85042f1 - fix: simplify model name and remove transitions from template
67b8f29 - fix: remove transitions section from config.toml (not in Settings model)
```
