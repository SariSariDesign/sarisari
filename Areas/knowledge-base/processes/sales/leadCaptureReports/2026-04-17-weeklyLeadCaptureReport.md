# Weekly Lead Capture Report — Week of April 13–17, 2026

## Weekly Summary

| Metric | Count |
|--------|-------|
| Pipeline days run | 5 |
| Total alert emails processed | ~12 (including 6-day catch-up on Mon Apr 13) |
| Total companies identified | ~93 |
| Total companies qualified (primary ICP) | 11 |
| Total companies qualified (secondary/borderline) | 4 |
| Total companies disqualified | ~78 |
| Contacts added to HubSpot | 10 |
| Contacts updated (notes added) | 4 |
| Contacts needing manual lookup | ~9 companies |
| Apollo MCP available | ❌ No — all enrichment done manually |

---

## Companies Qualified This Week

### Primary ICP (Series A/B Fintech, User-Facing Product)

| Company | Signal | Date Identified | CRM Status |
|---------|--------|-----------------|------------|
| Variance | $21.5M Series A — AI-powered KYC/AML compliance platform, SF. | Apr 13 | 2 contacts added |
| Zocks | $45M Series B — AI assistant for financial advisors, SF. | Apr 13 | 2 contacts already in CRM (notes updated) |
| Pipe | $16M equity — embedded B2B financing, relaunched. | Apr 13 | 1 contact added |
| Lucky | $23M Series B — digital lending/neobank, North Africa. | Apr 14 | 2 contacts updated |
| Covu | ~$50M Series B total; Covu OS platform launch — AI insurance workflow. | Apr 14 | 1 contact added |
| Payabli | $28M Series B — embedded payments infrastructure, Miami. | Apr 15 | Company record added; contacts pending Apollo lookup |
| Haast | $12M Series A — AI compliance automation, NYC/SF/Sydney. | Apr 15 | Company record added; contacts pending Apollo lookup |
| Round | $6M Seed — AI treasury/payroll automation, London. | Apr 15 | Company record added; contacts pending Apollo lookup |
| Common Wealth | $12M CAD Series A — workplace retirement plans, Toronto. | Apr 16 | 1 contact added |
| Wamo | €10M Series A — SME financial OS, Helsinki. | Apr 16 | 1 contact added |
| Spektr | $20M Series A — fintech compliance workflows, Copenhagen. | Apr 17 | 3 contacts added |

### Secondary ICP / Borderline (Adjacent Regulated Industries or Incomplete Data)

| Company | Signal | Date | Notes |
|---------|--------|------|-------|
| Wealth.com | $65M Series B — wealth management AI, advisors. | Apr 17 | No leadership data extracted — needs manual lookup |
| Caruso | $9.3M Series A — fund administration, NZ. | Apr 17 | NZ geography is a stretch; founders identified |
| Luma Financial Technologies | Life insurance OS launch with iPipeline. | Apr 17 | Stage/size unknown — needs research before CRM entry |
| (4th company from Apr 15) | See 2026-04-15 report for full details | Apr 15 | — |

---

## Qualified vs. Disqualified Breakdown by Alert Keyword

| Alert Keyword | Qualified | Disqualified | Notes |
|---------------|-----------|--------------|-------|
| "Series A" + fintech + raised | 8 | ~12 | Most productive alert — Variance, Haast, Round, Caruso, Common Wealth, Wamo, Spektr, Pipe all surfaced here |
| "Series B" + fintech + raised | 4 | ~15 | Zocks, Lucky, Covu, Wealth.com qualified; many large/late-stage false positives |
| Fintech product launches/redesign | 1 | ~22 | Covu OS was the only qualified launch signal; Alkami, Q2, Primitive, FINTECH.TV = recurring noise |
| Fintech accelerator/incubator cohort | 0 | ~8 | Visa Africa Accelerator is recurring noise; JAX Hub cohort blocked by paywall all week |
| YC / Techstars / accelerator fintech | 0 | ~5 | Crunchbase YC roundup surfaced only late-stage companies |
| Top fintech / fintech to watch / awards | 0 | ~10 | MEXC Exchange articles = recurring false positive. MarketBeat "Top Fintech Stocks" = recurring false positive |
| Fintech regulation / compliance / CFPB | 0 | ~6 | X Money/Warren letter dominated; no startups surfaced |

---

## Contacts Needing Manual Apollo Lookup (Aggregated)

| Company | Known Contacts | Target Additional Contacts |
|---------|---------------|---------------------------|
| Variance | Karine Mellata (CEO), Michael Lin (Co-Founder) | Head of Design / VP of Design — not yet identified |
| Zocks | Mark Gilbert (CEO), Ákos Ratku (Co-Founder) | Head of Product / Head of Design |
| Pipe | Claurelle Rakipovic (CEO), Nate Wiger (CPTO) | Head of Design reporting to CPTO |
| Covu | Ali Safavi (CEO) | Head of Product / CPO |
| Payabli | Company record only | CEO, Head of Product, Head of Design |
| Haast | Company record only | CEO, CPO / Head of Product |
| Round | Company record only | CEO, CPO / Head of Product |
| Common Wealth | Alex Mazer (CEO) | Co-founder(s), Head of Product |
| Wamo | Yanki Önen (Founder) | Head of Product / CPO |
| Spektr | Mikkel Skarnager (CEO), Ciprian Florescu (CTO), Jeremy Joly (CPO) | Verified emails + LinkedIn for all three |
| Wealth.com | No contacts yet | CEO, Head of Product, Head of Design — full lookup needed |

---

## Alert Performance Recommendations

Based on this week's signal-to-noise analysis, the following changes are recommended for the Google Alerts setup:

**Remove recurring false positives immediately:**
1. **MEXC Exchange** — Add `-site:mexc.com` to the "series A + fintech", "series B + fintech", and "top fintech" alert queries. MEXC articles triggered the alert daily this week and produced zero leads. They match keywords because they write about established companies to illustrate market trends.
2. **MarketBeat** — Add `-site:marketbeat.com` to the "top fintech / fintech to watch" alert. This source consistently returns public stock lists, never startup leads.

**Tighten the Series B query:**
The current "series B + fintech + raised" alert is broad enough to capture late-stage raises (Kalshi at $1B, Vestwell at $385M, Rain at $250M). These companies are far outside the ICP but consume qualification time. Consider adding: `AND (startup OR "recently founded" OR "early-stage")` or `-valuation -unicorn` to reduce noise from large megarounds.

**Fintech accelerator alert is underperforming:**
The JAX Hub cohort article was paywalled (BizJournals) three times this week. The Visa Africa Accelerator triggered multiple times but the cohort companies were never individually named in alert-accessible content. Consider adding direct monitoring of accelerator announcement pages rather than relying on Google Alerts for this signal type.

**Compliance/regulatory alert is generating zero leads:**
The CFPB/regulatory alert this week was dominated by the X Money/Elizabeth Warren letter, which generated no actionable leads. This alert is designed as an indirect signal (companies dealing with compliance have UX needs), but the current query primarily surfaces regulatory news articles rather than startup signals. Consider narrowing to add: `AND ("startup" OR "founded" OR "series")` to filter for startup mentions in regulatory contexts.

**Series A alert is the clear winner:**
Eight of the week's eleven primary qualified companies came from the "series A + fintech + raised" alert. This should remain the highest-priority alert and receive the most refinement attention. Consider splitting it by US geography to prioritize domestic leads: add `(US OR "United States" OR NYC OR "San Francisco" OR "New York")` as a filter variant.

---

## Weekly Pipeline Health

**Velocity:** 11 primary qualified companies this week across 5 pipeline runs. That's ~2.2 qualifications per day — broadly consistent with prior weeks.

**CRM debt:** 10 contacts were added but ~90% are missing verified emails and LinkedIn URLs due to the absence of Apollo MCP. Without enrichment, the contacts cannot be actioned by the outreach team. This is the most pressing operational issue in the pipeline.

**Geographic spread:** This week's qualified leads spanned SF/US (Variance, Zocks, Pipe), Europe (Spektr/Copenhagen, Wamo/Helsinki, Common Wealth/Toronto), and borderline markets (Caruso/NZ, Luma Financial). The US-based leads (Spektr expanding to NYC, Pipe, Covu, Haast, Payabli) should be prioritized for outreach given Sarisari's LinkedIn-first channel strategy and existing US presence.

**Strongest lead of the week: Spektr.** $20M Series A, 45 employees, repeat founders with a proven exit, expanding to NYC and London, building user-facing compliance workflows for banks. CPO Jeremy Joly is the primary buyer persona. This lead should be fast-tracked to outreach as soon as emails are confirmed via Apollo.

**Second strongest: Common Wealth + Wamo** (from Apr 16) and **Wealth.com** (today). Common Wealth (workplace retirement, Toronto) and Wamo (SME financial OS, Helsinki) were both added with contacts on Apr 16. Wealth.com still needs full enrichment but the $65M oversubscribed round is an exceptionally strong signal.
