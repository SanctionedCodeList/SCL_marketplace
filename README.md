# SCL Marketplace

A Claude Code plugin marketplace aggregating SanctionedCodeList tools and skills.

## Installation

```bash
claude plugins add SanctionedCodeList/SCL_marketplace
```

> **Note:** Requires access to the SanctionedCodeList GitHub organization.

## Included Plugins

| Plugin | Description |
|--------|-------------|
| **law-tools** | Legal research toolkit with USPTO, court, SEC, and regulatory data connectors. Document drafting for memos, briefs, reports, and contracts. |
| **writing** | Writing guidance for professional documents. Style guides, cognitive fluency techniques, structure frameworks, and revision checklists. |
| **office-bridge** | Microsoft Office automation via Office.js add-ins. Create and manipulate Word, Excel, and PowerPoint documents. |
| **python-docx-redline** | Document editing with tracked changes. Redlining, comments, and CriticMarkup workflows for .docx files. |

## What You Get

After installation, Claude Code gains:

- **Legal research** — Search USPTO patents, court filings, SEC documents, regulations
- **Document drafting** — Generate memos, briefs, contracts with proper structure
- **Writing guidance** — Style-appropriate prose for legal, academic, executive contexts
- **Office automation** — Create and edit Word/Excel/PowerPoint via add-ins
- **Tracked changes** — Edit documents with redlining and comment support

## Individual Installation

Install plugins separately if you don't need everything:

```bash
claude plugins add SanctionedCodeList/law_tools
claude plugins add SanctionedCodeList/writing
claude plugins add SanctionedCodeList/office-bridge
claude plugins add SanctionedCodeList/python-docx-redline
```

## License

MIT
