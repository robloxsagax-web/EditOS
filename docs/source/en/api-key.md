# API Key Configuration

EditOS supports multiple AI providers. Configure your preferred services in `config.toml`.

## Large Language Model (LLM)

Required for script generation and conversation. Supports any OpenAI-compatible API.

### OpenRouter (Recommended)

Unified access to 100+ models including GPT-4o, Claude, Gemini, Llama, and more.

```toml
[llm]
provider = "openrouter"
model = "openai/gpt-4o-mini-2024-07-18"
base_url = "https://openrouter.ai/api/v1"
api_key = "sk-or-v1-xxxxx"
```

**Get API Key:** https://openrouter.ai/keys

### DeepSeek

```toml
[llm]
provider = "openai"
model = "deepseek-chat"
base_url = "https://api.deepseek.com/v1"
api_key = "sk-xxxxx"
```

**Get API Key:** https://platform.deepseek.com/usage

### OpenAI

```toml
[llm]
provider = "openai"
model = "gpt-4o-mini"
base_url = "https://api.openai.com/v1"
api_key = "sk-xxxxx"
```

**Get API Key:** https://platform.openai.com/api-keys

### Gemini (Google AI)

```toml
[llm]
provider = "openai"
model = "gemini-2.0-flash"
base_url = "https://generativelanguage.googleapis.com/v1beta"
api_key = "AIzaSyxxxxx"
```

**Get API Key:** https://aistudio.google.com/app/apikey

### Anthropic (Claude)

```toml
[llm]
provider = "anthropic"
model = "claude-3-5-sonnet-20240620"
base_url = "https://api.anthropic.com/v1"
api_key = "sk-ant-xxxxx"
```

**Get API Key:** https://console.anthropic.com/settings/keys

### Groq

```toml
[llm]
provider = "openai"
model = "llama-3.1-70b-versatile"
base_url = "https://api.groq.com/openai/v1"
api_key = "gsk_xxxxx"
```

**Get API Key:** https://console.groq.com/keys

### Together AI

```toml
[llm]
provider = "openai"
model = "meta-llama/Llama-3.1-405B-Instruct-Turbo"
base_url = "https://api.together.xyz/v1"
api_key = "togilypxxxxx"
```

**Get API Key:** https://api.together.xyz/settings/api-keys

---

## Vision Model (VLM)

Required for image understanding and clip analysis. Supports multimodal models.

### Gemini Vision (Recommended)

```toml
[vlm]
provider = "openai"
model = "gemini-2.0-flash"
base_url = "https://generativelanguage.googleapis.com/v1beta"
api_key = "AIzaSyxxxxx"
```

### OpenRouter Vision Models

```toml
[vlm]
provider = "openrouter"
model = "google/gemini-2.0-flash"
base_url = "https://openrouter.ai/api/v1"
api_key = "sk-or-v1-xxxxx"
```

### Qwen VL (Alibaba)

```toml
[vlm]
provider = "openai"
model = "qwen-vl-plus"
base_url = "https://dashscope.aliyuncs.com/compatible-mode/v1"
api_key = "sk-xxxxx"
```

**Get API Key:** https://bailian.console.aliyun.com/

### GLM-4V (Zhipu AI)

```toml
[vlm]
provider = "openai"
model = "glm-4v-plus"
base_url = "https://open.bigmodel.cn/api/paas/v4"
api_key = "xxxxx"
```

**Get API Key:** https://open.bigmodel.cn/usercenter/proj-mgmt/apikeys

---

## Text-to-Speech (TTS)

Required for voiceover generation.

### ElevenLabs (Recommended)

```toml
[generate_voiceover]
default_provider = "elevenlabs"

[generate_voiceover.providers.elevenlabs]
api_key = "sk_xxxxx"
voice_id = "EXAVITQu4vr4xnSDxMaL"  # Sarah (free tier)
```

**Get API Key:** https://elevenlabs.io/api
**Free Voices:** https://elevenlabs.io/voice-library

### MiniMax

```toml
[generate_voiceover]
default_provider = "minimax"

[generate_voiceover.providers.minimax]
api_key = "xxxxx"
group_id = "xxxxx"
```

**Get API Key:** https://platform.minimax.io/

---

## Stock Media Search

Optional - enables searching for free stock photos and videos.

### Pexels

```toml
[search_media]
default_provider = "pexels"

[search_media.providers.pexels]
api_key = "xxxxx"
```

**Get API Key:** https://www.pexels.com/api/

### Pixabay

```toml
[search_media]
default_provider = "pixabay"

[search_media.providers.pixabay]
api_key = "xxxxx"
```

**Get API Key:** https://pixabay.com/api/

---

## Environment Variables (ModelScope)

On ModelScope deployment, use environment variables:

| Variable | Description |
|----------|-------------|
| `OPENSTORYLINE_LLM_API_KEY` | LLM API key |
| `OPENSTORYLINE_VLM_API_KEY` | VLM API key |
| `OPENSTORYLINE_PEXELS_API_KEY` | Pexels API key |
| `OPENSTORYLINE_GENERATE_VOICEOVER__PROVIDERS__ELEVENLABS__API_KEY` | ElevenLabs key |

---

## Minimal Config Example

```toml
[llm]
provider = "openrouter"
model = "openai/gpt-4o-mini-2024-07-18"
base_url = "https://openrouter.ai/api/v1"
api_key = "sk-or-v1-your-key"

[vlm]
provider = "openrouter"
model = "google/gemini-2.0-flash"
base_url = "https://openrouter.ai/api/v1"
api_key = "sk-or-v1-your-key"

[generate_voiceover]
default_provider = "elevenlabs"
[generate_voiceover.providers.elevenlabs]
api_key = "sk-your-key"
voice_id = "EXAVITQu4vr4xnSDxMaL"

[search_media]
default_provider = "pexels"
[search_media.providers.pexels]
api_key = "your-pexels-key"
```
