# Backfill Lead Gen Report — 2026-04-22 through 2026-04-29

**Note:** This is a 7-day backfill run, consolidating alerts that arrived while the user was away from the computer. Normally this skill produces one report per day; this consolidated format avoids generating seven sparse files. Standard daily cadence resumes 2026-04-30.

## Summary

- Alert digests processed: 8 (one per day, 04/22 through 04/29)
- Alert keyword categories covered: Series A fintech funding, Series B fintech funding, fintech accelerators, top fintech lists, fintech regulation/CFPB, fintech product launches/rebrands, YC/Techstars fintech batches, fintech design hiring
- Companies identified across the window: ~50
- Companies qualified against ICP: 7
- Companies disqualified: ~30 (mature/large, non-fintech, late-stage, or international with weak signal)
- Contacts added to HubSpot: 0
- Contacts updated (note added): 0
- Contacts flagged for manual lookup: 7 companies (all qualified leads)

## Pipeline Status — Apollo API

**Blocker:** The Apollo `mixed_people/api_search` endpoint returned `API_INACCESSIBLE` for all three test queries (Wealth.com, Monk, Ratio). The error message specifies the current Apollo access token is on a free plan that does not include the People Search API. Org enrichment may still work but consumes credits and would not surface contacts directly.

**Impact:** No contacts could be auto-pulled. Each qualified company below needs a manual LinkedIn or Apollo UI lookup before HubSpot ingestion. Outreach can still proceed, just with a manual research step inserted between qualification and CRM entry.

**Recommendation:** Either (a) upgrade the Apollo plan to enable the People Search API, or (b) update the lead-gen skill to skip Apollo and route qualified companies straight to a "manual lookup queue" so the bottleneck is visible.

## Qualified Companies

| Company | Signal | Date | Qualification Reason |
|---------|--------|------|----------------------|
| Wealth.com | $65M Series B for estate & tax planning fintech | 2026-04-21 (alert 04/22) | US fintech, Series B, wealth management — primary ICP fit. Estate/tax planning has heavy compliance UX needs. |
| Monk (monk.com) | $25M Series A, AI-native accounts receivable platform for B2B | 2026-04-22 (alert 04/22, 04/24) | NY-based, Series A, AI fintech, B2B contract-to-cash. Founders George Kurdin and Joe Zhou. Co-led by Footwork and Acrew Capital. |
| Ratio (ratiotech.com) | $15.8M venture + $100M lending capacity, AI fintech for B2B scale-ups | 2026-04-22 (alert 04/22) | SF-based, AI fintech, B2B payments. CEO Ashish Srima. Just launched AI Proposal Agent in beta — active product/design need. |
| Mosaic | $18M Series A, AI operating system for deal makers | 2026-04-22 (alert 04/22) | Series A, financial services / dealmaking workflow. Led by Radical Ventures. Confirm fintech adjacency before outreach. |
| Comfi | $65M Pre-Series A, B2B embedded finance / BNPL for MENA SMEs | 2026-04-27 (alert 04/28) | UAE-based fintech, embedded finance, B2B. International so weaker fit than US ICP, but the embedded-finance compliance angle is strong. |
| Courier Health | $50M Series B, biopharma patient experience platform | 2026-04-22 (alert 04/23) | **Secondary target** — life sciences with regulatory/compliance UX needs. Test the cross-vertical thesis here. |
| PvX Partners | $10.5M Series A, cohort financing & market intel for consumer apps | 2026-04-22 (alert 04/24, 04/29) | Singapore-based fintech. International, but Series A and clearly a fintech infrastructure play. Lower priority than US leads. |

## Disqualified Companies

| Company | Reason |
|---------|--------|
| Kashable | Series C $60M from Goldman Sachs — total raised >$450M since 2013, too mature |
| Ramp | $32B valuation, well past ICP |
| Avoca | $1B+ valuation, AI for services economy (not fintech) |
| Sereact | German AI/robotics, not fintech |
| IC Realtime | Video surveillance, not fintech |
| Synapse | Bankrupt fintech, CFPB enforcement context only |
| inKind | $450M Series B, restaurant/hospitality payments — large, mature |
| Vestwell | $385M Series B, retirement platform — mature with established design team |
| LendingClub / Happen Bank | Public company, far too large |
| Backbase | Established digital banking platform, large |
| Revolut | Multi-billion dollar neobank, too large |
| Bunq | Established European neobank |
| Atome | Established Asian payments, mature |
| Airstar Bank / EleBank | Established Asian bank rebrand |
| JPMorgan Chase, Citibank | Global incumbents |
| Cash App / Block | Public, far too large |
| Simply Business | Mature insurtech (acquired by Travelers years ago) |
| ING / Qover | Large incumbent insurer |
| BALLAS | Japan, ¥2.4B Series B — fintech relevance unclear from snippet |
| JPYC | Japan stablecoin, $18.1M Series B — international and crypto-specific |
| Hata | Malaysia digital asset exchange, $8M Series A — international, crypto |
| Baskit | Indonesia, $4.4M Series A — too small to clearly qualify |
| Signit | Saudi Arabia, $15M Series A — international, business unclear |
| Astor | $5M seed, AI investment advisory — too early stage for primary ICP, revisit at Series A |
| OnePay | Builder Card launch, stage unclear |
| Tangenesis | Established, integrating with Temenos |
| Serrala | Established autonomous finance vendor |
| Ideally | $10M Series A, AI market research — not fintech |
| Lumio | Hardware startup, not fintech |

## Contacts Needing Manual Lookup

All 7 qualified companies above need contact discovery via LinkedIn or Apollo UI. Recommended target titles per ICP:

| Company | Target Roles |
|---------|--------------|
| Wealth.com | CEO/Founder, Head of Product, Head of Design |
| Monk | George Kurdin (Co-Founder/CEO confirmed), Joe Zhou (Co-Founder confirmed), Head of Product, Head of Design |
| Ratio | Ashish Srima (CEO confirmed), Head of Product, Head of Design |
| Mosaic | CEO/Founder, Head of Product, Head of Design |
| Comfi | CEO/Founder, Head of Product |
| Courier Health | CEO/Founder, Head of Product, Head of Design |
| PvX Partners | CEO/Founder, Head of Product |

## Articles Unable to Fetch

| URL | Source Alert | Reason |
|-----|-------------|--------|
| fintechfutures.com/.../wealth-com-closes-65m-series-b | 04/22 | Response exceeded token limit; pulled details from email snippet instead |
| prnewswire.com/.../mosaic-raises-18m-series-a | 04/22 | Response exceeded token limit; pulled details from email snippet instead |

(Email snippets were sufficient to qualify both — full article fetch would only enrich the contact-discovery context, which is moot until Apollo access is restored.)

## Patterns Worth Flagging

1. **Heavy alert noise from CFPB regulatory news.** The "regulation / CFPB" alert contributed almost no qualified companies across the 7 days — mostly Citibank/JPMorgan and CFPB administrative news. Consider tightening the keyword set or dropping it.
2. **The "top fintech" alert is dominated by MarketBeat stock roundups.** Same companies (Rocket, Kaspi, UP Fintech, Wealthfront) repeated daily. Consider adding `-marketbeat` or `-stocks` exclusions.
3. **Two Series B fintech rounds came through Tracxn and Crunchbase recap pieces** (inKind $450M, Vestwell $385M, Kashable Goldman Sachs round). Roundups ARE working — they surfaced more companies than direct hits — but most of the named companies are too late stage for the ICP.
4. **The design hiring alert returned only 1 result in 7 days, and it was off-topic** (Zinnov GCC piece). The keyword combination may be too narrow. Consider broadening to "product designer" or "design hire" without requiring the "fintech" co-occurrence.
5. **Strongest US Series A/B fintech targets came from FinTech Futures, The SaaS News, and Crunchbase News.** These three sources punch above their weight in the digest.

## Suggested Next Actions for Zach

1. Decide on Apollo plan upgrade vs. process change before next backfill.
2. Manually look up Wealth.com, Monk, and Ratio on LinkedIn first — these are the strongest US-based ICP fits in the 7-day window.
3. Specifically: Ratio just launched a beta product (AI Proposal Agent). The audit-forward outreach experiment with Rudy Navarro at Uptiq could be replicated here — a quick UX read on the new beta would be a strong opener.
