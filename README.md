# SCL Marketplace

**Professional-grade Claude Code plugins for legal, document, and office automation.**

A curated collection of tools that transform Claude Code into a comprehensive legal technology, document automation, and development platform.

---

## 🚀 Installation Guide

### Prerequisites

Before installing, make sure you have:

1. **Claude Code CLI installed**
   ```bash
   # Check if installed
   claude --version

   # If not installed, see: https://docs.anthropic.com/claude-code
   ```

2. **GitHub access** to the [SanctionedCodeList](https://github.com/SanctionedCodeList) organization
   - You need to be a member or have access to private repos
   - Contact your admin if you need access

### Quick Install (All Plugins)

Run this one-liner to install everything:

```bash
curl -fsSL https://raw.githubusercontent.com/SanctionedCodeList/SCL_marketplace/main/install-all.sh | bash
```

Or clone and run locally:

```bash
git clone https://github.com/SanctionedCodeList/SCL_marketplace.git
./SCL_marketplace/install-all.sh
```

### Manual Install

**Step 1: Add the Marketplace**

```
/plugin marketplace add SanctionedCodeList/SCL_marketplace
```

**Step 2: Install Plugins**

```
/plugin install law-tools@scl-marketplace
/plugin install writing@scl-marketplace
/plugin install office-bridge@scl-marketplace
/plugin install python-docx-redline@scl-marketplace
/plugin install best-practices@scl-marketplace
/plugin install dev-browser@scl-marketplace
```

### Step 3: Verify Installation

Check that plugins are active:

```
/plugin list
```

You should see entries for: `law-tools`, `writing`, `office-bridge`, `python-docx-redline`, `best-practices`, `dev-browser`

### Step 4: Try It Out

Start using the plugins:

```
> Search for Tesla battery patents from 2023
```

Claude will automatically use the `law-tools` plugin to search patent databases.

### Troubleshooting

| Problem | Solution |
|---------|----------|
| "Repository not found" | Verify you have access to SanctionedCodeList org |
| Plugin not appearing | Run `/plugin list` to check status |
| "Command not found: claude" | Install Claude Code CLI first |
| Authentication error | Run `gh auth login` to authenticate with GitHub |

### Updating Plugins

To update the marketplace and plugins:

```
/plugin marketplace update scl-marketplace
```

---

## Included Plugins

### [law-tools](https://github.com/SanctionedCodeList/law_tools)

**Legal research and document drafting toolkit**

Access 18+ legal and patent data sources through a unified async API:

| Category | Sources |
|----------|---------|
| **Patents** | Google Patents, USPTO (Applications, Publications, Bulk Data, Petitions), EPO OPS, JPO |
| **Litigation** | Westlaw, Lexis (via dev-browser), CourtListener, USITC, Federal Rules |
| **Regulatory** | Federal Register, SEC EDGAR, MPEP, USC/CFR |
| **Legislative** | LegiScan (50 states + Congress), Texas Legislature |

Plus document drafting capabilities for memos, briefs, reports, and contracts with proper legal structure and citation formats.

---

### [writing](https://github.com/SanctionedCodeList/writing)

**Research-backed writing guidance for professional documents**

Six style guides tailored to specific contexts:

| Style | Use Case |
|-------|----------|
| **Academic** | Law review articles, scholarly publications |
| **Persuasive** | Briefs, motions, advocacy documents |
| **Objective** | Memos, neutral analysis |
| **Client-facing** | Client letters, advice communications |
| **Transactional** | Contracts, deal documents |
| **Executive** | Reports, presentations, business documents |

Techniques grounded in cognitive science research:
- **Processing fluency** — Easy-to-read text is judged more true and credible
- **Oppenheimer effect** — Simple vocabulary signals competence
- **Narrative transportation** — Story-based facts reduce counterarguing

---

### [office-bridge](https://github.com/SanctionedCodeList/office-bridge)

**Live Microsoft Office automation via Office Add-ins**

Real-time bidirectional communication with running Office apps:

| Application | Capabilities |
|-------------|--------------|
| **Word** | Read/edit documents, tracked changes, accessibility tree navigation |
| **Excel** | Read/write cells and ranges, sheet structure |
| **PowerPoint** | Create slides, fill placeholders, capture slide images |
| **Outlook** | Read emails, compose replies |

Unlike offline file manipulation, Office Bridge connects directly to open documents through the Office.js API.

---

### [python-docx-redline](https://github.com/SanctionedCodeList/python-docx-redline)

**High-level Word document editing with tracked changes**

Solves the fundamental problem of programmatic Word editing: text fragmented across XML runs.

```python
# Before: Raw python-docx (often fails, loses formatting)
para.text = para.text.replace("Contract", "Agreement")

# After: python-docx-redline (handles run boundaries, preserves formatting)
doc.replace("Contract", "Agreement", track=True)
```

Features:
- **Smart text search** that handles fragmented runs
- **Tracked changes** with minimal OOXML complexity
- **Batch operations** from YAML/JSON configuration
- **Scoped replacements** limited to specific sections
- **Footnote/endnote support** with full CRUD operations

---

### [best-practices](https://github.com/SanctionedCodeList/claude-code-best-practices)

**Claude Code development best practices, skill creation, and session history**

Two skills for Claude Code power users:

**skill-creator** — Guidance for building effective Claude Code skills:

| Concept | Description |
|---------|-------------|
| **Progressive disclosure** | Three-level loading: metadata → SKILL.md → resources |
| **Skill anatomy** | SKILL.md + scripts/ + references/ + assets/ |
| **Freedom calibration** | Match specificity to task fragility |
| **Structured output** | Schema design for AI-produced JSON |

**sessions** — Search and retrieve past Claude Code conversations:

| Feature | Description |
|---------|-------------|
| **Semantic search** | Find sessions by natural language queries using embeddings |
| **Metadata retrieval** | Get message counts, tools used, and summaries without loading full content |
| **Filtered reading** | Read specific message types (user, assistant, tool_use, etc.) |
| **Project scoping** | List and search sessions for specific projects |

Useful for continuing past work, auditing tool usage, or finding how you solved similar problems before.

---

### [dev-browser](https://github.com/SawyerHood/dev-browser) *(Recommended)*

**Browser automation with persistent page state**

Purpose-built for AI agents testing and verifying web applications:

| Feature | Benefit |
|---------|---------|
| **Persistent pages** | Navigate once, interact across multiple scripts |
| **LLM-optimized snapshots** | Structured DOM inspection designed for AI interpretation |
| **Flexible execution** | Full scripts or step-by-step exploration |
| **Chrome extension** | Control existing browser with logged-in sessions |

Benchmarks show ~2x faster completion and ~40% lower cost compared to alternatives through stateful server architecture.

---

## What You Get

After installation, Claude Code becomes a complete professional platform:

```
┌───────────────────────────────────────────────────────────────────────────┐
│                            Claude Code + SCL                               │
├───────────────────────────────────────────────────────────────────────────┤
│  RESEARCH         │  DRAFTING          │  EDITING          │  TESTING     │
│  ─────────        │  ────────          │  ───────          │  ───────     │
│  • Patent search  │  • Legal memos     │  • Live Office    │  • Browser   │
│  • Court filings  │  • Briefs/motions  │  • Tracked changes│    automation│
│  • SEC documents  │  • Contracts       │  • Batch ops      │  • DOM snaps │
│  • Regulations    │  • Client letters  │  • Format preserve│  • Sessions  │
│  • Legislation    │  • Executive docs  │  • Comments       │  • Scripts   │
├───────────────────────────────────────────────────────────────────────────┤
│  SKILL DEVELOPMENT                                                         │
│  • Create custom skills with proper structure and progressive disclosure   │
│  • Package and distribute skills across teams                              │
└───────────────────────────────────────────────────────────────────────────┘
```

---

## Individual Installation

Install plugins directly from GitHub without using the marketplace:

```
# Legal research and drafting
/plugin install SanctionedCodeList/law_tools

# Writing guidance
/plugin install SanctionedCodeList/writing

# Live Office automation
/plugin install SanctionedCodeList/office-bridge

# Document editing with tracked changes
/plugin install SanctionedCodeList/python-docx-redline

# Skill creation best practices
/plugin install SanctionedCodeList/claude-code-best-practices

# Browser automation (external)
/plugin install SawyerHood/dev-browser
```

---

## Requirements

| Plugin | Requirements |
|--------|--------------|
| law-tools | Python 3.10+, API keys for some data sources |
| writing | None (pure guidance/skills) |
| office-bridge | Node.js 18+, Microsoft Office (Mac/Windows) |
| python-docx-redline | Python 3.10+ |
| best-practices | None (pure guidance/skills) |
| dev-browser | Node.js 18+, Chrome/Chromium |

---

## Links

**SCL Plugins:**
- [SanctionedCodeList Organization](https://github.com/SanctionedCodeList)
- [law-tools](https://github.com/SanctionedCodeList/law_tools) — Legal research and drafting
- [writing](https://github.com/SanctionedCodeList/writing) — Professional writing guidance
- [office-bridge](https://github.com/SanctionedCodeList/office-bridge) — Live Office automation
- [python-docx-redline](https://github.com/SanctionedCodeList/python-docx-redline) — Document editing
- [claude-code-best-practices](https://github.com/SanctionedCodeList/claude-code-best-practices) — Skill development

**Recommended External:**
- [dev-browser](https://github.com/SawyerHood/dev-browser) — Browser automation

**Documentation:**
- [GitHub CLI Setup](docs/gh-cli-setup.md) — Install and configure `gh` for issue reporting
