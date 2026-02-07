---
layout: post
title: 'ADR-000: Dogfood PHEELblogging'
date: '2026-02-06'
category: adrs
tags: [process]
adr_number: 0
status: accepted
---

## Status

Accepted

## Context

This repository teaches PHEELblogging. It should demonstrate the practice it describes.

## Decision

Dogfood PHEELblogging conventions in this repository's own `docs/` folder:

- ADRs live in `docs/adr/` using `NNN-imperative-title.md` naming
- Plans live in `docs/plans/` using `YYYY-MM-DD-title.md` naming
- All entries have Jekyll-compatible frontmatter

The repository is its own example.

## Consequences

### Positive

- We experience the conventions we're teaching
- Users can see real PHEELblog entries, not just descriptions
- Any friction we feel, our users will feel

### Negative

- A repo about PHEELblogging that PHEELblogs about itself is a bit meta

## References

- [HOW_TO_PHEEL.md](../../HOW_TO_PHEEL.md)
- [The original PHEELblog post](https://jonathanpberger.wordpress.com/2023/02/01/494/)
