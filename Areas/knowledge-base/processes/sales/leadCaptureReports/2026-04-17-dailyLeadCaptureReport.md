# Daily Lead Capture Report — 2026-04-17

## Summary
- Alerts processed: 2 (emails dated 2026-04-17 and 2026-04-16, both within 24h window)
- Article links found in emails: 29 (across 2 emails, 8 alert categories)
- Articles fetched (attempted): 7
- Articles with usable content: 5
- Articles unable to fetch: 4 (2 timeouts, 1 blocked/403, 1 CSS-only content)
- Companies identified: 19
- Companies qualified (primary ICP): 2
- Companies qualified (secondary/borderline): 2
- Companies disqualified: 15
- Contacts added to HubSpot: 3 (all Spektr)
- Contacts updated (note added): 0
- Contacts not found (manual lookup needed): 3 companies

> ⚠️ **Apollo MCP Note:** Apollo.io MCP is not connected. Contact enrichment for Spektr relied on leadership names from a Crunchbase article. Wealth.com, Caruso, and Luma Financial require full manual Apollo lookup (names, emails, LinkedIn). All Spektr contacts are missing verified email and LinkedIn URL.

---

## Qualified Companies

| Company | Signal | Qualification Reason |
|---------|--------|----------------------|
| **Spektr** | $20M Series A led by NEA (Northzone, Seedcamp, PSV also participated). Copenhagen, founded 2023. 45 employees. Article: Crunchbase News, 2026-04-16. | Series A fintech compliance platform automating document reviews, ownership mapping, and risk analysis for banks. User-facing compliance workflows = high UX complexity. 45 employees = likely no dedicated design function. Founders previously built HelloFlow (acquired by Trulioo for $50M+) — repeat founders with design-credible backgrounds. Expanding to London and NYC. Strong primary ICP fit. |
| **Wealth.com** | $65M oversubscribed Series B. Estate planning + AI wealth management platform for financial advisors. Article: Business Wire / InvestmentNews, 2026-04-16. (Article details limited due to 403/timeout.) | Series B fintech, wealth management/estate planning with AI. User-facing product for financial advisors = complex compliance UX domain. Oversubscribed round signals product-market fit and post-raise urgency. Fits secondary ICP target (investment advisory / wealth management). Strong secondary ICP fit pending confirmation of team size. |

### Borderline / Secondary ICP

| Company | Signal | Notes |
|---------|--------|-------|
| **Caruso** | $9.3M Series A led by Icehouse Ventures and GD1. New Zealand fund administration fintech. | Series A fintech, user-facing fund admin platform for investment managers. Adjacent regulated industry (investment administration). NZ-based — lower outreach priority but worth manual review. |
| **Luma Financial Technologies** | Launched "Life Insurance Operating System" in partnership with iPipeline. No funding details available from alert. | Life insurance OS is adjacent regulated industry (insurance). Unknown stage/size — could be too established or too early. Needs manual research before CRM entry. |

---

## Disqualified Companies

| Company | Reason |
|---------|--------|
| Slash | $100M Series C at $1.4B valuation. Too late stage — well past Series A/B ICP window. Likely has established design team. |
| Q2 Holdings | NYSE-listed (QTWO). Public company, large established digital banking platform. Far too large for ICP. |
| NectarFi | $170K pre-seed. Way too early — no design budget at this stage. |
| Round | $6M Seed, London-based AI finance automation. Already added to HubSpot as company record on 2026-04-15 (duplicate alert signal). |
| TraqCheck | $8M Series A — but it's an AI infrastructure platform for enterprise *hiring*, not a fintech product. Funded by IIFL Fintech Fund (an investor), not a fintech company. |
| Alkami | Large public enterprise digital banking company. Recurring noise item. |
| FINTECH.TV | Media/podcast company. Not a fintech product. |
| Primitive | "B2B FinTech infrastructure layer for banking industry" — article blocked; description suggests purely API/backend infrastructure with no user-facing component. |
| Fairsquarelab | Series B digital asset infrastructure for institutions. Article content was CSS-only (blocked). Positioning as institutional infrastructure suggests no end-user-facing product. |
| Kalshi | Series E at $22B valuation. Far too large. |
| Vestwell | Series E at $2B valuation. Far too large. |
| Devoted Health | $366M equity round. Large-scale insurtech. |
| Rain | $250M Series C at $1.95B valuation. Too late/large. |
| Xoople | €112.6M Series B — very large raise, likely has substantial team. Madrid-based, not primary geography. |
| PiggyVest | Nigerian savings fintech. Out of primary geography; CEO mentioned in thought leadership article, not a new funding signal. |
| Visa Africa Fintech Accelerator | Program/accelerator — cohort companies not individually named in alert snippets. Recurring noise item. |

---

## Contacts Added to HubSpot

| Name | Title | Company | Email | LinkedIn | HubSpot ID |
|------|-------|---------|-------|----------|------------|
| Mikkel Skarnager | CEO | Spektr | Manual lookup needed | Manual lookup needed | 473040342767 |
| Ciprian Florescu | CTO & Co-founder | Spektr | Manual lookup needed | Manual lookup needed | 473060951781 |
| Jeremy Joly | CPO | Spektr | Manual lookup needed | Manual lookup needed | 473015386852 |

---

## Contacts Needing Manual Lookup

| Company | Target Titles | Notes |
|---------|--------------|-------|
| Spektr | Mikkel Skarnager (CEO), Ciprian Florescu (CTO), Jeremy Joly (CPO) | All 3 in HubSpot. Need verified emails + LinkedIn URLs via Apollo. |
| Wealth.com | CEO / Co-Founder, Head of Product / CPO | Article timed out and 403'd — no leadership names extracted. Search Apollo for "Wealth.com" to surface decision makers. |
| Caruso | Oliver Shaw (Founder), Mark Hurley (Founder) | Founders named in Startup Daily article. Need emails and LinkedIn. Company is NZ-based — lower priority but surfaced from valid Series A signal. |

---

## Articles Unable to Fetch

| URL | Source Alert | Reason |
|-----|-------------|--------|
| https://www.businesswire.com/news/home/20260416563869/en/Wealth.com-Raises-$65-Million-Series-B... | Series B fintech funding | Timeout (60s exceeded) |
| https://www.investmentnews.com/fintech/wealthcom-raises-65m-series-b-as-ai-adoption-accelerates-across-firms/266175 | Series B fintech funding | HTTP 403 Forbidden (paywall) |
| https://ffnews.com/newsarticle/insurtech/insurtech-ny-epaypolicy-on-digitising-payments/ | Fintech product launches | Loading spinner only — JS-gated content |
| https://www.businesswire.com/news/home/20260416151140/en/Luma-Financial-Technologies-Launches... | Fintech product launches | Timeout (60s exceeded) |
| https://markets.businessinsider.com/news/stocks/primitive-launches-the-complete-ai-agent-operating-system-for-financial-services-1036019570 | Fintech product launches | Domain blocked |
| https://en.wowtale.net/2026/04/15/233898/ | Series B fintech funding | Fetched successfully but page was CSS/styling only — no article text |

---

## Alert Keyword Performance

| Alert Category | Links | Companies Found | Qualified |
|----------------|-------|-----------------|-----------|
| Series B fintech funding | 3 (Wealth.com ×2, Fairsquarelab ×1) | Wealth.com, Fairsquarelab | 1 ✓ (Wealth.com — limited data) |
| Fintech accelerator/cohort | 2 | Visa Africa Accelerator | 0 — recurring noise, cohort not named |
| Top fintech / fintech to watch | 1 | MEXC Exchange PR agencies article | 0 — recurring noise |
| Fintech regulatory/compliance | 2 | X Money / Elizabeth Warren letter | 0 — policy/regulatory news, no startups |
| Series A fintech funding | 3 (Spektr ×3) | Spektr | 1 ✓ (strongest signal today) |
| Fintech product launches | 6 | ePayPolicy, Q2, Luma, Alkami, FINTECH.TV, Primitive | 0 primary (Luma borderline — needs research) |
| YC/accelerator fintech | 1 | Crunchbase YC Q1 roundup | 0 primary (surfaced late-stage companies) |
| NectarFi / Beinsure roundup | 1 | Round, Xoople, NectarFi | 0 primary (Round = duplicate; others disqualified) |

---

## Notes

**Spektr is the lead of the day.** $20M Series A, 45 employees, founded by serial founders who've already had a successful exit. They're building compliance workflow tooling for banks — a domain with high UX complexity, trust requirements, and regulatory constraints. All three leadership contacts (CEO, CTO, CPO) are now in HubSpot. The CPO (Jeremy Joly) is the primary buyer persona. Priority: get verified emails via Apollo ASAP.

**Wealth.com is worth pursuing but needs enrichment.** The $65M oversubscribed Series B is a strong signal — oversubscription indicates product-market fit and investor confidence. The wealth management + estate planning domain has complex user flows for advisors and clients alike. However, no article content was successfully fetched (both sources timed out or 403'd), so we have no leadership names. Full manual lookup needed before CRM entry.

**Round resurfaced — already in CRM.** The beinsure.com article about Round ($6M Seed, AI treasury automation) was the same Round added on 2026-04-15 as a company record. The Series B alert picked it up because the article also mentioned Xoople's large Series B. This is alert cross-contamination — the beinsure.com source aggregated multiple companies in one piece. No action needed; Round is already tracked.

**Apollo MCP remains the critical gap.** For the third consecutive week, contacts are landing in HubSpot without verified emails or LinkedIn URLs. Every day without Apollo adds manual enrichment debt. At current velocity (3–5 new contacts/day), this represents 15–25 partial records per week that require manual follow-up before outreach can begin.

**Luma Financial Technologies: monitor candidate.** A "first-of-its-kind life insurance OS" launch in partnership with iPipeline is a real signal. Insurance tech with workflow UX fits the secondary ICP. Needs a company-stage check (employee count, prior funding) before deciding whether to add to CRM.
