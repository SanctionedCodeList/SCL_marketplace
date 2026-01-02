#!/bin/bash
# Install all SCL marketplace plugins at user level

set -e

echo "Adding SCL marketplace..."
claude plugin marketplace add SanctionedCodeList/SCL_marketplace 2>/dev/null || echo "Marketplace already added"

echo ""
echo "Installing plugins..."

plugins=(
  "law-tools"
  "writing"
  "office-bridge"
  "python-docx-redline"
  "best-practices"
  "dev-browser"
)

for plugin in "${plugins[@]}"; do
  echo "  Installing $plugin..."
  claude plugin install "$plugin@scl-marketplace" --scope user 2>/dev/null || echo "    (already installed or skipped)"
done

echo ""
echo "Done! All SCL plugins installed."
echo "Run '/plugin list' in Claude Code to verify."
