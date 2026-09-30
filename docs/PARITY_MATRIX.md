# Figma plugin parity matrix

Baseline: official Cursor Figma plugin (`figma/mcp-server-guide`, cache  
`~/.cursor/plugins/cache/cursor-public/figma/ecefd5b5dfd0ca7a1b8f142e0d59bc7f8a2efde6`, version **2.2.111**).

Our package: `~/code/simpl/github/figma` (Grok Bot target).

Statuses: `pass` | `fail` | `blocked` | `n/a` | `todo`

| Area | Official | Our package (now) | Cursor baseline | Grok Bot | Notes |
|------|----------|-------------------|-----------------|----------|-------|
| Manifest `.cursor-plugin/plugin.json` | yes | yes (**0.2.0**, skills→`skills-figquery/`) | todo | todo | |
| MCP HTTP `https://mcp.figma.com/mcp` | yes | yes (+ `X-Figma-Plugin-Bundle`) | blocked (CLI OAuth 403) | todo | Bundle header matched official `figma_prod@2_2_123` |
| Logo / README / LICENSE | yes | yes | n/a | n/a | |
| Local install path | marketplace/cache | `~/.cursor/plugins/local/figma` symlink | todo | todo | |

## MCP tools (live Cursor IDE session, 2026-09-25)

Source: official plugin via IDE Agent. Count: **41**.

| Tool | Official (IDE) | Our package | Cursor baseline | Grok Bot | Notes |
|------|----------------|-------------|-----------------|----------|-------|
| `add_code_connect_map` | yes | via same server | pass (listed) | todo |  |
| `create_generative_plugin` | yes | via same server | pass (listed) | todo |  |
| `create_new_file` | yes | via same server | pass (listed) | todo |  |
| `create_shader` | yes | via same server | pass (listed) | todo |  |
| `download_assets` | yes | via same server | pass (listed) | todo |  |
| `export_video` | yes | via same server | pass (listed) | todo |  |
| `generate_diagram` | yes | via same server | pass (listed) | todo |  |
| `generate_figma_design` | yes | via same server | pass (listed) | todo |  |
| `get_code_connect_map` | yes | via same server | pass (listed) | todo |  |
| `get_code_connect_suggestions` | yes | via same server | pass (listed) | todo |  |
| `get_context_for_code_connect` | yes | via same server | pass (listed) | todo |  |
| `get_design_context` | yes | via same server | **pass** (IDE call + listed) | todo | Frame 1 / 5:4 |  |
| `get_figjam` | yes | via same server | pass (listed) | todo |  |
| `get_generative_plugin` | yes | via same server | pass (listed) | todo |  |
| `get_libraries` | yes | via same server | pass (listed) | todo |  |
| `get_metadata` | yes | via same server | pass (listed) | todo |  |
| `get_motion_context` | yes | via same server | pass (listed) | todo |  |
| `get_screenshot` | yes | via same server | pass (listed) | todo |  |
| `get_shader` | yes | via same server | pass (listed) | todo |  |
| `get_variable_defs` | yes | via same server | pass (listed) | todo |  |
| `list_file_components_for_code_connect` | yes | via same server | pass (listed) | todo |  |
| `list_file_shaders` | yes | via same server | pass (listed) | todo |  |
| `list_generative_plugins` | yes | via same server | pass (listed) | todo |  |
| `list_shaders` | yes | via same server | pass (listed) | todo |  |
| `mcp_auth` | yes | via same server | pass (listed) | todo | Present in live session; may be auth helper |
| `search_design_system` | yes | via same server | pass (listed) | todo |  |
| `send_code_connect_mappings` | yes | via same server | pass (listed) | todo |  |
| `update_generative_plugin` | yes | via same server | pass (listed) | todo |  |
| `update_shader` | yes | via same server | pass (listed) | todo |  |
| `upload_assets` | yes | via same server | pass (listed) | todo |  |
| `use_figma` | yes | via same server | pass (listed) | todo |  |
| `weave_cancel_tool_run` | yes | via same server | pass (listed) | todo | Weave/model tools beyond older title list |
| `weave_find_model` | yes | via same server | pass (listed) | todo | Weave/model tools beyond older title list |
| `weave_get_model_run_output` | yes | via same server | pass (listed) | todo | Weave/model tools beyond older title list |
| `weave_get_tool_inputs` | yes | via same server | pass (listed) | todo | Weave/model tools beyond older title list |
| `weave_get_tool_run_output` | yes | via same server | pass (listed) | todo | Weave/model tools beyond older title list |
| `weave_list_tools` | yes | via same server | pass (listed) | todo | Weave/model tools beyond older title list |
| `weave_run_model` | yes | via same server | pass (listed) | todo | Weave/model tools beyond older title list |
| `weave_run_tool` | yes | via same server | pass (listed) | todo | Weave/model tools beyond older title list |
| `weave_upload_asset` | yes | via same server | pass (listed) | todo | Weave/model tools beyond older title list |
| `whoami` | yes | via same server | pass (listed) | todo | Auth smoke; IDE pass |
## Skills (live Cursor IDE session, 2026-09-25)

Source: IDE Agent skill list. Count: **16** (14 under `skills-figquery/` + 2 workflow).

Our package **0.2.0**: copied all **14** official `skills-figquery/` skills (with `SKILL.md`, references, scripts). Stub `skills/figma-design-context/` removed. **`workflow-skills/` deferred** this pass.

| Skill | Official (IDE) | In our package | Cursor baseline | Grok Bot | Notes |
|-------|----------------|----------------|-----------------|----------|-------|
| `figma-code-connect` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-create-new-file` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-design-to-code` | yes | **yes** | **pass** (IDE loaded for prompt 5) | todo | skills-figquery/; stub retired |
| `figma-generate-design` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-generate-diagram` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-generate-library` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-generative-plugins` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-implement-motion` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-shaders` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-swiftui` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-use` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-use-figjam` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-use-motion` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `figma-use-slides` | yes | **yes** | pass (listed) | todo | skills-figquery/ |
| `generate-project-plan` | yes | **deferred** | pass (listed) | todo | workflow-skills/; skipped this pass |
| `video-interaction-mapper` | yes | **deferred** | pass (listed) | todo | workflow-skills/; skipped this pass |

Tool-count target remains **41** from live IDE inventory (see MCP tools table). Grok Bot prompts **1–5** captured 2026-09-25 evening (`docs/baseline-grok-bot/`); **40** tools / **14** skills-figquery (workflow deferred). Cursor IDE reverify dispatched in parallel.

## Baseline prompt set (same fixture later)

1. **Auth:** “Using Figma MCP, call `whoami`. Report account identity only.”
2. **Tools list:** “List every Figma MCP tool you can see. Names only.”
3. **Skills list:** “List Figma-related skills available in this session.”
4. **Read (needs fixture URL):** “For \<FIGMA_URL\>, get metadata then a screenshot of the selection/node.”
5. **Design→code (needs fixture):** “Get design context for \<FIGMA_URL\> (load required skill first).”

Replace `<FIGMA_URL>` before runs 4–5.

## Run log

| When | Client | Prompt # | Result | Evidence |
|------|--------|----------|--------|----------|
| 2026-09-25 11:50 CT | Cursor Agent CLI | 1–3 | **blocked** — not logged in (`agent login` required) | `docs/baseline-cursor-agent/run-001-whoami-tools-skills.stderr` |
| 2026-09-25 11:54 CT | Cursor Agent CLI (logged in; local symlink removed) | 1–3 | **no Figma surface** — CLI does not auto-load marketplace plugins; session reported 0 MCP tools / 0 skills | `docs/baseline-cursor-agent/run-20260925T165422Z-whoami-tools-skills.txt` |
| 2026-09-25 11:56 CT | Cursor Agent CLI + `.cursor/mcp.json` → `https://mcp.figma.com/mcp` | MCP login / list-tools | **blocked** — Figma MCP OAuth returns HTTP 403 Forbidden | terminal notes; curl probe returns 401 without auth |
| 2026-09-25 11:56 CT | Cursor IDE project cache (official plugin) | tool inventory | **37 tools** listed (includes weave/shader/motion beyond `_meta.ideToolTitles`) | `docs/baseline-cursor-agent/official-ide-tool-inventory-20260925.txt` |
| 2026-09-25 12:04 CT | Cursor IDE Agent (official Figma plugin) | 1 (whoami) | **pass** — Stephen Nilsen / stephen@simplautomation.com / SIMPL Automation Full pro admin | `docs/baseline-cursor-agent/run-20260925-whoami-ide.json` |
| 2026-09-25 12:15 CT | Cursor IDE Agent (official Figma plugin) | 2 (tools) | **pass** — 41 tools | `docs/baseline-cursor-agent/run-20260925-ide-mcp-tools.txt` |
| 2026-09-25 12:15 CT | Cursor IDE Agent (official Figma plugin) | 3 (skills) | **pass** — 16 skills (14 figma-* + 2 workflow) | `docs/baseline-cursor-agent/run-20260925-ide-skills.txt` |
| 2026-09-25 12:15 CT | Cursor IDE Agent (official Figma plugin) | 4 (metadata+screenshot) | **pass** — fileKey `z48ILByyUQKu5WYORYVtNx` node `0:1` (screenshot blank) | `docs/baseline-cursor-agent/run-20260925-ide-fixture-smoke.json` |
| 2026-09-25 12:15 CT | Cursor IDE Agent (official Figma plugin) | 5 (design-context) | **fail** — nothing selected; need a layer node, not page `0:1` | `docs/baseline-cursor-agent/run-20260925-ide-fixture-smoke.json` |
| 2026-09-25 12:22 CT | Cursor IDE Agent (official Figma plugin) | 5 (design-context) | **pass** — node `5:4` Frame 1; usable reference code + screenshot | `docs/baseline-cursor-agent/run-20260925-ide-prompt5-design-context.json` |


| 2026-09-25 evening CT | Grok Bot (hosted MCP user-figma) | 1–5 | **pass** — whoami Stephen Nilsen; **40** tools (no mcp_auth); **14** package skills (workflow deferred); metadata+screenshot 0:1; design_context 5:4 Frame 1 usable | `docs/baseline-grok-bot/run-20260925-parity-prompts-1-5.json` |

| 2026-09-25 evening CT | Grok Bot executor (misfiled under baseline-cursor-agent) | 1–5 | **not a Cursor client** — used live user-figma MCP; see NOTE-20260925-parity-reverify.md | `docs/baseline-cursor-agent/run-20260925-parity-reverify-*` |
| 2026-09-25 12:23 CT | Package port (local) | skills-figquery copy | **done** — 14/14 skills copied; stub removed; v0.2.0; workflow-skills deferred | this edit |


## Grok Bot live baseline (2026-09-25 evening)

| Prompt | Result |
|--------|--------|
| 1 whoami | pass — Stephen Nilsen / stephen@simplautomation.com / SIMPL Automation Full pro admin |
| 2 MCP tools | pass — **40** (authorized session; no `mcp_auth`) |
| 3 skills | pass package — **14** `skills-figquery/`; workflow skills deferred (Cursor IDE had 16) |
| 4 metadata+screenshot | pass — fileKey `z48ILByyUQKu5WYORYVtNx` node `0:1` |
| 5 design-context | pass — node `5:4` Frame 1; usable code + screenshot |

Evidence: `docs/baseline-grok-bot/run-20260925-parity-prompts-1-5.json`

Note: live tool **names** on hosted MCP have drifted vs the Sep-25 Cursor IDE inventory strings; compare by capability, not exact snake_case. Evening “Cursor reverify” executor used Grok’s `user-figma` MCP (not IDE); see `NOTE-20260925-parity-reverify.md`. Compare Grok evening run to morning Cursor IDE baseline instead.
