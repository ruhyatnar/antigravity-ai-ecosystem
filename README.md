# Antigravity AI Ecosystem Configuration

Koleksi konfigurasi lengkap, terstandarisasi, dan teruji untuk **Google Antigravity**, **Agent Skills**, serta **Model Context Protocol (MCP)** yang dioptimasi untuk Software Engineering.

## 📦 Komponen yang Disertakan

### 1. Agent Skills (48 Skills)
* **Superpowers Suite**: Test-Driven Development (TDD), Systematic Debugging, Brainstorming, Code Review (Request & Receive), Subagent-driven development, Git Worktrees, dan Writing Plans.
* **Anthropic Official Skills**:
  * `frontend-design`: Desain UI modern, humanis, dan bebas template generik.
  * `webapp-testing`: Automasi pengujian web end-to-end via Playwright.
  * `mcp-builder` & `skill-creator`: Toolkit pembuat dan benchmarking skill/MCP server.
* **Code Intelligence**:
  * `graphify`: Knowledge graph codebase lokal via deterministik AST (caller, callees, dependensi, dan dampak perubahan).
* **Token Optimization & Lean Engineering**:
  * `caveman` suite: Optimalisasi token dan respon presisi ringkas.
  * `ponytail` suite: Prinsip minimalisme kode, pemanfaatan kode eksisting, dan anti over-engineering.

### 2. MCP Servers (`mcp_config.json`)
* **Context7** (`@upstash/context7-mcp`): Referensi dokumentasi library & API signatures real-time.
* **Playwright** (`@playwright/mcp`): Automasi browser interaktif dan debugging web UI.
* **Graphify** (`graphify-mcp`): AST Codebase Knowledge Graph MCP daemon.
* **GitHub** (`@modelcontextprotocol/server-github`): Integrasi pull request, issue tracking, dan branch search.

### 3. Agent Swarm
* Integrasi native swarm bawaan Antigravity melalui `/swarm`.

## 🚀 Cara Instalasi di Mesin Baru

```bash
git clone https://github.com/ruhyatnar/antigravity-ai-ecosystem.git
cd antigravity-ai-ecosystem
chmod +x install.sh
./install.sh
```

## 🔑 Pengaturan Token GitHub MCP
Jika ingin mengaktifkan fungsionalitas GitHub MCP, buka file `~/.gemini/config/mcp_config.json` dan isi `GITHUB_PERSONAL_ACCESS_TOKEN` Anda dengan Personal Access Token (PAT) GitHub.
