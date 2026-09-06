# API 密钥配置

EditOS 支持多种 AI 提供商。在 `config.toml` 中配置您偏好的服务。

## 大语言模型 (LLM)

用于脚本生成和对话。支持任何 OpenAI 兼容 API。

### OpenRouter（推荐）

统一访问 100+ 模型，包括 GPT-4o、Claude、Gemini、Llama 等。

```toml
[llm]
provider = "openrouter"
model = "openai/gpt-4o-mini-2024-07-18"
base_url = "https://openrouter.ai/api/v1"
api_key = "sk-or-v1-xxxxx"
```

**获取密钥：** https://openrouter.ai/keys

### DeepSeek

```toml
[llm]
provider = "openai"
model = "deepseek-chat"
base_url = "https://api.deepseek.com/v1"
api_key = "sk-xxxxx"
```

**获取密钥：** https://platform.deepseek.com/usage

### OpenAI

```toml
[llm]
provider = "openai"
model = "gpt-4o-mini"
base_url = "https://api.openai.com/v1"
api_key = "sk-xxxxx"
```

**获取密钥：** https://platform.openai.com/api-keys

### Gemini (Google AI)

```toml
[llm]
provider = "openai"
model = "gemini-2.0-flash"
base_url = "https://generativelanguage.googleapis.com/v1beta"
api_key = "AIzaSyxxxxx"
```

**获取密钥：** https://aistudio.google.com/app/apikey

### Anthropic (Claude)

```toml
[llm]
provider = "anthropic"
model = "claude-3-5-sonnet-20240620"
base_url = "https://api.anthropic.com/v1"
api_key = "sk-ant-xxxxx"
```

**获取密钥：** https://console.anthropic.com/settings/keys

### Groq

```toml
[llm]
provider = "openai"
model = "llama-3.1-70b-versatile"
base_url = "https://api.groq.com/openai/v1"
api_key = "gsk_xxxxx"
```

**获取密钥：** https://console.groq.com/keys

### Together AI

```toml
[llm]
provider = "openai"
model = "meta-llama/Llama-3.1-405B-Instruct-Turbo"
base_url = "https://api.together.xyz/v1"
api_key = "togilypxxxxx"
```

**获取密钥：** https://api.together.xyz/settings/api-keys

---

## 视觉模型 (VLM)

用于图像理解和片段分析。支持多模态模型。

### Gemini Vision（推荐）

```toml
[vlm]
provider = "openai"
model = "gemini-2.0-flash"
base_url = "https://generativelanguage.googleapis.com/v1beta"
api_key = "AIzaSyxxxxx"
```

### OpenRouter 视觉模型

```toml
[vlm]
provider = "openrouter"
model = "google/gemini-2.0-flash"
base_url = "https://openrouter.ai/api/v1"
api_key = "sk-or-v1-xxxxx"
```

### Qwen VL（阿里云）

```toml
[vlm]
provider = "openai"
model = "qwen-vl-plus"
base_url = "https://dashscope.aliyuncs.com/compatible-mode/v1"
api_key = "sk-xxxxx"
```

**获取密钥：** https://bailian.console.aliyun.com/

### GLM-4V（智谱 AI）

```toml
[vlm]
provider = "openai"
model = "glm-4v-plus"
base_url = "https://open.bigmodel.cn/api/paas/v4"
api_key = "xxxxx"
```

**获取密钥：** https://open.bigmodel.cn/usercenter/proj-mgmt/apikeys

---

## 语音合成 (TTS)

用于配音生成。

### ElevenLabs（推荐）

```toml
[generate_voiceover]
default_provider = "elevenlabs"

[generate_voiceover.providers.elevenlabs]
api_key = "sk_xxxxx"
voice_id = "EXAVITQu4vr4xnSDxMaL"  # Sarah（免费层）
```

**获取密钥：** https://elevenlabs.io/api
**免费音色：** https://elevenlabs.io/voice-library

### MiniMax

```toml
[generate_voiceover]
default_provider = "minimax"

[generate_voiceover.providers.minimax]
api_key = "xxxxx"
group_id = "xxxxx"
```

**获取密钥：** https://platform.minimax.io/

---

## 素材搜索

可选 - 用于搜索免费图片和视频素材。

### Pexels

```toml
[search_media]
default_provider = "pexels"

[search_media.providers.pexels]
api_key = "xxxxx"
```

**获取密钥：** https://www.pexels.com/api/

### Pixabay

```toml
[search_media]
default_provider = "pixabay"

[search_media.providers.pixabay]
api_key = "xxxxx"
```

**获取密钥：** https://pixabay.com/api/

---

## 环境变量（ModelScope）

在 ModelScope 部署时，使用环境变量：

| 变量 | 描述 |
|----------|-------------|
| `OPENSTORYLINE_LLM_API_KEY` | LLM API 密钥 |
| `OPENSTORYLINE_VLM_API_KEY` | VLM API 密钥 |
| `OPENSTORYLINE_PEXELS_API_KEY` | Pexels API 密钥 |
| `OPENSTORYLINE_GENERATE_VOICEOVER__PROVIDERS__ELEVENLABS__API_KEY` | ElevenLabs 密钥 |

---

## 最小配置示例

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
