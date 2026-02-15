# Internals

### Dockerfile.sandbox
The "Golden Image" base:
- **Runtime:** Node 24 (Bookworm).
- **Tools:** Git, Python 3, Tmux, Curl.
- **Agents:** Gemini CLI, Claude Code, Pi Agent.
- **Config:** Pre-configured `models.json` for Pi (Moonshot/Kimi).

### init_identity.sh
Runs on first boot:
- **Git Identity:** Transforms ID (e.g., `eagle-alpha`) into a Git persona (e.g., `🦅 A`).
- **SSH:** Generates `id_ed25519`.
- **API Keys:** Hydrates tool configs from environment variables (`MOONSHOT_API_KEY`, `ANTHROPIC_API_KEY`).
- **Permissions:** Sets up `safe.directory` for the mounted workspace.
