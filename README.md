# Figma Grok (`figma-grok`)

![Figma Grok logo](assets/logo.png)

Marketplace plugin that connects **Grok Bot** (and Cursor) to Figma via the hosted Figma MCP server and agent skills.

## Source & terms

Skills under `skills-figquery/` are sourced from the **official Figma Cursor plugin / mcp-server-guide packaging** for parity with Cursor. Skill content and MCP usage are **subject to Figma’s Developer Terms** (see `NOTICE`). This repo’s MIT `LICENSE` covers packaging by Stephen Nilsen, not a relicense of Figma upstream materials.

## What it includes

- **MCP server:** remote Figma MCP at `https://mcp.figma.com/mcp`
  (bundle header `X-Figma-Plugin-Bundle: figma_prod@2_2_108`)
- **Skills (14)** from official `skills-figquery/`:
  - `figma-use`, `figma-design-to-code`, `figma-code-connect`, `figma-create-new-file`
  - `figma-generate-design`, `figma-generate-diagram`, `figma-generate-library`
  - `figma-generative-plugins`, `figma-implement-motion`, `figma-shaders`
  - `figma-swiftui`, `figma-use-figjam`, `figma-use-motion`, `figma-use-slides`

Deferred (optional later): official `workflow-skills/` — `generate-project-plan`, `video-interaction-mapper`.

## Install

### Marketplace (preferred, once listed)

1. In Grok Bot / Cursor, search plugins for **Figma Grok** (`figma-grok`).
2. Install, then complete Figma OAuth when prompted.
3. Smoke test: ask the agent to call `whoami` on the Figma MCP.

### Local (development)

```bash
mkdir -p ~/.cursor/plugins/local
ln -sfn ~/code/simpl/github/figma ~/.cursor/plugins/local/figma-grok
```

Restart the agent / reload window, then authorize Figma MCP.

## Manifest

See `.cursor-plugin/plugin.json` (`name`: `figma-grok`, skills → `./skills-figquery/`, MCP → `./mcp.json`).

## License

MIT for packaging. Upstream Figma skill/MCP materials: see `NOTICE`.
