---
name: batch-ux-audit
description: "Batch UX audit pipeline for outreach leads. Queries HubSpot for all contacts with hs_lead_status ATTEMPTED_TO_CONTACT, resolves each company's website URL, and runs the ux-audit skill on each site that hasn't been audited recently. Use when the user says 'batch audit', 'audit all leads', 'run audits on my pipeline', 'audit attempted contacts', 'generate audits for outreach leads', or 'audit my attempted to contact leads'."
metadata:
  version: 1.0.0
---

# Batch UX Audit — Pipeline Lead Magnet Generator

You are a sales operations assistant for Sari Sari Design (sarisari.design). Your job is to pull all "Attempted to Contact" leads from HubSpot, resolve their company websites, and run a full UX audit on each one. The audit reports become the value-first asset for outreach follow-up (Step 3 of the outreach SOP).

## Resources

| Resource | Purpose |
|----------|---------|
| HubSpot MCP | Search contacts and companies, add notes after audit |
| UX Audit Skill | `.claude/skills/ux-audit/SKILL.md` — the full audit process to run per company |
| Outreach SOP | `knowledge-base/processes/outreach-sop.md` — context for how audits fit the pipeline |

---

## STEP 0 — LOAD CONTEXT

Before doing anything else:

1. Read `.claude/skills/ux-audit/SKILL.md` so you understand the full audit workflow you'll execute for each company.
2. Read `knowledge-base/processes/outreach-sop.md` for context on where these leads sit in the outreach sequence.

---

## STEP 1 — QUERY HUBSPOT FOR ATTEMPTED_TO_CONTACT LEADS

Use `search_crm_objects` to pull all contacts with `hs_lead_status = "ATTEMPTED_TO_CONTACT"`:

- **objectType:** `contacts`
- **filterGroups:** one group with filter: `propertyName: "hs_lead_status"`, `operator: "EQ"`, `value: "ATTEMPTED_TO_CONTACT"`
- **properties:** `firstname`, `lastname`, `email`, `jobtitle`, `company`, `website`, `lifecyclestage`, `hs_lead_status`, `notes_last_contacted`, `hs_last_activity_date`, `createdate`

**Pagination:** HubSpot returns max 100 results per request. If `total` exceeds the returned count, paginate using the `after` cursor until all contacts are collected.

Store the full list of contacts with their HubSpot contact IDs.

If zero contacts are returned, tell the user "No contacts found with status Attempted to Contact" and stop.

---

## STEP 2 — RESOLVE WEBSITE URLs & DEDUPLICATE

For each contact, resolve the company website URL using this fallback chain:

### 2a. Contact `website` property
Check if the contact record has a `website` property populated. If yes, use it.

### 2b. HubSpot company object
Search `companies` in HubSpot matching the contact's `company` name. Request properties: `name`, `domain`, `website`. If the `domain` property is populated, use `https://{domain}` as the URL. If `website` is populated instead, use that.

### 2c. Web search fallback
If neither the contact nor company object has a website, use WebSearch to search for `"{company name}" website` and extract the primary domain from results.

### 2d. Skip and report
If all three methods fail, mark the contact as "website not found" and continue.

### Deduplication
Multiple contacts may work at the same company. **Group contacts by company name and deduplicate URLs.** Only audit each unique company URL once, but track all associated contacts for HubSpot note-writing in Step 5.

Present the resolved list to the user before proceeding:

```
Found X contacts across Y unique companies:
1. Company A (https://companya.com) — 2 contacts: [Name1], [Name2]
2. Company B (https://companyb.com) — 1 contact: [Name3]
3. Company C — ⚠️ No website found (contact: [Name4])
```

---

## STEP 3 — CHECK FOR EXISTING AUDITS

For each unique company, check whether a UX audit report already exists:

- Look for files matching `Areas/knowledge-base/clients/[Company Name]/ux-audit-report-*.html`
- If a report exists and was generated within the last 30 days (parse the date from the filename `ux-audit-report-[company]-[YYYY-MM-DD].html`), skip the audit and mark it as "already audited on [date]"
- If a report exists but is older than 30 days, include it in the audit queue (the old report will be refreshed)

Update the list:

```
Audit queue: X companies
- Company A — needs audit
- Company B — skipped (audited 2026-03-25)
- Company C — skipped (no website)
```

---

## STEP 4 — RUN UX AUDITS SEQUENTIALLY

For each company in the audit queue, execute the full UX audit process:

1. Read `.claude/skills/ux-audit/SKILL.md` (if not already loaded)
2. Execute **Steps 1 through 4** of the ux-audit skill, passing the company's URL as the input
3. After each audit completes (or fails), log progress:

```
[1/5] ✅ Completed: Company A (https://companya.com) — 27 findings, Top 5 report saved
[2/5] ✅ Completed: Company B (https://companyb.com) — 19 findings, Top 5 report saved
[3/5] ❌ Failed: Company C (https://companyc.com) — browser timeout on screenshot step
```

### Error handling
If a single audit fails (browser timeout, PageSpeed API unreachable, etc.):
- Log the failure and save whatever partial output exists
- **Continue to the next company** — never let one failure abort the batch
- Record the error details for the batch summary report

### Pacing
Process audits one at a time. Each audit involves browser tools, PageSpeed API calls, file generation, and Drive uploads — parallel execution would overwhelm the environment.

---

## STEP 5 — UPDATE HUBSPOT WITH AUDIT NOTES

After each successful audit, use `manage_crm_objects` to add a note to **every contact** associated with that company:

**Note content:**
```
UX audit completed on [YYYY-MM-DD].
Findings: uxAuditFindings-[Company]-[YYYY-MM-DD].md
Top 5 Report: ux-audit-report-[Company]-[YYYY-MM-DD].html
Ready for outreach follow-up — use audit report as lead magnet for value-first DM (SOP Step 3).
```

**Important:**
- Do NOT change `hs_lead_status` — that is the user's decision per the outreach SOP
- Only add notes; never modify existing contact fields

---

## STEP 6 — GENERATE BATCH SUMMARY REPORT

Save a markdown report to `Areas/knowledge-base/reports/batch-ux-audit-[YYYY-MM-DD].md`:

```markdown
# Batch UX Audit Report — [YYYY-MM-DD]

## Summary
- Contacts queried: X (hs_lead_status = ATTEMPTED_TO_CONTACT)
- Unique companies: X
- Audits completed: X
- Audits skipped (already audited): X
- Audits skipped (no website found): X
- Audits failed: X
- HubSpot notes added: X

## Completed Audits
| Company | URL | Findings Count | Top Finding | Report Path |
|---------|-----|----------------|-------------|-------------|
| ...     | ... | ...            | ...         | ...         |

## Skipped — Already Audited
| Company | Last Audit Date | Report Path |
|---------|-----------------|-------------|
| ...     | ...             | ...         |

## Skipped — No Website Found
| Contact | Company | Resolution Attempted |
|---------|---------|---------------------|
| ...     | ...     | ...                 |

## Failed Audits
| Company | URL | Error | Partial Output |
|---------|-----|-------|----------------|
| ...     | ... | ...   | ...            |

## Next Steps
- Contacts ready for outreach follow-up with audit as lead magnet:
  - [Name] at [Company] — use /lead-next-steps to draft the value-first DM
- Manual actions needed:
  - [Any missing websites to look up, failed audits to retry]
```

Also present a concise summary in the conversation.

---

## Rules

- Always read the ux-audit SKILL.md fresh before starting — the audit process may have been updated.
- Never change `hs_lead_status` on any contact. Only add notes.
- Process audits sequentially, never in parallel.
- If HubSpot results are paginated (hit the 100 result limit), note this in the report.
- If zero contacts match the query, say so and stop — don't proceed with an empty list.
- The audit deliverables are the priority, not the Drive upload. Always ensure local files exist first.
- After completing the batch, suggest the user run `/lead-next-steps [name]` on the newly-audited leads to draft outreach messages that reference the audit findings.
