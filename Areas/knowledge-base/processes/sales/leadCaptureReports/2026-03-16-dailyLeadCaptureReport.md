# Daily Lead Capture Report — March 16, 2026

## Summary
- Alerts processed: 2 emails (3 alert queries)
- Companies identified: 6
- Companies qualified: 3
- Companies disqualified: 3
- Contacts added to HubSpot: 0
- Contacts updated (note added): 0
- Contacts not found (manual lookup needed): 3 ⚠️ Apollo.io not yet connected — all qualified companies require manual contact research

---

## Qualified Companies

| Company | Signal | Qualification Reason |
|---------|--------|----------------------|
| **KAST** | Series A — $80M raised at $600M valuation. London-based stablecoin fintech. QED Investors-backed. | Series A fintech, user-facing financial/payments product, recently raised, likely small team. Strong ICP match. |
| **Cleafy** | Series B — €22M (~$25M) to protect banks from fraud. | B2B fintech selling fraud protection to banks. Compliance UX complexity, small-to-mid size, Series B = budget + urgency. |
| **Cryptio** | Series B — $45M. Crypto accounting platform. | B2B fintech, complex financial data UX (accounting + compliance), Series B, likely small design team. |

---

## Disqualified Companies

| Company | Reason |
|---------|--------|
| **Lyzr AI** | Horizontal AI agent platform (not user-facing fintech UX). Developer-facing product serving multiple verticals. No compliance UX need specific to fintech. |
| **Bitcoin Depot** | Publicly traded on NASDAQ (ticker: BDL). Too large, almost certainly has in-house design resources. |
| **Uzum** | $130M+ raise from Omani sovereign funds suggests Series C or later. Likely 100+ employees. Uzbek market is outside target geography. |

---

## Contacts Added to HubSpot

None — Apollo.io is not yet connected. All qualified companies require manual contact lookup.

---

## Contacts Needing Manual Lookup

| Company | Target Titles | Notes |
|---------|--------------|-------|
| **KAST** | CEO/Co-Founder, Head of Product, Head of Design | London-based. Search LinkedIn for leadership. QED Investors may have intro path. |
| **Cleafy** | CEO/Co-Founder, VP of Product, Head of Design | Italian-founded fraud tech company. Check LinkedIn + Crunchbase for team. |
| **Cryptio** | CEO/Co-Founder, VP of Product, Head of Design | Crypto accounting SaaS. Check LinkedIn. Recent $45M raise means hiring likely underway. |

---

## Notes & Observations

- The "Series A fintech" alert is performing well — KAST is a strong qualified lead.
- The "hiring for design/head of product" alert returned a generic Nucamp bootcamp article — this alert query may need refinement.
- Apollo.io integration is the highest-priority action item to automate contact enrichment and remove the manual lookup bottleneck.

---

## Integration Issues (Action Required)

| Integration | Status | Fix |
|-------------|--------|-----|
| **Apollo.io** | Connected but free plan blocks API search (`api/v1/mixed_people/search` returns 403) | Upgrade Apollo plan at app.apollo.io to unlock people search |
| **HubSpot** | OAuth scope error: `user:mcp_servers` missing | Reconnect HubSpot in claude.ai Settings → Integrations, re-accept permissions |
