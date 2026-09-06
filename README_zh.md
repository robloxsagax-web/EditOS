# EditOS

<h1 align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="web/static/brand_black.svg">
    <img src="web/static/brand_white.svg" alt="EditOS" height="50">
  </picture>
</h1>

---

## 🎨 Logo 与深色模式

EditOS 采用双主题 Logo 系统，确保在任何背景下的最佳可见性：

| 主题 | Logo | 文字颜色 |
|-------|------|------------|
| **浅色模式** | `brand_white.svg` | 深色文字 (#1F2937) |
| **深色模式** | `brand_black.svg` | 白色文字 (#FFFFFF) |

**问题所在：**
- 原始 Logo 的文字颜色不能适应不同主题背景
- 深色文字在深色背景上变得不可见
- 垂直对齐不一致，存在空白区域

**解决方案：**
- 创建独立的浅色/深色变体
- `brand_white.svg`：用于浅色背景的深色文字
- `brand_black.svg`：用于深色背景的白色文字  
- 统一的紫色渐变图标配白色播放/编辑符号
- 针对每个主题优化了阴影效果

**在项目中使用：**
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
    <img src="https://img.shields.io/badge/🌐_ModelScope-演示-4B6CFF?style=for-the-badge&logo=modelscope&logoColor=white" alt="ModelScope 演示"/>
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

**EditOS** 将复杂的视频创作转化为自然、直观的对话体验。由 AI 代理驱动，它处理从脚本生成到最终渲染的所有内容——让专业视频编辑对每个人都变得简单易用。

## ✨ 核心功能

| 功能 | 描述 |
|---------|-------------|
| 🌐 **智能素材搜索** | 自动搜索并下载相关的在线图片和视频片段 |
| ✍️ **AI 脚本生成** | 根据您的主题创建故事线和旁白，支持自定义风格 |
| 🎵 **智能音频** | 自动推荐背景音乐，使用 TTS 生成配音 |
| 🎬 **AI 转场** | 在片段之间创建平滑的 AI 驱动转场效果 |
| 💬 **对话式编辑** | 通过自然语言进行编辑——无需技术技能 |
| ⚡ **技能归档** | 保存并重用您的编辑工作流程用于批量处理 |

## 🚀 支持的 AI 提供商

EditOS 支持多种 AI 提供商以实现最大灵活性：

### 大语言模型 (LLM)

| 提供商 | 模型 | Base URL |
|----------|-------|----------|
| **OpenRouter** | 任何 OpenRouter 模型 (gpt-4o-mini, claude-3-haiku 等) | `https://openrouter.ai/api/v1` |
| **OpenAI** | GPT-4o, GPT-4o-mini, GPT-4 | `https://api.openai.com/v1` |
| **DeepSeek** | deepseek-chat, deepseek-coder | `https://api.deepseek.com/v1` |
| **Gemini** | gemini-2.0-flash, gemini-1.5-pro | `https://generativelanguage.googleapis.com/v1beta` |
| **Anthropic** | claude-3-5-sonnet, claude-3-opus | `https://api.anthropic.com/v1` |
| **Groq** | llama-3.1-70b, mixtral-8x7b | `https://api.groq.com/openai/v1` |
| **Together AI** | llama-3.1-405b, qwen-2.5 | `https://api.together.xyz/v1` |
| **Azure OpenAI** | GPT-4o, GPT-4 | 您的 Azure 端点 |

### 视觉模型 (VLM)

| 提供商 | 模型 | 描述 |
|----------|-------|-------------|
| **Gemini** | `gemini-2.0-flash`, `gemini-1.5-pro` | Google 多模态模型 |
| **Qwen VL** | `qwen2-vl-72b`, `qwen2.5-vl-72b` | 阿里云视觉模型 |
| **GLM-4V** | `glm-4v-plus` | 智谱 AI 视觉模型 |
| **DeepSeek VL** | `deepseek-vl2` | DeepSeek 视觉语言模型 |
| **Llama Vision** | `llama-3.2-90b-vision` | Meta 视觉模型 |

### 语音合成 (TTS)

| 提供商 | 描述 |
|----------|-------------|
| **ElevenLabs** | 高质量神经语音合成 |
| **MiniMax** | 快速且经济实惠的 TTS |
| **Fish Audio** | 开源 TTS 选项 |

### 素材搜索

| 提供商 | 描述 |
|----------|-------------|
| **Pexels** | 免费图片和视频素材 |
| **Pixabay** | 免费素材资源 |

---

## ✨ 演示

| 种草风格 | 幽默风格 | 好物推荐 | 艺术风格 |
|:--------------:|:--------------:|:-------------:|:--------------:|
| <video src="https://github.com/user-attachments/assets/28043813-1fda-4077-80d4-c6f540d7c7cb" width="220" /> | <video src="https://github.com/user-attachments/assets/a1e33da2-a799-4398-a1bb-b25bb5143d7c" width="220" /> | <video src="https://github.com/user-attachments/assets/444fd0fb-8824-4c25-b449-9309b0fcfd85" width="220" /> | <video src="https://github.com/user-attachments/assets/2e69fa0d-b693-4d4f-b4d2-45146254f9e8" width="220" /> |

| 开箱 | 萌宠说话 | 旅行 vlog | 年度回顾 |
|:--------:|:-----------:|:-----------:|:--------------:|
| <video src="https://github.com/user-attachments/assets/ff1d669b-1d27-4cf8-b0be-1b141c717466" width="220" /> | <video src="https://github.com/user-attachments/assets/063608bb-7fbd-4841-a08f-032ae459499f" width="220" /> | <video src="https://github.com/user-attachments/assets/bc441dfa-e995-4575-8401-ecefa269e57b" width="220" /> | <video src="https://github.com/user-attachments/assets/533ef5c3-bb76-4416-bff7-825e88b00b7d" width="220" /> |

---

## 📦 安装

### 快速开始

```bash
# 克隆仓库
git clone https://github.com/robloxsagax-web/EditOS.git
cd EditOS

# 创建虚拟环境
conda create -n editos python=3.11
conda activate editos

# 下载资源
chmod +x download.sh
./download.sh

# 安装依赖
pip install -r requirements.txt
```

### 配置

在 `config.toml` 中设置您的 API 密钥：

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

## 🚀 快速开始

### 启动 Web 界面

```bash
uvicorn agent_fastapi:app --host 127.0.0.1 --port 8005
```

然后在浏览器中打开 http://127.0.0.1:8005。

### CLI 模式

```bash
python cli.py
```

---

## 🐳 Docker 部署

```bash
# 拉取并运行
docker run -v $(pwd)/config.toml:/app/config.toml \
  -v $(pwd)/outputs:/app/outputs \
  -p 7860:7860 \
  editos/editos:v1.0.0
```

---

## 📁 项目结构

```
EditOS/
├── src/edit_os/           # 核心应用
│   ├── mcp/              # Model Context Protocol 服务器
│   ├── nodes/            # 视频处理节点
│   │   └── core_nodes/   # 核心编辑节点
│   ├── skills/           # Agent 技能
│   ├── storage/          # Agent 记忆
│   └── utils/            # 工具函数
├── web/                  # Web 界面
├── prompts/              # LLM 提示词
├── resource/             # 字体、音乐、模板
├── docs/                 # 文档
└── scripts/              # 实用脚本
```

---

## 🤖 Claude Code 集成

```bash
# 从仓库根目录启动 Claude Code
cd EditOS

# 使用内置技能
/editos-install    # 安装和配置
/editos-use        # 启动和使用
```

---

## 📚 文档

- [API 密钥配置](docs/source/zh/api-key.md) - 所有提供商的设置
- [使用指南](docs/source/zh/guide.md) - 教程和示例
- [常见问题](docs/source/zh/faq.md) - 常见问题

---

## 📄 许可证

MIT 许可证 - 参见 [LICENSE](LICENSE)

---

## 最新动态

* **2026-08-05** v1.0.0 - 完整视频编辑流程初始发布
* **2026-04-02** - AI 转场生成功能
* **2026-03-22** - ASR 语音粗剪功能
* **2026-03-12** - Claude Code 和 OpenClaw 集成
