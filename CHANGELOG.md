# Changelog

## 0.2.0 — marketplace rename (2026-09-25)

- Renamed plugin id from `figma` to **`figma-grok`** (`displayName`: Figma for Grok Bot) to avoid marketplace name collision with Cursor’s official Figma plugin.
- README rewritten for marketplace + local install.
- Still ships MCP + 14 `skills-figquery` skills; workflow-skills deferred.

## 0.2.0

- Replaced stub `skills/figma-design-context` with full official
  `skills-figquery/` tree (14 skills) from the Figma Cursor plugin cache.
- Pointed `.cursor-plugin/plugin.json` `skills` at `./skills-figquery/`.
- Kept MCP HTTP endpoint `https://mcp.figma.com/mcp` with
  `X-Figma-Plugin-Bundle: figma_prod@2_2_108`.
- Documented Figma Developer Terms in NOTICE + README.
- Deferred `workflow-skills/` (`generate-project-plan`,
  `video-interaction-mapper`) for a later pass.

## 0.1.0

- Initial scaffold: manifest, Figma MCP stub, starter design-context skill.
