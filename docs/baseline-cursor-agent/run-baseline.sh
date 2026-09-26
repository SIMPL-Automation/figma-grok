#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
OUT="$(cd "$(dirname "$0")" && pwd)"
PROMPT='You are helping establish a Figma plugin parity baseline in Cursor.

1) Using the Figma MCP server, call the whoami tool if available. Report the raw identity fields.
2) List EVERY Figma MCP tool name currently available to you (exact tool names).
3) List EVERY Figma-related skill name available in this session.

Do not edit files. Do not call write tools. Keep the answer structured as:
## whoami
## mcp_tools
## skills'

stamp=$(date -u +%Y%m%dT%H%M%SZ)
stdout="$OUT/run-${stamp}-whoami-tools-skills.txt"
stderr="$OUT/run-${stamp}-whoami-tools-skills.stderr"

echo "Writing $stdout"
cursor-agent --print --mode ask --output-format text --approve-mcps --sandbox disabled "$PROMPT" \
  >"$stdout" 2>"$stderr"
echo "exit:$?" | tee -a "$stderr"
wc -l "$stdout" "$stderr"
