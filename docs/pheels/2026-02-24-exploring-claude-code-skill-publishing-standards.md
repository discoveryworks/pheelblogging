---
layout: post
title: "Exploring Claude Code Skill Publishing Standards"
date: 2026-02-24
category: exploration
tags: ["claude-code", "skills", "publishing", "marketplace", "plugins"]
---

# Exploring Claude Code Skill Publishing Standards

## Context

To make the pheelblogging skill publishable and installable for other users, we needed to understand the current standards and ecosystem for Claude Code skill distribution.

## Research Approach

We investigated the local Claude plugin installation at `~/.claude/plugins/` to understand:
- Standard skill structure and organization
- How skills are packaged and distributed
- Available marketplaces and submission processes
- Installation mechanisms

## Key Findings

### Plugin vs. Skill Architecture

**Plugins** are containers that can include multiple components:
- **Skills** - Reusable techniques/workflows (SKILL.md files)
- **Commands** - Slash commands (command-name.md)
- **Agents** - Named AI personas (agent-name.md)
- **MCP Servers** - External tool integrations

Skills are just one type of content that lives inside a plugin.

### Two Main Marketplaces

1. **Anthropic Official** (`claude-plugins-official`)
   - 45+ published plugins
   - Mix of internal (Anthropic) and external (partners/community)
   - Official submission via https://clau.de/plugin-directory-submission

2. **Community** (`superpowers-marketplace`)
   - Curated by Jesse Vincent (obra)
   - High-quality, focused collection
   - More selective/curated approach

### Standard Plugin Structure

```
plugin-name/
├── .claude-plugin/
│   ├── plugin.json           # Plugin metadata
│   └── skills/               # Skills live here
│       └── skill-name/
│           └── SKILL.md      # Skill with YAML frontmatter
├── .mcp.json                 # (optional, for MCP integrations)
├── README.md
└── LICENSE
```

### Distribution Model

All plugins are distributed via **GitHub repositories**:
- Users install via `/plugin install <github-url>`
- Or via marketplace reference: `/plugin install name@marketplace`
- Versioning uses semantic versioning + git commit SHAs
- Cache stored in `~/.claude/plugins/cache/`

### Skill Metadata Requirements

Every SKILL.md needs YAML frontmatter:
```yaml
---
name: skill-name-kebab-case
description: Use when [specific triggering conditions]
---
```

The description is critical for discovery - it should:
- Start with "Use when..."
- Include specific symptoms/triggers
- Focus on WHEN to use, not WHAT it does
- Be written in third person

## Implications for PHEELblogging

This research informed our decision (see ADR-001) to structure pheelblogging as a proper plugin rather than a loose skill file, making it:
- Installable via standard plugin mechanisms
- Publishable to community marketplaces
- Properly versioned and maintainable
- Discoverable through marketplace catalogs

## Resources Examined

- `~/.claude/plugins/installed_plugins.json` - Installation metadata
- `~/.claude/plugins/marketplaces/` - Marketplace catalogs
- `~/.claude/plugins/cache/superpowers-marketplace/` - Example plugin structures
- Superpowers and frontend-design plugins - Reference implementations
