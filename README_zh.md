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

[🌐 ModelScope 演示](https://www.modelscope.ai/studios/Muhammad_Mujtaba/EditOS/summary) • [📦 GitHub](https://github.com/robloxsagax-web/EditOS)

</div>

<div align="center">
  <video src="https://github.com/user-attachments/assets/9116767e-bcd9-417a-93d8-2db4d3d5df8e" width="70%" poster=""> </video>
</div>

**EditOS** 将复杂的视频创作转化为自然、直观的对话体验。EditOS 在设计和开发时兼顾了易用性和企业级可靠性，让视频创作对初学者和创意爱好者都变得简单友好。

## ✨ 核心特性
- 🌐 **智能媒体搜索与整理**：自动搜索并下载符合您需求的图片和视频片段。基于主题媒体进行片段分割和内容理解。
- ✍️ **智能脚本生成**：结合用户主题、视觉理解和情感识别，自动构建故事线和情境化旁白。支持 Few-shot 风格迁移，允许用户通过参考文本定义特定文案风格（如产品评测、随性 vlog），实现精确的语调、节奏和句式复制。
- 🎵 **智能音乐、配音与字体推荐**：支持个人播放列表导入，根据内容和情绪自动推荐背景音乐，智能节拍同步。只需描述您想要的风格——例如"克制"、"情感化"或"纪录片风格"——系统就会匹配合适的配音和字体，确保统一的审美风格。
- 💬 **对话式精修**：快速剪切、替换或重新排序片段。编辑脚本和微调视觉细节——包括颜色、字体、描边和位置。所有编辑都通过自然语言提示完成，立即生效。
- ⚡**编辑技能归档**：将完整的编辑工作流程保存为自定义技能。只需更换媒体并应用相应技能，即可立即复制风格，实现高效批量创作。

## 最新动态

* 🎬 **2026-08-05**: v1.0.0 发布，具备全面的视频编辑能力、AI 转场和对话式界面。
* 🎬 **2026-04-02**: 新增 **AI 转场生成**功能，基于前一个片段的结尾帧、后一个片段的开头帧以及自然语言描述，自动创建过渡镜头，使场景转换更流畅、叙事更连贯。
* 🚀 **2026-03-22**: 引入 **ASR 语音粗剪技能**，支持自动删除填充词、口癖和重复句子，实现时间戳对齐分割，简化语音编辑工作流程。
* 🔥 **2026-03-12**: 集成 **OpenClaw**，新增两个 OpenClaw 技能——`editos-install` 和 `editos-use`——分别覆盖初始安装/首次运行工作流程和实际使用工作流程。同时添加了 **Claude Code** 的技能使用说明，使 **Claude Code** 能够更便捷地安装和调用项目。

## ✨ 演示

| 种草风格 | 幽默风格 | 好物推荐 | 艺术风格 |
|:--------:|:--------:|:--------:|:--------:|
| <video src="https://github.com/user-attachments/assets/28043813-1fda-4077-80d4-c6f540d7c7cb" width="220" /> | <video src="https://github.com/user-attachments/assets/a1e33da2-a799-4398-a1bb-b25bb5143d7c" width="220" /> | <video src="https://github.com/user-attachments/assets/444fd0fb-8824-4c25-b449-9309b0fcfd85" width="220" /> | <video src="https://github.com/user-attachments/assets/2e69fa0d-b693-4d4f-b4d2-45146254f9e8" width="220" /> |

| 开箱 | 萌宠说话 | 旅行 vlog | 年度回顾 |
|:----:|:--------:|:---------:|:--------:|
| <video src="https://github.com/user-attachments/assets/ff1d669b-1d27-4cf8-b0be-1b141c717466" width="220" /> | <video src="https://github.com/user-attachments/assets/063608bb-7fbd-4841-a08f-032ae459499f" width="220" /> | <video src="https://github.com/user-attachments/assets/bc441dfa-e995-4575-8401-ecefa269e57b" width="220" /> | <video src="https://github.com/user-attachments/assets/533ef5c3-bb76-4416-bff7-825e88b00b7d" width="220" /> |

## 🤖 通过 Agent 使用

EditOS 支持通过 Agent Skills 使用。
我们提供两个技能：

* `editos-install`：用于安装、配置和首次运行验证。
* `editos-use`：用于启动服务和运行实际视频编辑工作流程。

### Claude Code

本仓库包含内置的 Claude Code Skills。
如果您从**本仓库的根目录**启动 Claude Code，可以直接使用仓库中包含的项目级 Skills。Claude Code 可以帮助您安装和使用 EditOS。

```bash
/editos-install
/editos-use
```

如果您想将这些技能安装到自己的全局 Claude Code 配置中，请运行：

```bash
mkdir -p ~/.claude/skills
cp -R .claude/skills/editos-install ~/.claude/skills/
cp -R .claude/skills/editos-use ~/.claude/skills/
```

## 📦 安装

### 1. 克隆仓库
```bash
git clone https://github.com/robloxsagax-web/EditOS.git
cd EditOS
```

### 2. 创建虚拟环境

```bash
# 推荐 python>=3.11
conda create -n editos python=3.11
conda activate editos
```

### 3. 资源下载与安装

```bash
chmod +x download.sh
./download.sh
pip install -r requirements.txt
```

## 🚀 快速开始

注意：启动前，您需要在 `config.toml` 中配置 API-Key。详情请参阅文档 [API-Key 配置](docs/source/zh/api-key.md)。

### 启动 MCP 服务器

```bash
PYTHONPATH=src python -m edit_os.mcp.server
```

### 启动对话界面

- **方法一：命令行界面**

  ```bash
  python cli.py
  ```

- **方法二：Web 界面**

  ```bash
  uvicorn agent_fastapi:app --host 127.0.0.1 --port 8005
  ```

## 📁 项目结构

```
EditOS/
├── src/edit_os/               核心应用
│   ├── mcp/                   Model Context Protocol
│   ├── nodes/                 视频处理节点
│   ├── skills/                Agent 技能库
│   ├── storage/               Agent 记忆
│   ├── utils/                 辅助工具
│   ├── agent.py               构建 Agent
│   └── config.py              配置管理
├── docs/                      文档
├── Dockerfile                 Docker 配置
├── prompts/                   LLM 提示词模板
├── resource/                  静态资源
│   ├── bgms/                  背景音乐库
│   ├── fonts/                 字体文件
│   ├── script_templates/      视频脚本模板
│   └── unicode_emojis.json   表情列表
├── scripts/                   实用脚本
├── web/                       Web 界面
├── agent_fastapi.py           FastAPI 服务器
├── cli.py                     命令行界面
├── config.toml                主配置文件
├── build_env.sh               环境构建脚本
├── download.sh               资源下载器
├── requirements.txt           运行时依赖
└── run.sh                     启动脚本
```

## 📚 文档

### 📖 教程索引

- [API-Key 配置](docs/source/zh/api-key.md) - 如何配置和管理 API 密钥
- [使用教程](docs/source/zh/guide.md) - 常见用例和基本操作
- [常见问题](docs/source/zh/faq.md) - 常见问题解答

## TODO

- [ ] 添加**配音类视频编辑**功能
- [ ] 添加**声音克隆**支持
- [ ] 添加更多**转场/滤镜/特效**效果功能
- [ ] 添加**图像/视频生成和编辑**能力
- [ ] **GPU 加速**渲染和高光选择

## 致谢

本项目基于以下优秀的开源项目构建：

### 核心依赖
- [MoviePy](https://github.com/Zulko/moviepy) - 视频编辑库
- [FFmpeg](https://ffmpeg.org/) - 多媒体框架
- [LangChain](https://www.langchain.com/) - 提供预构建 Agent 的框架

## 📄 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件。
