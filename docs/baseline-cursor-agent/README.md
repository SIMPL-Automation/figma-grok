# Cursor Agent CLI baseline

## Goal

Capture official-plugin behavior for prompts 1–3 in `docs/PARITY_MATRIX.md`
(whoami, MCP tool list, skill list) using Cursor Agent CLI on this machine.

## Status (2026-09-25)

- Cursor Agent **login OK** (`stevenilsen@live.com`).
- Marketplace plugins are **not** auto-loaded by CLI (symlink on/off did not matter).
- Wiring `https://mcp.figma.com/mcp` into `.cursor/mcp.json` lets CLI *see* the server,
  but **`cursor-agent mcp login figma` / `list-tools` fail with HTTP 403 Forbidden**.
- Live `whoami` therefore still blocked on CLI.
- Best official tool inventory so far: IDE project MCP descriptor cache — **37 tools**
  in `official-ide-tool-inventory-20260925.txt`.
- Skills: inventory from disk package (`skills-figquery/`); CLI session did not expose them.

## Paths

- Repo: `~/code/simpl/github/figma`
- Local symlink (our package): `~/.cursor/plugins/local/figma`
- Official cache: `~/.cursor/plugins/cache/cursor-public/figma/ecefd5b5dfd0ca7a1b8f142e0d59bc7f8a2efde6`

## Next ways to unblock live whoami

1. Authenticate Figma MCP inside **Cursor IDE** on a workspace, then retry CLI if tokens are shared.
2. Run prompts 1–3 in **Cursor IDE Agent** chat (official plugin already installed) and paste results here.
3. Continue parity work from the **37-tool + 14-skill** disk/IDE inventory while Grok Bot gets the package.

## whoami (IDE)

**2026-09-25:** live `whoami` via Cursor IDE Agent succeeded:
- handle: Stephen Nilsen
- email: stephen@simplautomation.com
- plan: SIMPL Automation / Full / pro / admin
- evidence: `run-20260925-whoami-ide.json`

CLI path remains blocked (HTTP 403 on Figma MCP OAuth).

## Live IDE baseline (2026-09-25) — COMPLETE for prompts 1–5

| Prompt | Result |
|--------|--------|
| 1 whoami | pass — Stephen Nilsen / stephen@simplautomation.com |
| 2 MCP tools | pass — **41** tools |
| 3 skills | pass — **16** skills |
| 4 metadata+screenshot | pass on fileKey `z48ILByyUQKu5WYORYVtNx` node `0:1` (screenshot blank) |
| 5 design-context | **pass** — node `5:4` Frame 1; usable code + screenshot |

Evidence: `run-20260925-ide-baseline-full.json`

CLI path remains blocked (Figma MCP OAuth HTTP 403).

Official Cursor IDE baseline: prompts **1–5 complete** (2026-09-25).
