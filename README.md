# SCL Marketplace

**Professional-grade Claude Code plugins for legal, document, and office automation.**

A curated collection of tools that transform Claude Code into a comprehensive legal technology, document automation, and development platform.

---

## Quick Start

```bash
claude plugins add SanctionedCodeList/SCL_marketplace
```

> Requires access to the [SanctionedCodeList](https://github.com/SanctionedCodeList) GitHub organization.

---

## Included Plugins

### [law-tools](https://github.com/SanctionedCodeList/law_tools)

**Legal research and document drafting toolkit**

Access 18+ legal and patent data sources through a unified async API:

| Category | Sources |
|----------|---------|
| **Patents** | Google Patents, USPTO (Applications, Publications, Bulk Data, Petitions), EPO OPS, JPO |
| **Litigation** | CourtListener (federal courts), USITC, Federal Rules |
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

**Claude Code development best practices and skill creation**

The **skill-creator** skill provides guidance for building effective Claude Code skills:

| Concept | Description |
|---------|-------------|
| **Progressive disclosure** | Three-level loading: metadata → SKILL.md → resources |
| **Skill anatomy** | SKILL.md + scripts/ + references/ + assets/ |
| **Freedom calibration** | Match specificity to task fragility |
| **Structured output** | Schema design for AI-produced JSON |

Includes templates, validation scripts, and packaging tools for distributing skills.

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

Install plugins separately if you don't need the full suite:

```bash
# Legal research and drafting
claude plugins add SanctionedCodeList/law_tools

# Writing guidance
claude plugins add SanctionedCodeList/writing

# Live Office automation
claude plugins add SanctionedCodeList/office-bridge

# Document editing with tracked changes
claude plugins add SanctionedCodeList/python-docx-redline

# Skill creation best practices
claude plugins add SanctionedCodeList/claude-code-best-practices

# Browser automation (external)
claude plugins add SawyerHood/dev-browser
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

