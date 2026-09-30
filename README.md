# Figma Grok (`figma-grok`)

<p align="center">
  <img src="assets/logo-mark.png" alt="Figma Grok logo" width="96" />
</p>

**This plugin is designed for the Figma Grok bot.** Maintenance and development of the plugin are **fully automated** by that bot.

Marketplace plugin that connects **Grok Bot** to Figma via the hosted Figma MCP server and agent skills (also compatible with Cursor format standards).

## Source & terms

Skills under `skills-figquery/` are sourced from the **official Figma Cursor plugin / mcp-server-guide packaging** for parity with Cursor. Skill content and MCP usage are **subject to Figma's Developer Terms** (see `NOTICE`). This repo's MIT `LICENSE` covers packaging by SIMPL Automation, not a relicense of Figma upstream materials.

## What it includes

- **MCP server:** remote Figma MCP at `https://mcp.figma.com/mcp`
  (bundle header `X-Figma-Plugin-Bundle: figma_prod@2_2_123`)
- **Skills (14)** from official `skills-figquery/`:
  - `figma-use`, `figma-design-to-code`, `figma-code-connect`, `figma-create-new-file`
  - `figma-generate-design`, `figma-generate-diagram`, `figma-generate-library`
  - `figma-generative-plugins`, `figma-implement-motion`, `figma-shaders`
  - `figma-swiftui`, `figma-use-figjam`, `figma-use-motion`, `figma-use-slides`

Deferred (optional later): official `workflow-skills/` — `generate-project-plan`, `video-interaction-mapper`.

## Install

This plugin is designed to work with the **Figma Grok bot** — that's the best experience and easiest path. You can also install the plugin directly if you prefer.

### Primary: Add the Figma Grok bot (recommended)

The **Figma Grok bot** is the fun, friendly way to use this plugin. Just add the bot, and it'll install and connect this plugin for you during onboarding. Same MCP server and skills — the bot is the recommended onboarding wrapper.

### Install the plugin from marketplace

Search for **Figma Grok** (`figma-grok`) in the Cursor/Grok Bot plugin marketplace. Install, then complete Figma OAuth when prompted.

### If marketplace listing isn't available

If you can't find the plugin in marketplace search, you can install it manually:

1. Open https://github.com/SIMPL-Automation/figma-grok
2. Click **Code → Download ZIP** (or use `git clone` if you prefer)
3. Extract the ZIP and copy the entire plugin directory to `~/.cursor/plugins/local/figma-grok`
   - The directory must contain `.cursor-plugin/plugin.json`
   - Use `cp -R` or your file manager to create a **real directory copy**
   - Note: symlinks pointing outside `~/.cursor/plugins/local` are often rejected
4. Reload window / restart agent, then authorize Figma MCP

### Local development (maintainers)

```bash
mkdir -p ~/.cursor/plugins/local
ln -sfn ~/code/simpl/github/figma ~/.cursor/plugins/local/figma-grok
```

Restart the agent / reload window, then authorize Figma MCP.

## Manifest

See `.cursor-plugin/plugin.json` (`name`: `figma-grok`, skills → `./skills-figquery/`, MCP → `./mcp.json`).

## License

MIT for packaging. Upstream Figma skill/MCP materials: see `NOTICE`.
