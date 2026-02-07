# PHEELblogging

🌌 Why PHEELblogging?
=====================

Projects are much healthier when there's a single, unambiguous canonical source of truth for all the work we've done. We call this a "P.H.E.E.L." blog, which is to say any work product which might fall into the following categories:

- **Plans**
- **Hypotheses**
- **Explorations**
- **Experiments**
- **Learnings**

Ought to be delivered here.

This record ought to be 1) immutable, 2) chronological, 3) narrative, and 4) comment-able, so we often choose to use blogging software.

See the [original blog post](https://jonathanpberger.wordpress.com/2023/02/01/494/) for the full philosophy, or read `HOW_TO_PHEEL.md` in this repo.


🌌🌌 Who benefits from PHEELblogging?
=====================================

- **Teams** who need a Canonical Source of Truth without drowning in emails and Sharepoint PDFs
- **Developers** working with AI assistants who generate tons of planning documents
- **Future you** returning to the project six months hence, having lost the context you now keep in your head
- **New team members** who need to get up to speed with 1) the current thinking of the team, and 2) how you got there


🌌🌌🌌 What exactly does this do?
=================================

**PHEELblogging is a social convention first, technology second.**

It's a working agreement among your team that Plans, Hypotheses, Explorations, Experiments, and Learnings get written down in a shared place. The technology is just markdown files with some light conventions. You can start PHEELblogging with nothing but a folder and a text editor.

This repo contains:

1. **The Practice** (`HOW_TO_PHEEL.md`) - The PHEELblogging philosophy and conventions

2. **The Tools** (optional) - A Ruby gem providing linting and scaffolding to help teams stay consistent

3. **The Example** - This repo's own `docs/` folder demonstrates the practice


🌌🌌🌌🌌 How do I use it?
=========================

### The Practice (no tools required)

Really, just two things:

- A working agreement among the team
- A bit of old, unsexy technology (a blog! or just markdown files!)

Create a `docs/` folder and start writing. Add Jekyll-friendly frontmatter so you can publish as a blog later if you want:

```yaml
---
layout: post
title: "Your Title"
date: 2026-02-06
category: plans
tags: [plan, exploration]
---
```

That's it. You're PHEELblogging.

### The Tools (optional)

```bash
gem install pheelblogging

pheel init                              # Bootstrap the structure
pheel lint                              # Check for convention violations
pheel new plan "API redesign"           # Create a new plan
```


🌌🌌🌌🌌🌌 Extras
=================

### The Gentle Evolution

PHEELblogging can grow with your needs:

1. **Just folders** - In the beginning, you're emailing each other plans and can never find anything. So you adopt a social convention: everything goes in `docs/` as markdown. No tooling, just discipline.

2. **Add frontmatter** - As the collection grows, you add Jekyll-compatible frontmatter (title, date, tags) so things are discoverable. Still just files.

3. **Stand up a blog** - Eventually you want to actually *read* this stuff chronologically. You point Jekyll at your `docs/` folder and now you have a private blog. The files haven't changed.

4. **Integrate ADRs** - Your team adopts [Architecture Decision Records](https://adr.github.io/). Great! ADRs have their own folder (`docs/adr/`) and conventions. With a few lines of Jekyll config, ADR posts interleave chronologically with your PHEELs.

5. **Multi-repo aggregation** - You have a server repo and a client repo, each with their own docs. You create a meta-repo that pulls from both and publishes one unified blog. Everyone reads the same narrative.

Each step is optional. Start wherever makes sense. The social convention—"PHEELings go in `docs/`"—is the constant.

### PHEELblogging and ADRs

[Architecture Decision Records](https://adr.github.io/) are a well-established practice for capturing architectural decisions. PHEELblogging plays nicely with ADRs:

- ADRs can live in `docs/adr/` with their own numbering convention
- With Jekyll frontmatter, they appear chronologically alongside other PHEELs
- You get the rigor of ADRs plus the narrative flow of a blog

ADRs are optional. You can PHEELblog without them. But if your team already uses ADRs (or wants to), they fit right in.

### Why not just use a wiki?

From the original post:

> Your office isn't Wikipedia. It almost never makes business sense to apply that level of effort to an internal knowledge-store. When wikis are used for intra-team communication, articles often go stale, go unwritten, or go missing. It's difficult to adjudicate conflicts between versions or contradicting information. There's no feedback loop to flush out incorrect or outdated information. We go to a wiki for answers, but we're invariably haunted by doubt: "it says this on the wiki, but is it [still] true?"
>
> But a blog? Each post has a date on it. Is the post recent? It's probably still relevant. Is it real old? Maybe ask around a little and see what the latest thinking is. Easy-peasy.

### Related

- [The original PHEELblog post](https://jonathanpberger.wordpress.com/2023/02/01/494/) - The philosophy behind all this
- [Architecture Decision Records](https://adr.github.io/) - Pairs beautifully with PHEELblogging
- [Conventional Commits](https://www.conventionalcommits.org/) - Similar philosophy for commit messages
- [readme-dot-lint](https://github.com/discoveryworks/readme-dot-lint) - Sibling project for README conventions
