---
layout: post
title: 'ADR-001: Publish PHEELblogging as Claude Code Plugin'
date: '2026-02-24'
category: adrs
tags: [claude-code, distribution, architecture]
adr_number: 1
status: accepted
---

## Status

Accepted

## Context

The pheelblogging skill needed a distribution mechanism that would:
- Allow users to easily install and use it
- Enable publication to community marketplaces
- Follow established standards in the Claude Code ecosystem
- Be maintainable and versionable

Research into Claude Code's plugin ecosystem revealed two main approaches:
1. Loose skill files in `~/.claude/skills/` (local only)
2. Structured plugins with `.claude-plugin/` directory (publishable)

## Decision

Publish pheelblogging as a proper Claude Code plugin with the following structure:

```
pheelblogging/
├── .claude-plugin/
│   ├── plugin.json                    # Plugin metadata
│   └── skills/
│       └── pheelblogging/
│           └── SKILL.md               # Skill content
├── lib/pheelblogging/                 # Ruby gem code
├── HOW_TO_PHEEL.md                    # Specification
└── README.md                          # Documentation
```

**Plugin metadata** (`.claude-plugin/plugin.json`):
- Name: "pheelblogging"
- Version: Semantic versioning (1.0.0)
- Author: Jonathan Berger
- Homepage: GitHub repository

**Distribution channels**:
- Primary: GitHub repository (https://github.com/discoveryworks/pheelblogging)
- Installation: `/plugin install https://github.com/discoveryworks/pheelblogging.git`
- Future: Submit to superpowers-marketplace (curated by obra)

## Consequences

### Positive

- **Standardized installation**: Users can install via standard plugin mechanism
- **Marketplace submission**: Can be submitted to official or community marketplaces
- **Version control**: Git-based versioning with semantic versions and commit SHAs
- **Discoverability**: Listed in marketplace catalogs when accepted
- **Maintainability**: Clear structure for updates and improvements
- **Dual purpose**: Repository serves both as Ruby gem and Claude plugin
- **Professional distribution**: Follows ecosystem best practices

### Negative

- **Additional complexity**: More structure than a simple skill file
- **Marketplace submission**: Requires approval process (not immediate)
- **Maintenance overhead**: Must maintain plugin.json metadata
- **Learning curve**: Users need to understand plugin installation vs. local skills

### Neutral

- **GitHub dependency**: Requires public GitHub repository (already planned)
- **Cache storage**: Plugins stored in `~/.claude/plugins/cache/` (standard)

## References

- [Exploration: Claude Code Skill Publishing Standards](../pheels/2026-02-24-exploring-claude-code-skill-publishing-standards.md)
- [Superpowers Marketplace](https://github.com/obra/superpowers-marketplace)
- [Claude Plugin Directory Submission](https://clau.de/plugin-directory-submission)
- Plugin examples examined: superpowers, frontend-design, ralph-loop
