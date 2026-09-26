# Figma plugin visual capability fill (parity canvas)

Target Design file (edit this file only — do **not** create a new file, FigJam, or Slides file):

https://www.figma.com/design/z48ILByyUQKu5WYORYVtNx

Use the Figma MCP / Figma plugin available in this session. Load required skills before tool calls (`figma-use` before every `use_figma`; also `figma-generate-library` for tokens/components; `figma-design-to-code` before `get_design_context`). Prefer `$fig` for all node creation (never `figma.create*`). Keep the layout deterministic so another agent can rebuild the same canvas for visual comparison.

## Prep
1. Call `whoami` once (identity check only).
2. Clear **Page 1** of every top-level child so the page is empty.
3. Stay on Page 1 for everything below.

## A. Tokens — variable collection `Parity Tokens`
Modes: one mode named `Value` (or the tool default single mode).

Color variables:
- `Brand/Blue` = `#2563EB`
- `Brand/Ink` = `#0F172A`
- `Brand/Surface` = `#F8FAFC`
- `Brand/Danger` = `#DC2626`
- `Brand/Success` = `#16A34A`
- `Brand/White` = `#FFFFFF`

Float variables:
- `Space/Sm` = `8`
- `Space/Md` = `16`
- `Space/Lg` = `24`
- `Radius/Md` = `12`

Bind these into fills / padding / cornerRadius where the API allows (including Secondary button stroke → Brand/Ink).

## B. Text styles
Create local text styles (Inter only):
- `Parity/Display` — Inter Bold, size 32, line height ~40
- `Parity/Body` — Inter Regular, size 14, line height ~20
- `Parity/Caption` — Inter Medium, size 12, line height ~16

## C. Section `01 Tokens & Components` (x=0, y=0)
Outer frame: name exactly `01 Tokens & Components`, VERTICAL auto-layout, itemSpacing 24, padding 24, fill Brand/Surface (or `#F8FAFC`), width ~480.

### C1. `Token Swatches`
Horizontal auto-layout, itemSpacing 12. For each of Blue, Ink, Surface, Danger, Success: a vertical stack named `Brand/<Name>` with a 48×48 rounded rect (cornerRadius 8) filled with that Brand color, plus Caption text under it whose characters are exactly `Brand/Blue`, `Brand/Ink`, `Brand/Surface`, `Brand/Danger`, `Brand/Success`.

### C2. Component set `Parity/Button`
COMPONENT_SET named `Parity/Button` with axes:
- `Variant` = Primary | Secondary | Danger
- `Size` = Sm | Md

Six variants. Each variant: HORIZONTAL auto-layout, padding vertical 8 / horizontal 16, itemSpacing 8, cornerRadius 12, height HUG (not fixed 100).
- Primary: fill Brand/Blue, label fill Brand/White
- Secondary: fill Brand/Surface, 1px stroke Brand/Ink, label fill Brand/Ink
- Danger: fill Brand/Danger, label fill Brand/White
- Label TEXT characters exactly `Button`; Sm fontSize 12, Md fontSize 14; Inter Medium

After creating the set, **grid variants 2 columns × 3 rows** (Primary Sm|Md, Secondary Sm|Md, Danger Sm|Md) so they do not stack at (0,0); resize the set to fit. Place it under the swatches inside `01 Tokens & Components`.

## D. Section `02 Demo Screen` (x=560, y=0)
Frame name exactly `02 Demo Screen`, width 390, height 640 (or hug ≥640), VERTICAL auto-layout, padding 24, itemSpacing 16, fill Brand/Surface.

Children top → bottom:
1. TEXT characters `Parity Demo` — style Parity/Display, fill Brand/Ink
2. TEXT characters `Plugin capability canvas` — style Parity/Body, fill Brand/Ink
3. Horizontal frame `Button Row`, itemSpacing 12, with **instances**:
   - Variant=Primary, Size=Md
   - Variant=Secondary, Size=Md
   - Variant=Danger, Size=Md
4. Frame `Status Card`: VERTICAL, padding 16, itemSpacing 8, fill `#FFFFFF`, cornerRadius 12, stroke 1px `#E2E8F0`
   - top: 4px-tall full-width rect fill Brand/Success
   - TEXT `Status card` (Parity/Body)
   - TEXT `All systems go` (Parity/Caption)
5. Horizontal frame `Inline swatches`: five 32×32 rects for Brand Blue/Ink/Surface/Danger/Success

## E. Section `03 Capability Legend` (x=0, y=980)
Frame name exactly `03 Capability Legend`, width 960, VERTICAL, padding 16, itemSpacing 8, fill `#FFFFFF`, stroke `#E2E8F0`.
Title TEXT `Capability legend`.
Then these Caption lines exactly (one text node each):
- `variables — color + float (Parity Tokens)`
- `text styles — Parity/Display, Body, Caption`
- `component set + variants — Parity/Button`
- `instances — Primary/Secondary/Danger Md`
- `auto-layout — section frames, rows, card`
- `fills / strokes / corner radius`
- `nested frames + swatches`
- `reads — get_metadata, get_variable_defs, get_screenshot, get_design_context`

## F. Verify (read-only; do not mutate further)
1. `get_metadata` for Page 1.
2. `get_variable_defs` for this file (or the demo frame).
3. `get_screenshot` of `02 Demo Screen`.
4. `get_design_context` for `02 Demo Screen` (load `figma-design-to-code` first).

Return a short summary: section node ids, variable collection name, component set id, and whether each verify call succeeded.

## Hard constraints
- Edit **only** the target Design file URL above.
- Do **not** call `create_new_file`, `generate_diagram`, `generate_figma_design`, weave_*, or shader create/update.
- Do **not** import random team-library components; build local tokens/components only.
- Fonts: Inter only. Exact frame names and text strings above.
- If a substep fails, add red (`#DC2626`) Caption text starting with `FAIL:` naming the step, then continue.
