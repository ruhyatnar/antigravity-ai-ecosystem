#!/usr/bin/env bash
set -e

echo "=== Installing Antigravity AI Ecosystem ==="

TARGET_DIR="$HOME/.gemini/config"
mkdir -p "$TARGET_DIR/skills"
mkdir -p "$HOME/.local/bin"

# 1. Copy config and skills
if [ ! -f "$TARGET_DIR/config.json" ]; then
    cp config.json "$TARGET_DIR/config.json"
else
    echo "Preserving existing $TARGET_DIR/config.json"
fi
cp mcp_config.json "$TARGET_DIR/mcp_config.json"
cp -r skills/* "$TARGET_DIR/skills/"

# 2. Setup uv and graphify if not present
if ! command -v uv &> /dev/null; then
    echo "Installing uv..."
    curl -fsSL https://astral.sh/uv/install.sh | bash
    export PATH="$HOME/.local/bin:$PATH"
fi

if ! command -v graphify &> /dev/null; then
    echo "Installing graphify with MCP support..."
    uv tool install "graphifyy[mcp]"
fi

# 3. Setup codegraph if not present and register globally for Antigravity
if ! command -v codegraph &> /dev/null; then
    echo "Installing codegraph..."
    curl -fsSL https://raw.githubusercontent.com/colbymchenry/codegraph/main/install.sh | sh
    export PATH="$HOME/.local/bin:$PATH"
fi

codegraph install --target antigravity --location global --yes

# Ensure npm global dir exists for npx
mkdir -p "$HOME/.npm-global/lib" "$HOME/.npm-global/bin"

echo "=== Installation Finished Successfully ==="
echo "Restart your Antigravity IDE / CLI to load new skills & MCP servers."
