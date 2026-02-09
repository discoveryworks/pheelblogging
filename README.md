# PHEELblogging

🪞 Why PHEELblogging?
=====================

It's **hard** to stay on top of all the communication artifacts a team throws off (much less be able to find things when you need them)!

Projects are much healthier when there's a single, unambiguous canonical source of truth for all the work we've done, and we've got a way to do it cheaply and easily. We call this a "P.H.E.E.L." blog, and it's simple: all the work product which might fall into the following categories:

- Plans
- Hypotheses
- Explorations
- Experiments
- Learnings

ought to be delivered **here**.

This record ought to be 1) immutable, 2) chronological, 3) narrative, and 4) comment-able, so we often choose to use blogging software.

See the [original blog post](https://jonathanpberger.wordpress.com/2023/02/01/494/) for the full philosophy, or read `HOW_TO_PHEEL.md` in this repo.


🪞🪞 Who benefits from PHEELblogging?
=====================================

- **Teams** who need a Canonical Source of Truth without drowning in emails and Sharepoint PDFs
- **Developers** working with AI assistants who generate tons of planning documents
- **Future you** returning to the project six months hence, having lost the context you now keep in your head
- **New team members** who need to get up to speed with 1) the current thinking of the team, and 2) how you got there


🪞🪞🪞 What exactly does this do?
=================================

**PHEELblogging is a social convention first, technology second.**

It's a working agreement among your team that Plans, Hypotheses, Explorations, Experiments, and Learnings get written down in a shared place. The technology is just markdown files with some light conventions. You can start PHEELblogging with nothing but a folder and a text editor.

This repo contains:

1. **The Practice** (`HOW_TO_PHEEL.md`) - The PHEELblogging philosophy and conventions
2. **The Tools** (optional) - A Ruby gem providing linting and scaffolding to help teams stay consistent
3. **The Example** - This repo's own `docs/` folder recursivelydemonstrates the practice—dogfooding ftw!


🪞🪞🪞🪞 How do I use it?
=========================

### The Practice (no tools required)

Really, just two things:

- A working agreement among the team: anything that can reasonably be described as a Plan, Hypothesis, Exploration, Experiment, or Learning MUST be delivered to the blog. This only works if it's socially enforced among team members. "Those UX test results you emailed me? I posted them in the PHEELblog, but please put them there next time."
- A bit of old, unsexy technology (a blog! or even just markdown files!)



Create a `docs/` folder and start writing. Add Jekyll-friendly frontmatter so you can publish as a blog later if you want:

```yaml
---
layout: post
title: "User research trial data for v1.3 release"
date: 2026-02-06
category: experiment
tags: [ux-research, project-x]
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


🪞🪞🪞🪞🪞 Extras
=================

### The Gentle Evolution

PHEELblogging can grow with your needs:

1. Just folders and markdown: In the beginning, you're emailing each other plans and can never find anything. So you adopt a social convention: everything goes in `docs/pheels` as markdown. Really, you should include (minimal)Jekyll-friendly frontmatter and filing-naming conventions. (They're human readable and you need to write this stuff down somewhere anyway.) Cost: SUPER-low. (Net-positive?) You're already doing this, we're just adopting a convention to suppress accidental organizational noise.
2. Are you using other markdown- or plain-text based planning? ADRs or LLM-created `ALL-CAPS-PLAN-TITLE.md`? Leave them in their familiar, canonical folders. But maybe put the Jekyll frontmatter in there.
3. Is that pile of markdown getting unweildy? Stand up a blog! There're plenty of static site generators that'll do the trick. We can point them at `pheels` (and `adr` or `plans` or whatever else) and if the frontmatter is clean, they'll interleave nicely. We've found it helpful to assign each of those a category and use tags to organize the PHEEL Plans / Hypotheses...etc. Other useful tags might be topic-specific ("project-x") or modal ("UX research" or "financial projections") or helpful guidance ("onboarding" or "CEO-should-read-this").
4. For big projects, you may discover a need for multi-repo aggregation: You have a server repo and a client repo, each with their own docs. Create a meta-repo that pulls from both and publishes one unified blog. Everyone reads the same narrative.

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
