# Resume Writing Skill

[English](#english) · [中文](#中文)

---

## English

A resume writing skill for AI coding agents — conducts structured interviews across 12 internet industry role sequences (backend, frontend, AI/algorithm, product, design, operations, marketing, data, QA, HR/finance, project management, hardware/supply chain), auto-matches the right verb sets and quantification style per role, and generates ready-to-submit resumes in **10–15 minutes**, from scratch to completion. Currently supports **Chinese-language resume writing only**.

### Supported AI Agents

This skill works as a plain `SKILL.md` file and can be used with any AI coding agent that supports custom skills/instructions. Tested with:

| Agent | Install Path |
|-------|-------------|
| **Hermes Agent** | `~/.hermes/skills/resume-writing/SKILL.md` |
| **Claude Code** | Project level: add to your `CLAUDE.md` or global CLI config |
| **Cursor** | `~/.cursor/skills/resume-writing/SKILL.md` (or project `.cursor/rules/`) |
| **Windsurf** | `~/.windsurf/skills/resume-writing/SKILL.md` |
| **Codex CLI** | Project level: include in codex instructions |
| **Gemini CLI** | Project level: include in config |
| **GitHub Copilot** | Add to `.github/copilot-instructions.md` |

### Quick Install

**One-line install (auto-detects your agent):**
```bash
curl -s https://raw.githubusercontent.com/victoria-zhu/resume-writing-skill/main/install.sh | bash
```

**Or manual install for your specific agent:**

```bash
# Hermes Agent
git clone https://github.com/victoria-zhu/resume-writing-skill.git
cp -r resume-writing-skill ~/.hermes/skills/resume-writing

# Cursor
mkdir -p ~/.cursor/skills
cp resume-writing-skill/SKILL.md ~/.cursor/skills/resume-writing.md

# Windsurf
mkdir -p ~/.windsurf/skills
cp resume-writing-skill/SKILL.md ~/.windsurf/skills/resume-writing.md

# Claude Code (project level)
cp resume-writing-skill/SKILL.md ./CLAUDE.md  # or append to existing
```

### Usage Examples

**Mode 1: Write from scratch**
```
"帮我写一份简历"
```

The agent will ask 9 structured questions about your role, domain, metrics, achievements, and projects, then output a complete resume in 10–15 minutes.

---

**Mode 2: Optimize an existing resume**
```
"优化我的简历" + paste your current resume text
```

The agent extracts your existing structure, identifies weak verbs and missing metrics, asks targeted follow-ups, then rewrites.

---

**Mode 3: Extract from project documents**
```
"从这些文档提炼简历" + attach project docs, OKRs, or performance reviews
```

The agent scans your documents, extracts key information, fills gaps with targeted questions, then assembles a resume draft.

---

**Mode 4: Tailor with job description matching**
```
"针对这个JD帮我改简历" + paste resume + paste JD
```

The agent analyzes keyword match, identifies gaps, rewrites bullets to embed target keywords, and gives a match score.

---

## 中文

一个面向互联网行业多序列岗位的 AI 简历写作技能，适用于多种 AI 编程助手（Hermes/Cursor/Claude Code/Windsurf/Codex等）。通过结构化对话采访 + 序列类型自动匹配动词池/量化风格，**10-15 分钟**即可从 0 到 1 生成一份可直接投递的专业简历。目前**仅支持中文简历**。

### 支持的 AI Agent

本技能为标准 `SKILL.md` 格式，兼容主流 AI 编程助手：

| Agent | 安装位置 |
|-------|---------|
| **Hermes Agent** | `~/.hermes/skills/resume-writing/SKILL.md` |
| **Claude Code** | 项目级：加到 `CLAUDE.md` 或全局配置 |
| **Cursor** | `~/.cursor/skills/resume-writing.md`（或项目 `.cursor/rules/`） |
| **Windsurf** | `~/.windsurf/skills/resume-writing.md` |
| **Codex CLI** | 项目级：加到 codex instructions |
| **Gemini CLI** | 项目级：加到配置 |
| **GitHub Copilot** | 加到 `.github/copilot-instructions.md` |

### 快速安装

**一键安装（自动检测你的 agent）：**
```bash
curl -s https://raw.githubusercontent.com/victoria-zhu/resume-writing-skill/main/install.sh | bash
```

**或手动安装：**

```bash
# 下载
git clone https://github.com/victoria-zhu/resume-writing-skill.git

# Hermes Agent
cp -r resume-writing-skill ~/.hermes/skills/resume-writing

# Cursor
cp resume-writing-skill/SKILL.md ~/.cursor/skills/resume-writing.md

# Windsurf
cp resume-writing-skill/SKILL.md ~/.windsurf/skills/resume-writing.md

# Claude Code（项目级）
cp resume-writing-skill/SKILL.md ./CLAUDE.md
```

### 使用方式

**模式一：从零开始写**
```
"帮我写一份简历"
```

Agent 会通过 9 个结构化问题逐步了解你的岗位、领域、核心指标、项目经历等信息，10-15 分钟交付一份完整简历。

---

**模式二：优化已有简历**
```
"优化我的简历" + 粘贴现有简历
```

Agent 自动提取你的简历结构，识别弱动词和缺失的量化数据，定向追问后改写优化。

---

**模式三：从项目文档提炼**
```
"从这些文档提炼简历" + 上传项目文档/OKR/述职报告
```

Agent 扫描文档内容提取关键信息，对缺失部分定向追问，组装为简历草稿。

---

**模式四：配合 JD 匹配定向修改**
```
"针对这个JD帮我改简历" + 粘贴简历 + 粘贴 JD
```

Agent 分析简历与 JD 的关键词匹配度，给出匹配评分，改写经历要点嵌入目标关键词。

---

## File Structure

```
resume-writing-skill/
├── SKILL.md                          # Main skill file (works with any agent)
├── install.sh                        # One-line install script
├── references/
│   ├── resume-diagnostic-checklist.md
│   ├── weak-verb-replacement-table.md
│   └── role-verb-and-template-guide.md
└── README.md
```

## License

MIT
