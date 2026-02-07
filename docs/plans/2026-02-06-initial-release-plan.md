---
layout: post
title: "PHEELblogging Gem - Initial Release Plan"
date: 2026-02-06
category: plans
tags: [plan]
---

## Overview

Build a Ruby gem that helps teams adopt and maintain PHEELblogging conventions. The gem provides a CLI (`pheel`) with commands for initialization, linting, and scaffolding new entries.

## Philosophy

PHEELblogging is a social convention first, technology second. The gem exists to reduce friction, not to enforce. Teams should be able to PHEELblog perfectly well without any tooling.

## Commands

### `pheel init`

Bootstrap a project for PHEELblogging:
- Create `docs/` folder structure
- Optionally create `docs/adr/` for ADRs
- Drop a README explaining conventions
- Optionally create ADR-000 ("Why we use ADRs/PHEELblogging")

### `pheel lint`

Check PHEELblog entries for convention violations:

| Check | Detects | Auto-fixable? |
|-------|---------|---------------|
| frontmatter | Missing/malformed frontmatter | Partially |
| dates | Missing date in filename or frontmatter | Yes (from git) |
| taxonomy | Inconsistent tags/categories | Suggest only |
| naming | Wrong folder, bad filename pattern | Suggest only |
| markdown | Bold-as-headers, semantic issues | Yes |

### `pheel new <type> "Title"`

Generate new entries with proper conventions:
- `pheel new plan "Title"` → `docs/plans/YYYY-MM-DD-title.md`
- `pheel new adr "Title"` → `docs/adr/NNN-title.md` (auto-numbers)
- `pheel new post "Title"` → `docs/pheels/_pheels/YYYY-MM-DD-title.md`

## Implementation Phases

### Phase 1: Core CLI

- [ ] Set up gem structure (Thor CLI)
- [ ] Implement `pheel init`
- [ ] Implement `pheel new`
- [ ] Basic tests

### Phase 2: Linting

- [ ] Implement frontmatter check
- [ ] Implement date check
- [ ] Implement naming check
- [ ] Implement markdown check
- [ ] `pheel lint` aggregates all checks

### Phase 3: Polish

- [ ] `--fix` flag for auto-fixable issues
- [ ] Colorized output
- [ ] Rails generator integration
- [ ] Documentation

## Non-Goals (for now)

- Jekyll server/preview (just use Jekyll directly)
- Multi-repo aggregation tooling
- Web UI

## Related

- [HOW_TO_PHEEL.md](../../HOW_TO_PHEEL.md) - The conventions we're enforcing
