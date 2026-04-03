# Sari Sari Design — Knowledge Base

This repository is the canonical reference for all AI agents and tools used by Sari Sari Design. It contains our positioning, processes, client information, industry knowledge, and templates in a structured format optimized for AI consumption.

## How to Use This Library

**For AI agents (Claude, ChatGPT, etc.):** Upload relevant files as context/knowledge when setting up projects, custom GPTs, or agent workflows. Each file is self-contained and can be used independently, though cross-references are noted where relevant.

**For humans:** This is the single source of truth for how we talk about ourselves, how we work, and what we know. If something here is outdated, update it here first — everything downstream depends on these files being current.

## Folder Structure

```
/company          — Who we are, what we do, how we talk about it
  positioning.md        — Market position and differentiators
  services-and-pricing.md — Tiers, pricing, and pricing philosophy
  brand-voice.md        — Tone, language, and communication style
  team.md               — Team bios and studio structure
  ideal-client-profile.md — Target client criteria and qualification signals

/clients          — Client-specific context and history
  client-brief-template.md — Template for onboarding new clients
  /lendzi
    overview.md         — Lendzi engagement history and notes

/processes        — How we operate
  outreach-sop.md       — LinkedIn outreach process and principles
  referral-program.md   — Referral strategy and active asks

/industry         — Domain knowledge for fintech design
  fintech-compliance-glossary.md — SOC2, PCI DSS, KYC/AML explained
  common-ux-patterns.md — Standard fintech UX patterns and principles

/templates        — Reusable document structures
  proposal-template.md  — Client proposal format
  case-study-template.md — Case study format for completed work
```

## Maintenance

- **Update frequency:** Review quarterly at minimum. Update immediately when pricing, positioning, or processes change.
- **Who updates:** Zach (primary), Patricia (design-specific content)
- **Version control:** Git handles versioning automatically. Every edit is tracked.

## Adding New Files

When adding a new file:
1. Place it in the most logical folder
2. Use kebab-case for filenames (e.g., `new-topic-name.md`)
3. Start with a clear H1 title and a brief description of what the file covers
4. Write for an AI reader: be explicit, avoid ambiguity, define terms on first use
5. Update this README's folder structure section to include the new file
