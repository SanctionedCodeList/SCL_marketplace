# GitHub CLI Setup Guide

The GitHub CLI (`gh`) enables Claude Code to interact with GitHub directly — creating issues, submitting feature requests, and managing pull requests.

---

## Installation

### macOS

```bash
brew install gh
```

### Windows

```bash
winget install --id GitHub.cli
```

### Linux (Debian/Ubuntu)

```bash
sudo apt install gh
```

### Other Methods

See the [official installation guide](https://github.com/cli/cli#installation) for additional options.

---

## Authentication

After installation, authenticate with GitHub:

```bash
gh auth login
```

Follow the prompts to:
1. Choose GitHub.com (or GitHub Enterprise)
2. Select HTTPS protocol
3. Authenticate via browser or paste a token

### Verify Authentication

```bash
gh auth status
```

You should see your username and authentication method.

---

## Basic Usage

### Create an Issue

```bash
gh issue create --repo SanctionedCodeList/law_tools --title "Bug: API timeout" --body "Description here"
```

### List Issues

```bash
gh issue list --repo SanctionedCodeList/law_tools
```

### View an Issue

```bash
gh issue view 123 --repo SanctionedCodeList/law_tools
```

### Create a Pull Request

```bash
gh pr create --title "Fix timeout bug" --body "Fixes #123"
```

---

## For Claude Code

When Claude Code encounters issues with SCL plugins, it can use `gh` to:

1. **Report bugs** — Create issues with error details and reproduction steps
2. **Request features** — Submit enhancement requests with use cases
3. **Check existing issues** — Search before creating duplicates

Example (Claude Code might run):

```bash
gh issue create \
  --repo SanctionedCodeList/law_tools \
  --title "Feature: Add WIPO patent search" \
  --body "## Use Case
Need to search international patents via WIPO.

## Proposed Solution
Add a wipo/ module with search and fetch functions.

## Additional Context
Similar to existing EPO OPS integration."
```

---

## Troubleshooting

| Problem | Solution |
|---------|----------|
| "gh: command not found" | Install gh using instructions above |
| "authentication required" | Run `gh auth login` |
| "repository not found" | Check you have access to the SCL organization |
| Rate limiting | Wait and retry; gh handles rate limits automatically |

---

## Resources

- [GitHub CLI Documentation](https://cli.github.com/manual/)
- [GitHub CLI Repository](https://github.com/cli/cli)
- [Authentication Guide](https://cli.github.com/manual/gh_auth_login)
