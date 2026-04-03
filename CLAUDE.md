# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Is

This is the **Sarisari Design** monorepo — an operations hub for a fintech-focused UX design studio. It is **not a traditional software project**. There is no build system, test suite, or CI/CD pipeline at the root level. The repo organizes knowledge, skills (Claude Code slash commands), client deliverables, and sub-projects.

## Repository Structure

The repo follows a PARA-inspired layout (Projects, Areas, Resources, Archive):

- **Areas/knowledge-base/** — Canonical reference docs for AI agents and humans: company positioning, ICP, brand voice, processes (outreach SOP, referral program), industry knowledge (fintech compliance, UX patterns), and templates. This is a nested git repo.
- **Resources/skills/** — Claude Code skill definitions (SKILL.md files). Each skill is a self-contained slash command. Also a nested git repo.
- **Projects/** — Active work: client deliverables (UX audit reports) and the sari-sari-website (Next.js + Tailwind).
- **Archive/** — Inactive experiments and older skill exports.
- **knowledge-base/** (root level) — Lead gen reports and launchd logs for scheduled agents.

## Key Skills (Slash Commands)

Skills are defined in `Resources/skills/` and registered via `.claude/commands/` or user-level config. The active skills are:

- `/ux-audit <url>` — Runs a comprehensive UX audit of a fintech website, produces an HTML report. Uses browser tools, WebFetch, WebSearch.
- `/lead-gen` (lead-capture) — Collects Google Alert signals from Gmail, qualifies against ICP, finds contacts via Apollo, loads into HubSpot CRM.
- `/lead-check-in` — Scans the full HubSpot pipeline for overdue follow-ups based on outreach SOP timing rules.
- `/lead-next-steps <name>` — Looks up a specific lead in HubSpot and recommends next action.

## External Integrations

Skills rely on MCP servers for: **HubSpot CRM** (contacts, companies, pipeline), **Apollo.io** (people/company search and enrichment), **Gmail** (Google Alert collection), **Google Calendar**, **Notion**, and **Figma**.

## Knowledge Base Conventions

- Files in `Areas/knowledge-base/` are written for AI consumption: explicit, unambiguous, terms defined on first use.
- Filenames use kebab-case.
- The ICP (`company/ideal-client-profile.md`) and outreach SOP (`processes/outreach-sop.md`) are referenced by multiple skills — always read them fresh rather than assuming cached content is current.

## Sub-Project: Sari Sari Website

Located at `Projects/sari-sari-website/`. Next.js app with Tailwind CSS.

```bash
cd Projects/sari-sari-website
npm install
npm run dev
```

## Working With Deliverables

UX audit deliverables are stored under `Areas/knowledge-base/clients/<ClientName>/` as both `.md` (findings) and `.html` (formatted report). When generating new audits, follow the naming convention: `ux-audit-report-<client>-<YYYY-MM-DD>.html` and `uxAuditFindings-<Client>-<YYYY-MM-DD>.md`.
