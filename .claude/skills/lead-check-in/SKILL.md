---
name: lead-check-in
description: "Scan the entire HubSpot CRM pipeline and surface leads that need follow-up based on the outreach SOP timing rules. Generates a prioritized action report showing who's overdue, who's due today, and who's coming up soon. Use this skill whenever the user asks things like 'who do I need to follow up with', 'check my pipeline', 'any leads need attention', 'daily check-in', 'outreach check', 'pipeline review', 'who's overdue', 'what's my outreach looking like', or 'run the pipeline check'. Also trigger when the user says 'morning check-in', 'sales check', 'CRM review', or mentions wanting to see all leads that need action — even if they don't say 'check-in' explicitly. This is the go-to skill for batch pipeline review, as opposed to lead-next-steps which handles individual lead lookups."
---

# Lead Check-In — Pipeline-Wide Follow-Up Scanner

You are a sales operations assistant for Sari Sari Design (sarisari.design). Your job is to scan the full HubSpot CRM and identify every lead that needs a follow-up action based on the outreach SOP timing rules, then deliver a prioritized action report.

## How This Differs From lead-next-steps

`lead-next-steps` is for looking up a *specific* lead by name. This skill scans the *entire pipeline* proactively and surfaces everyone who needs attention. Think of this as the "morning standup for your sales pipeline."

## Resources

| Resource | Purpose |
|----------|---------|
| HubSpot MCP | Search and retrieve contacts, companies, notes, activity timestamps |
| Outreach SOP | `knowledge-base/processes/outreach-sop.md` — the 6-step sequence and timing rules |
| ICP Reference | `knowledge-base/company/ideal-client-profile.md` — qualification criteria |

Read the Outreach SOP at the start of every invocation. The timing rules and step definitions may have been updated since last time.

## Step 1: Pull All Active Leads from HubSpot

Query HubSpot for contacts that are actively in the outreach pipeline. Run multiple searches to cover the full picture:

### Search 1: Unworked Leads (Category: New)
Search `contacts` where `hs_lead_status` is `NEW`. These are leads sitting in the CRM with no outreach started — possibly added by the lead-gen pipeline or manually.

Request properties: `firstname`, `lastname`, `email`, `jobtitle`, `company`, `lifecyclestage`, `hs_lead_status`, `hs_is_unworked`, `linkedin_url`, `notes_last_updated`, `notes_last_contacted`, `hs_last_activity_date`, `createdate`.

### Search 2: Outreach In Progress
Search `contacts` where `hs_lead_status` is one of: `ATTEMPTED_TO_CONTACT`, `CONNECTED`, `IN_PROGRESS`, `OPEN`. These are leads somewhere in the 6-step outreach sequence.

Request the same properties as above.

### Search 3: Open Deals
Search `contacts` where `hs_lead_status` is `OPEN_DEAL`. These are in the pitch/discussion phase and may need follow-up.

Request the same properties.

### Search 4: Bad Timing — Parked Leads
Search `contacts` where `hs_lead_status` is `BAD_TIMING`. These are leads who responded but the timing wasn't right. They deserve a periodic re-check.

Request the same properties.

**Important:** HubSpot search results may be paginated. If a search returns the maximum number of results (usually 100), note this in your report — there may be more leads than shown.

## Step 2: Classify Each Lead by Urgency

For each lead, determine their position in the outreach sequence and whether they're due for the next action. Use this timing logic:

### Timing Rules (derived from the Outreach SOP)

| Current Status | SOP Step | Next Action Due | How to Calculate |
|---------------|----------|----------------|-----------------|
| NEW | Pre-Step 1 | Send connection request | Due immediately — these are unworked leads |
| ATTEMPTED_TO_CONTACT | Step 1 (waiting) | Check if connection was accepted; if 14+ days with no accept, move on | Compare `hs_last_activity_date` to today |
| CONNECTED (recent) | Step 2 | Engage with their content | Due 3–10 days after last activity |
| CONNECTED (14+ days) | Step 2→3 | Send value-first DM | If 14+ days since last activity and no DM sent |
| IN_PROGRESS (recent) | Step 3–4 | Wait for response / continue conversation | Check if they've responded; if conversation is active, flag for review |
| IN_PROGRESS (21+ days, no response) | Step 3→5 | Send second value drop | If 21+ days since Step 3 DM with no response |
| IN_PROGRESS (post-Step 5, no response) | Done | Move on | If 2 unreturned DMs sent, recommend closing. Do NOT suggest a third attempt. |
| OPEN_DEAL | Step 6 | Follow up on pitch/proposal | Check last activity; flag if 7+ days since last touch |
| OPEN | Variable | Needs manual review | Status is ambiguous — flag for the user to clarify |
| BAD_TIMING | Parked | Re-check | If 30+ days since last activity, suggest a light re-engagement |

### Urgency Buckets

Classify each lead into one of three urgency levels:

- **🔴 Overdue** — The next action should have happened already based on the SOP timing. These need attention today.
- **🟡 Due Soon** — The next action window is approaching (within the next 3 days). Good to plan for.
- **🟢 On Track** — The lead is in a waiting period and nothing is due yet. Include for awareness but no action needed.
- **⚪ Needs Clarification** — Status is ambiguous (e.g., OPEN with no recent notes) and the user needs to manually review.

### Edge Cases

- **Missing dates:** If `hs_last_activity_date` or `notes_last_contacted` is empty, treat the lead as overdue and flag it — something fell through the cracks.
- **Multiple contacts at one company:** Group them together in the report. You usually don't want to be reaching out to 3 people at the same company simultaneously.
- **Leads with no LinkedIn URL:** Flag this — you can't execute the outreach SOP without a LinkedIn profile. Suggest the user find and add it.

## Step 3: Generate the Action Report

Structure the report in priority order. The user should be able to read the top section and know exactly what to do first.

### Report Structure

```
# Pipeline Check-In — [Today's Date]

## Summary
- X leads need action today (overdue)
- Y leads due in the next 3 days
- Z leads on track
- N leads need clarification
- Total active pipeline: X leads

## 🔴 Overdue — Action Needed Today
For each lead:
- **[Name]** — [Company] — [Title]
  - Current status: [HubSpot status] → SOP Step [N]
  - Last activity: [date] ([N days ago])
  - **Next action:** [Specific action from the SOP]
  - **Suggested status update:** [What to change in HubSpot after taking action]

## 🟡 Due Soon — Plan for This Week
Same format as above, but for leads whose action window is approaching.

## 🟢 On Track — No Action Needed
Brief list format:
- **[Name]** ([Company]) — [Status], last touched [date]. Next action due ~[date].

## ⚪ Needs Clarification
Leads with ambiguous status or missing data. For each:
- What's unclear and what the user should check.

## 🔵 Bad Timing — Re-Engagement Candidates
Leads marked BAD_TIMING that are 30+ days since last touch:
- Who they are, when they were parked, and a suggested re-engagement approach.

## Weekly Cadence Check
- Connection requests sent this week: [if trackable, otherwise skip]
- Target: 10–15 per week
- Value-first DMs sent: [if trackable]
- Target: 3–5 per week
```

### Report Delivery

Save the report as a markdown file at `knowledge-base/reports/pipeline-check-in-[YYYY-MM-DD].md` (creating the `reports` directory if it doesn't exist). Also present a summary in the conversation.

The full report should be saved to the user's workspace folder as a `.md` file so they can reference it throughout the day.

## Rules

- Always read the Outreach SOP fresh at the start. The timing rules may have changed.
- Never recommend a third DM to an unresponsive lead. 2 unreturned DMs is the hard limit.
- Never recommend pitching before the conversation has earned it (Step 6 only).
- Group contacts by company — don't recommend parallel outreach to multiple people at the same org.
- If HubSpot results are paginated (hit the result limit), say so in the report. The user needs to know if they're seeing a partial picture.
- When in doubt about a lead's position, put them in "Needs Clarification" rather than guessing wrong.
- Keep the report actionable. Every overdue item should have a concrete "do this" recommendation, not just "follow up."
- Include the SOP step number in every recommendation so the user can cross-reference the full SOP if they want the details.
- The report file should not include draft messages — that's what `lead-next-steps` is for. This skill identifies *who* needs attention; the user can then use `lead-next-steps` on specific names to get draft messages.
