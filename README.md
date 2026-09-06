# EditOS

<h1 align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="web/static/brand_black.svg">
    <img src="web/static/brand_white.svg" alt="EditOS" height="50">
  </picture>
</h1>

---

## 🎨 Logo & Dark Mode

EditOS features a dual-theme logo system for optimal visibility:

| Theme | Logo | Text Color |
|-------|------|------------|
| **Light Mode** | `brand_white.svg` | Dark text (#1F2937) |
| **Dark Mode** | `brand_black.svg` | White text (#FFFFFF) |

**The Problem:**
- Original logos had inconsistent text colors that didn't adapt to background themes
- Dark text became invisible on dark backgrounds
- Poor vertical alignment with blank spaces

**The Solution:**
- Created separate light/dark variants
- `brand_white.svg`: Dark text for light backgrounds
- `brand_black.svg`: White text for dark backgrounds  
- Consistent purple gradient icon with white play/edit symbol
- Optimized drop shadows for each theme

**Usage in your project:**
```html
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="path/to/brand_black.svg">
  <img src="path/to/brand_white.svg" alt="EditOS">
</picture>
```

---

<p align="center">
  <a href="./README_zh.md">🇨🇳 简体中文</a> |
  <a href="./README.md">🌏 English</a>
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

<p align="center">
  <video src="https://github.com/user-attachments/assets/9116767e-bcd9-417a-93d8-2db4d3d5df8e" width="80%" poster=""></video>
</p>

---

**EditOS** transforms complex video creation into natural, intuitive conversations. Powered by AI agents, it handles everything from script generation to final render—making professional video editing accessible to everyone.

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

| Zhongcao Style | Humorous Style | Product Picks | Artistic Style |
|:--------------:|:--------------:|:-------------:|:--------------:|
| <video src="https://github.com/user-attachments/assets/28043813-1fda-4077-80d4-c6f540d7c7cb" width="220" /> | <video src="https://github.com/user-attachments/assets/a1e33da2-a799-4398-a1bb-b25bb5143d7c" width="220" /> | <video src="https://github.com/user-attachments/assets/444fd0fb-8824-4c25-b449-9309b0fcfd85" width="220" /> | <video src="https://github.com/user-attachments/assets/2e69fa0d-b693-4d4f-b4d2-45146254f9e8" width="220" /> |

| Unboxing | Talking Pet | Travel Vlog | Year-in-Review |
|:--------:|:-----------:|:-----------:|:--------------:|
| <video src="https://github.com/user-attachments/assets/ff1d669b-1d27-4cf8-b0be-1b141c717466" width="220" /> | <video src="https://github.com/user-attachments/assets/063608bb-7fbd-4841-a08f-032ae459499f" width="220" /> | <video src="https://github.com/user-attachments/assets/bc441dfa-e995-4575-8401-ecefa269e57b" width="220" /> | <video src="https://github.com/user-attachments/assets/533ef5c3-bb76-4416-bff7-825e88b00b7d" width="220" /> |

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
