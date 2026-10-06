# Changelog

## [0.2.11] - 2026-10-06

### Changed
- Updated MCP bundle header from `figma_prod@2_2_126` to `figma_prod@2_2_127` for upstream parity with figma/mcp-server-guide (commit f0493295).
- **figma-generate-design**: Added "Generating placeholder images" section with `generate_image` guidance (reuse images first; with user consent + Figma AI credits note call `generate_image`, `upload_assets`, apply `imageHash`).

## [0.2.10] - 2026-10-02

### Changed
- Updated MCP bundle header from `figma_prod@2_2_124` to `figma_prod@2_2_126` for upstream parity with figma/mcp-server-guide (commit ~be1e8adc, Cursor public figma cache aaa07946).
- Refreshed `skills-figquery/` from upstream Figma Cursor plugin packaging (14 skills):
  - **figma-generate-design**: Added HTML-to-Figma / `html_to_figma` guidance
  - **figma-create-new-file**: Updated required-args guidance
  - **figma-use**: Enhanced plan-node / `$fig` instructions
  - Other skills updated for consistency with upstream `2_2_126`

## [0.2.9] - 2026-10-01

### Changed
- Updated MCP bundle header from `figma_prod@2_2_123` to `figma_prod@2_2_124` for upstream parity with figma/mcp-server-guide (commit ~2c8af036, Skills v2.2.124).
- Skills remain byte-identical; no skill tree changes in this release.

## [0.2.8] - 2026-09-30

### Changed
- Updated MCP bundle header from `figma_prod@2_2_108` to `figma_prod@2_2_123` for upstream parity with figma/mcp-server-guide (commit ~38308b7b).
- Skills remain byte-identical; no skill tree changes in this release.

## [0.2.1] - 2026-09-25

### Changed
- Marketplace / public display name shortened to **Figma Grok** (plugin id remains `figma-grok`).


## 0.2.0 — marketplace rename (2026-09-25)

- Renamed plugin id from `figma` to **`figma-grok`** (`displayName`: Figma Grok) to avoid marketplace name collision with Cursor’s official Figma plugin.
- README rewritten for marketplace + local install.
- Still ships MCP + 14 `skills-figquery` skills; workflow-skills deferred.

## 0.2.0

- Replaced stub `skills/figma-design-context` with full official
  `skills-figquery/` tree (14 skills) from the Figma Cursor plugin cache.
- Pointed `.cursor-plugin/plugin.json` `skills` at `./skills-figquery/`.
- Kept MCP HTTP endpoint `https://mcp.figma.com/mcp` with
  `X-Figma-Plugin-Bundle: figma_prod@2_2_123`.
- Documented Figma Developer Terms in NOTICE + README.
- Deferred `workflow-skills/` (`generate-project-plan`,
  `video-interaction-mapper`) for a later pass.

## 0.1.0

- Initial scaffold: manifest, Figma MCP stub, starter design-context skill.
