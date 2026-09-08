# EditOS

<h1 align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="web/static/brand_black.svg">
    <img src="web/static/brand_white.svg" alt="EditOS" height="50">
  </picture>
</h1>

<p align="center">
  AI-Powered Video Editing for YouTube Automation
</p>

<p align="center">
  <a href="https://www.modelscope.ai/studios/Muhammad_Mujtaba/EditOS/summary">
    <img src="https://img.shields.io/badge/🌐_ModelScope-Demo-4B6CFF?style=for-the-badge&logo=modelscope&logoColor=white" alt="ModelScope Demo"/>
  </a>
  <a href="https://github.com/robloxsagax-web/EditOS">
    <img src="https://img.shields.io/badge/📦_GitHub-EditOS-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"/>
  </a>
  <img src="https://img.shields.io/badge/python-≥3.11-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python">
  <img src="https://img.shields.io/badge/license-MIT-green?style=for-the-badge" alt="License">
</p>

---

## 💼 The Problem We're Solving

### The Video Editing Bottleneck

Creating YouTube content is **labor-intensive**. Content creators spend:
- ⏰ **3-6 hours** editing each video
- 😤 **Repetitive tasks**: cutting clips, adding transitions, syncing audio
- 💸 **Expensive**: Hiring editors costs $500-2000/month per creator
- 🚫 **Bottleneck**: Great ideas never get made because editing takes too long

### For Hackathons & Builders

You want to build the next viral video app, but:
- Video editing APIs are complex and fragmented
- FFmpeg commands are cryptic
- Building automation takes weeks, not hours

### Our Solution

**EditOS** transforms complex video creation into natural, intuitive conversations. Just describe what you want in plain English, and AI handles the rest.

| Before | After |
|--------|-------|
| 3-6 hours of manual editing | 5-10 minutes via chat |
| Complex FFmpeg commands | Natural language prompts |
| Expensive editors | Automated workflow |
| One video at a time | Batch processing with Skills |

---

## ✨ Key Features

| Feature | Description |
|---------|-------------|
| 🌐 **Smart Media Search** | Automatically searches and downloads relevant images and video clips online |
| ✍️ **AI Script Generation** | Creates storylines and narration based on your theme with customizable styles |
| 🎵 **Intelligent Audio** | Auto-recommends background music, generates voiceovers with TTS |
| 🎬 **AI Transitions** | Creates smooth AI-powered transition effects between clips |
| 💬 **Conversational Editing** | Edit via natural language—no technical skills required |
| ⚡ **Skill Archiving** | Save and reuse your editing workflows for batch processing |

## 🚀 Supported AI Providers

EditOS supports multiple AI providers for maximum flexibility:

### Large Language Models (LLM)

| Provider | Model | Base URL |
|----------|-------|----------|
| **OpenRouter** | Any OpenRouter model (gpt-4o-mini, claude-3-haiku, etc.) | `https://openrouter.ai/api/v1` |
| **OpenAI** | GPT-4o, GPT-4o-mini, GPT-4 | `https://api.openai.com/v1` |
| **DeepSeek** | deepseek-chat, deepseek-coder | `https://api.deepseek.com/v1` |
| **Gemini** | gemini-2.0-flash, gemini-1.5-pro | `https://generativelanguage.googleapis.com/v1beta` |
| **Anthropic** | claude-3-5-sonnet, claude-3-opus | `https://api.anthropic.com/v1` |
| **Groq** | llama-3.1-70b, mixtral-8x7b | `https://api.groq.com/openai/v1` |
| **Together AI** | llama-3.1-405b, qwen-2.5 | `https://api.together.xyz/v1` |
| **Azure OpenAI** | GPT-4o, GPT-4 | Your Azure endpoint |

### Vision Models (VLM)

| Provider | Model | Description |
|----------|-------|-------------|
| **Gemini** | `gemini-2.0-flash`, `gemini-1.5-pro` | Google's multimodal model |
| **Qwen VL** | `qwen2-vl-72b`, `qwen2.5-vl-72b` | Alibaba's vision model |
| **GLM-4V** | `glm-4v-plus` | Zhipu AI's vision model |
| **DeepSeek VL** | `deepseek-vl2` | DeepSeek's vision-language model |
| **Llama Vision** | `llama-3.2-90b-vision` | Meta's vision model |

### Text-to-Speech (TTS)

| Provider | Description |
|----------|-------------|
| **ElevenLabs** | High-quality neural voice synthesis |
| **MiniMax** | Fast and affordable TTS |
| **Fish Audio** | Open-source TTS option |

### Stock Media

| Provider | Description |
|----------|-------------|
| **Pexels** | Free stock photos and videos |
| **Pixabay** | Free stock media |

---

## ✨ Demo

<p align="center">
  <video src="https://github.com/user-attachments/assets/533ef5c3-bb76-4416-bff7-825e88b00b7d" width="220" controls></video>
</p>
</video>
</p>

---

## 📦 Installation

### Quick Start

```bash
# Clone the repository
git clone https://github.com/robloxsagax-web/EditOS.git
cd EditOS

# Create virtual environment
conda create -n editos python=3.11
conda activate editos

# Download resources
chmod +x download.sh
./download.sh

# Install dependencies
pip install -r requirements.txt
```

### Configuration

Edit `config.toml` to set your API keys:

```toml
[llm]
provider = "openrouter"  # openrouter, openai, deepseek, gemini, anthropic, groq, together, azure
model = "openai/gpt-4o-mini-2024-07-18"
base_url = "https://openrouter.ai/api/v1"
api_key = "your-api-key"

[vlm]
provider = "openrouter"  # openrouter, gemini, qwen, glm, deepseek
model = "google/gemini-2.0-flash"
base_url = "https://openrouter.ai/api/v1"
api_key = "your-api-key"

[generate_voiceover]
default_provider = "elevenlabs"  # elevenlabs, minimax, fish
[generate_voiceover.providers.elevenlabs]
api_key = "your-elevenlabs-key"

[search_media]
default_provider = "pexels"
[search_media.providers.pexels]
api_key = "your-pexels-key"
```

---

## 🚀 Quick Start

### Start the Web Interface

```bash
uvicorn agent_fastapi:app --host 127.0.0.1 --port 8005
```

Then open http://127.0.0.1:8005 in your browser.

### CLI Mode

```bash
python cli.py
```

---

## 🐳 Docker Deployment

```bash
# Pull and run
docker run -v $(pwd)/config.toml:/app/config.toml \
  -v $(pwd)/outputs:/app/outputs \
  -p 7860:7860 \
  editos/editos:v1.0.0
```

---

## 📁 Project Structure

```
EditOS/
├── src/edit_os/           # Core application
│   ├── mcp/              # Model Context Protocol server
│   ├── nodes/            # Video processing nodes
│   │   └── core_nodes/   # Core editing nodes
│   ├── skills/           # Agent skills
│   ├── storage/          # Agent memory
│   └── utils/            # Utilities
├── web/                  # Web interface
├── prompts/              # LLM prompts
├── resource/             # Fonts, music, templates
├── docs/                 # Documentation
└── scripts/              # Utility scripts
```

---

## 🤖 Claude Code Integration

```bash
# Start Claude Code from the repo root
cd EditOS

# Use built-in skills
/editos-install    # Install and configure
/editos-use        # Start and use
```

---

## 📚 Documentation

- [API Key Configuration](docs/source/en/api-key.md) - Setup for all providers
- [Usage Guide](docs/source/en/guide.md) - Tutorial and examples
- [FAQ](docs/source/en/faq.md) - Common questions

---

## 📄 License

MIT License - see [LICENSE](LICENSE)

---

## NEWS

* **2026-08-05** v1.0.0 - Initial release with full video editing pipeline
* **2026-04-02** - AI Transition Generation feature
* **2026-03-22** - ASR-based rough cut for speech videos
* **2026-03-12** - Claude Code & OpenClaw integration
