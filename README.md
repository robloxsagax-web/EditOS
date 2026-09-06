# EditOS

<div align="center">
  <a href="#gh-light-mode-only">
    <img src="web/static/brand_white.svg" alt="EditOS" width="70%"/>
  </a>
  <a href="#gh-dark-mode-only">
    <img src="web/static/brand_black.svg" alt="EditOS" width="70%"/>
  </a>
  
  <p>
    <a href="./README_zh.md">🇨🇳 简体中文</a> |
    <a href="./README.md">🌏 English</a>
  </p>
  <p>
    <a href="https://www.modelscope.cn/studios/Muhammad_Mujtaba/EditOS" target="_blank">
        <img alt="ModelScope Demo" src="https://img.shields.io/badge/ModelScope-Demo-4B6CFF?style=flat&logo=modelscope&logoColor=white" style="display: inline-block;"/></a>
    <a href="https://github.com/robloxsagax-web/EditOS" target="_blank"><img alt="GitHub" src="https://img.shields.io/badge/GitHub-EditOS-181717?style=flat&logo=github&logoColor=white" style="display: inline-block;"/></a>
    <img src="https://img.shields.io/badge/python-≥3.11-blue" alt="Python">
    <img src="https://img.shields.io/badge/license-MIT-blue" alt="License">
  </p>
</div>

<div align="center">

[🌐 ModelScope Demo](https://www.modelscope.ai/studios/Muhammad_Mujtaba/EditOS/summary) • [📦 GitHub](https://github.com/robloxsagax-web/EditOS)

</div>

<div align="center">
  <video src="https://github.com/user-attachments/assets/9116767e-bcd9-417a-93d8-2db4d3d5df8e" width="70%" poster=""> </video>
</div>

**EditOS** transforms complex video creation into natural, intuitive conversations. Designed with both accessibility and enterprise-grade reliability in mind, EditOS makes video creation accessible and friendly to beginners and creative professionals alike.

## ✨ Key Features
- 🌐 **Smart Media Search & Organization**: Automatically searches online and downloads images and video clips that match your requirements. Performs clip segmentation and content understanding based on your thematic media.
- ✍️ **Intelligent Script Generation**: Combines user themes, visual understanding, and emotion recognition to automatically construct storylines and context-aware narration. Features built-in Few-shot style transfer capabilities, allowing users to define specific copy styles (e.g., product reviews, casual vlogs) via reference text, achieving precise replication of tone, rhythm, and sentence structure.
- 🎵 **Intelligent Music, Voiceover & Font Recommendations**: Supports personal playlist imports and auto-recommends BGM based on content and mood, featuring smart beat-syncing. Simply describe the desired tone—e.g., "Restrained," "Emotional," or "Documentary-style"—and the system matches suitable voiceovers and fonts to ensure a cohesive aesthetic.
- 💬 **Conversational Refinement**: Rapidly cut, swap, or resequence clips. Edit scripts and fine-tune visual details—including color, font, stroke, and position. All edits are performed exclusively via natural language prompts with immediate results.
- ⚡**Editing Skill Archiving**: Save your complete editing workflow as a custom Skill. Simply swap the media and apply the corresponding Skill to instantly replicate the style, enabling efficient batch creation.

## NEWS

* 🎬 **2026-08-05**: v1.0.0 release with comprehensive video editing capabilities, AI transitions, and conversational interface.
* 🎬 **2026-04-02**: Added the **AI Transition Generation** feature, which automatically creates transition shots based on the ending frame of one clip, the opening frame of the next, and a natural-language description, making scene transitions smoother and the narrative more coherent.
* 🚀 **2026-03-22**: Introduced an **ASR-based rough cut skill for speech videos**, enabling automatic removal of filler words, disfluencies, and repeated sentences, with timestamp-aligned segmentation for cleaner and more efficient speech editing workflows.
* 🔥 **2026-03-12**: Integrated with **OpenClaw**, adding two OpenClaw Skills — `editos-install` and `editos-use` — covering the initial installation/first-run workflow and the actual usage workflow, respectively. Also added Skill usage instructions for **Claude Code**, making it easier for **Claude Code** to install and invoke the project in accordance with the repository guidelines.

## ✨ Demo

| Zhongcao Style | Humorous Style | Product Picks | Artistic Style |
|:--------------:|:--------------:|:-------------:|:--------------:|
| <video src="https://github.com/user-attachments/assets/28043813-1fda-4077-80d4-c6f540d7c7cb" width="220" /> | <video src="https://github.com/user-attachments/assets/a1e33da2-a799-4398-a1bb-b25bb5143d7c" width="220" /> | <video src="https://github.com/user-attachments/assets/444fd0fb-8824-4c25-b449-9309b0fcfd85" width="220" /> | <video src="https://github.com/user-attachments/assets/2e69fa0d-b693-4d4f-b4d2-45146254f9e8" width="220" /> |

| Unboxing | Talking Pet | Travel Vlog | Year-in-Review |
|:--------:|:-----------:|:-----------:|:--------------:|
| <video src="https://github.com/user-attachments/assets/ff1d669b-1d27-4cf8-b0be-1b141c717466" width="220" /> | <video src="https://github.com/user-attachments/assets/063608bb-7fbd-4841-a08f-032ae459499f" width="220" /> | <video src="https://github.com/user-attachments/assets/bc441dfa-e995-4575-8401-ecefa269e57b" width="220" /> | <video src="https://github.com/user-attachments/assets/533ef5c3-bb76-4416-bff7-825e88b00b7d" width="220" /> |

## 🤖 Use Through an Agent

EditOS supports usage through Agent Skills.
We provide two Skills:

* `editos-install`: for installation, configuration, and first-run verification.
* `editos-use`: for starting the service and running the actual video editing workflow.

### Claude Code

This repository comes with built-in Claude Code Skills.
If you start Claude Code from the **root directory of this repository**, you can use the project-level Skills included in the repo directly. Claude Code can then help you install and use EditOS.

```bash
/editos-install
/editos-use
```

If you want to install these two Skills into your own global Claude Code configuration, run:

```bash
mkdir -p ~/.claude/skills
cp -R .claude/skills/editos-install ~/.claude/skills/
cp -R .claude/skills/editos-use ~/.claude/skills/
```

## 📦 Install

### 1. Clone repository
```bash
git clone https://github.com/robloxsagax-web/EditOS.git
cd EditOS
```

### 2. Create a virtual environment

```bash
# Recommended python>=3.11
conda create -n editos python=3.11
conda activate editos
```

### 3. Resource Download & Installation

```bash
chmod +x download.sh
./download.sh
pip install -r requirements.txt
```

## 🚀 Quick Start

Note: Before starting, you need to configure the API-Key in `config.toml`. For details, please refer to the documentation [API-Key Configuration](docs/source/en/api-key.md).

### Start the MCP Server

```bash
PYTHONPATH=src python -m edit_os.mcp.server
```

### Start the conversation interface

- **Method 1: Command Line Interface**

  ```bash
  python cli.py
  ```

- **Method 2: Web Interface**

  ```bash
  uvicorn agent_fastapi:app --host 127.0.0.1 --port 8005
  ```

## 📁 Project Structure

```
EditOS/
├── src/edit_os/               Core application
│   ├── mcp/                  Model Context Protocol
│   ├── nodes/                Video processing nodes
│   ├── skills/               Agent skills library
│   ├── storage/              Agent Memory
│   ├── utils/                Helper utilities
│   ├── agent.py              Build Agent
│   └── config.py             Configuration management
├── docs/                     Documentation
├── Dockerfile                Docker Configuration
├── prompts/                  LLM prompt templates
├── resource/                 Static resources
│   ├── bgms/                 Background music library
│   ├── fonts/                Font files
│   ├── script_templates/     Video script templates
│   └── unicode_emojis.json   Emoji list
├── scripts/                  Utility scripts
├── web/                      Web interface
├── agent_fastapi.py          FastAPI server
├── cli.py                    Command-line interface
├── config.toml               Main configuration file
├── build_env.sh              Environment Build Script
├── download.sh               Resource downloader
├── requirements.txt          Runtime dependencies
└── run.sh                    Launch script
```

## 📚 Documentation

### 📖 Tutorial Index

- [API Key Configuration](docs/source/en/api-key.md) - How to configure and manage API keys
- [Usage Tutorial](docs/source/en/guide.md) - Common use cases and basic operations
- [FAQ](docs/source/en/faq.md) - Frequently asked questions

## TODO

- [ ] Add the function of **voiceover type video editing**
- [ ] Add support for **voice cloning**
- [ ] Add more **transition/filter/effects** effects functions
- [ ] Add **image/video generation and editing** capabilities
- [ ] **GPU-accelerated** rendering and highlight selection

## Acknowledgements

This project is built upon the following excellent open-source projects:

### Core Dependencies
- [MoviePy](https://github.com/Zulko/moviepy) - Video editing library
- [FFmpeg](https://ffmpeg.org/) - Multimedia framework
- [LangChain](https://www.langchain.com/) - A framework that provides pre-built Agents

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
