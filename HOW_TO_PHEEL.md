# HOW_TO_PHEEL

> This document adapts the [original PHEELblog post](https://jonathanpberger.wordpress.com/2023/02/01/494/) for modern development practices, particularly teams working with LLMs.

## TLDR

Projects are much healthier when there's a single, unambiguous canonical source of truth for all the work we've done. We call this a "P.H.E.E.L." blog, which is to say any work product which might fall into the following categories:

- **Plans** - Decisions about what to do next
- **Hypotheses** - Assumptions we're testing
- **Explorations** - Research and investigations
- **Experiments** - Prototypes and tests
- **Learnings** - Insights and retrospectives

Ought to be delivered here.

Depending on the team, you may elect to add "Decisions" to the list, or manage them in an [ADR](https://adr.github.io/).

This record ought to be 1) immutable, 2) chronological, 3) narrative, and 4) comment-able, so we often choose to use blogging software.

## The Working Agreement

It's critical that the team trusts the blog. It needs to be the Canonical Source of Truth for *all* of the PHEELs. That means each team member needs to be a bit of a prima donna: if anyone ever tries to share a PHEELing in any way other than the blog, they need to be told, kindly, "no".

Did someone email you the plan for this quarter's roadmap? A new feature idea? The results of a user testing session? Insights gleaned from the latest competitive research? Push back. "Sorry", you say. "I can't wait to read it, but this is too important to get silo'd away in an email chain. Can you post that to the blog and email me the link?"

Any time you're writing something down that you intend to share with someone else (and "someone else" could be Future You, a few months down the line), ask yourself:

- Is this a Plan?
- Is this a Hypothesis?
- Is this an Exploration or Experiment?
- Is this a Learning?

If the answer is "yes" to any of the above, stop what you're doing. Do not send an email. Do not share a deck. For the love of all that's holy, do *NOT* put a PDF on Sharepoint.

*DO* write it up. Use the right tool for the job. And then post it to the blog with a bit of context.

## Get in touch with your PHEELings

It's not hard, but most people need a bit of practice to get into the habit of recognizing P.H.E.E.L.ings.

### Plans

This is any decision you've made about what to do next. It probably needs a finishing condition ("we'll know we're done when…") and some sort of time-box. It could be as loose as "we're planning to interview users until Charlie feels like we're on the right track" or as formal as a 112-page Go-To-Market plan the team's spent the last four weeks building.

### Hypotheses

"What's the least amount of work we can do to learn or get something?"

Not just product-market hypotheses; also problem-solution hypotheses. Lean Hypotheses are a useful framing device:

> "We believe [TYPE OF USER] has a problem [DOING THING]. We can help them with [OUR SOLUTION]. We'll know we're right if [CHANGE IN METRIC]."

### Explorations & Experiments

"Exploration" well-describes less-formal explorations (conversations, musings, comparative research), while "experiments" connotes a bit more rigor (user tests, prototypes, interventions).

### Learnings

First there's information, then there's data, then there're insights. "Learnings" is a synthetic category: anything valuable (failures and "I'll never do that again!" count!) and worth sharing with the team and future-you.

## Why a blog?

### Canonical Source of Truth

Brook's law teaches us that as team size increases linearly, the amount of communication increases exponentially. Translation: OMG your inbox is overflowing.

Defaulting to a communal shared space solves this whole class of problem. There's only one place to look for things, and everyone knows where it is. Bonus: when new members join the team, it's *real* easy to help them get up to speed.

### Defaulting to Narrative

When we write for a blog, there's always the implicit specter of a new reader, someone who needs to be oriented. No matter how unconsciously, we put together a story. We lend it structure to make it understandable, because that's how humans make sense of the world.

### The Ravages of Time

"Sure", you say. "This all sounds great. Would you like to see our wiki?"

No. A wiki is great when you've got massive effort, redundantly and consistently applied. Your office isn't Wikipedia. When wikis are used for intra-team communication, articles often go stale, go unwritten, or go missing. We go to a wiki for answers, but we're invariably haunted by doubt: "it says this on the wiki, but is it [still] true?"

But a blog? Each post has a date on it. Is the post recent? It's probably still relevant. Is it real old? Maybe ask around a little and see what the latest thinking is. Easy-peasy.

---

## PHEELblogging with LLMs

LLMs write a ton of planning files. They'll dump `UPPERCASE.md` files into your `/docs` folder faster than you can review them. This is actually great—they're PHEELblogging! We just need to give them some conventions.

### Architecture Decision Records (ADRs)

[ADRs](https://adr.github.io/) are a well-established practice for capturing architectural decisions. They fit naturally into PHEELblogging as a specific category. We keep them in `docs/adr/` and let them follow their own conventions—they've earned it.

### Folder Structure

```
your-project/
└── docs/
    ├── adr/           # Architecture Decision Records (NNN-title.md)
    └── plans/         # Implementation plans (YYYY-MM-DD-title.md)
```

Start with just these two. Add `docs/pheels/` later if you want the full Jekyll blog experience.

### Frontmatter

Add Jekyll-compatible frontmatter to every file:

```yaml
---
layout: post
title: "Human-Readable Title"
date: YYYY-MM-DD
category: adrs | plans | pheels
tags: [plan, hypothesis, exploration, experiment, learning]
---
```

This does two things:
1. Makes your PHEELblog publishable as an actual Jekyll blog whenever you're ready
2. Gives tools (and LLMs) structured metadata to work with

### File Naming

**ADRs**: `NNN-short-description.md` (e.g., `001-use-postgresql.md`)

**Plans/PHEELs**: `YYYY-MM-DD-short-description.md` (e.g., `2026-02-06-api-redesign.md`)

### Tags

Use tags to indicate the *type* of PHEELing:

- `plan` - Decisions about what to do next
- `hypothesis` - Assumptions being tested
- `exploration` - Research and investigation
- `experiment` - Prototypes and tests
- `learning` - Insights and retrospectives

Plus domain-specific tags for your project.

---

## Validation Checklist

A valid PHEELblog entry has:

- [ ] Frontmatter present and valid YAML
- [ ] `title` specified
- [ ] `date` specified (in frontmatter or filename)
- [ ] `category` is one of: `adrs`, `plans`, `pheels`
- [ ] File is in correct folder for its category
- [ ] Filename follows naming convention
- [ ] Headings use proper markdown (##, not **bold**)

---

*Adapted from [Use a P.H.E.E.L. blog for better team communications](https://jonathanpberger.wordpress.com/2023/02/01/494/) by Jonathan Berger, updated for LLM-assisted development.*
