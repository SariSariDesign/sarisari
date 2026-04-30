# Daily Lead Capture Report — 2026-04-30

## Summary
- Alerts processed: 2 (today's digest plus yesterday's, captured within the 24-hour window)
- Articles fetched: 5 (of 18 unique links found across both digests)
- Articles unable to fetch: 2 (Citywire blocked by Incapsula, IBS Intelligence redirect cancelled)
- Companies identified: 22
- Companies qualified: 4
- Companies disqualified: 18
- Contacts added to HubSpot: 4
- Contacts updated (note added): 0
- Contacts not found (manual lookup needed): 4

## Notes On This Run
- Apollo.io people and company search APIs returned `API_INACCESSIBLE` errors on the current plan, so contact discovery via Apollo failed for every qualified company. Where the source articles named founders directly, those contacts were created in HubSpot from article-confirmed data. The remaining buyer titles (CTO, Head of Product, Head of Design) for every qualified company are flagged for manual lookup.
- Today's Google Alert digest was thin — the funding-round alerts pointed mostly to non-fintech companies (Avoca, Actively, IC Realtime), VC firms (Illuminate Financial), or publicly traded incumbents (FIS, Customers Bank, Backbase, Revolut). No "fintech rundown" or roundup articles were detected in the last 24 hours.

## Qualified Companies
| Company | Signal | Qualification Reason |
|---------|--------|----------------------|
| Performativ | $14M Series A (Apr 2026) led by Deutsche Börse Group, with Rabo Investments and McKinsey alumni; AI-driven platform replacing legacy wealth/asset systems | Series A fintech, Copenhagen-based, AI-driven product replacing legacy compliance-heavy systems — exactly the design-bottleneck profile in the ICP |
| Kashable | $60M new funding round (Apr 2026) on top of prior $25.6M Series B; profitable; ~40% YoY growth | Series B lending/financial-wellness fintech (US), recently raised; user-facing financial products with payroll integration — strong ICP fit |
| belo | $14M Series A (Apr 2026) led by Tether with Titan Fund; profitable for 3 years; multi-currency wallet + crypto Mastercard in LatAm | Series A consumer fintech, recent capital, user-facing financial flows. Marginal because LatAm/crypto-forward (ICP centers on US fintech) but core profile matches |
| Netbank | Series B led by Altara Ventures (Apr 2026); Philippines-based digital bank | Series B digital bank with active product surface and recent capital. Marginal because SE Asia is outside primary geo focus, but the stage/category fit holds |

## Disqualified Companies
| Company | Reason |
|---------|--------|
| Illuminate Financial | VC firm, not a target buyer — they fund fintechs, they aren't one |
| Auditoria.AI | AP/AR automation; no funding signal in alert; stage/team unclear from the digest snippet alone |
| Forbes Fintech 50 (Streamline article) | Editorial roundup of established global wealth platforms, not a startup signal |
| MoneyMagpie "Best Fintech Stocks" | Listicle of public fintechs for retail investors, not relevant |
| FIS | Publicly traded incumbent, far outside the 5–100 employee ICP band |
| Customers Bank | Publicly traded bank, not the ICP |
| Wavvest | Stage and size unclear; Citywire article was paywalled/blocked, no funding round confirmed |
| TransFICC | Product launch only (Credit Agent); no recent funding signal in alert |
| Backbase | Mature global vendor, not the ICP |
| Revolut | Late-stage/already global, far outside the ICP |
| NJ AI Hub Accelerator (cohort) | Aggregate accelerator news; no specific fintech named in the digest snippet to qualify |
| FinTech Global compliance article | Vendor explainer content, no company signal |
| Avoca | AI for the services economy (home services, contractors) — not fintech |
| Actively (Forbes piece) | Salesforce-competing AI sales agent, not fintech |
| IC Realtime | Video surveillance company, not fintech |
| PvX Partners | Series A but the "fintech" product is non-dilutive credit infrastructure for mobile-game user acquisition — B2B financing for app developers, no end-user financial product surface that matches our compliance-UX wedge |
| Synapse | CFPB enforcement story on a bankrupt fintech — not a prospect |
| LinkedIn Top Companies / SUNRATE / Proud Group | Award-listing roundup items with no funding or hiring signal relevant to ICP |

## Contacts Added to HubSpot
| Name | Title | Company | Email | LinkedIn |
|------|-------|---------|-------|----------|
| Rishi Kumar | Co-Founder & Co-CEO | Kashable | manual lookup needed | manual lookup needed |
| Einat Steklov | Co-Founder & Co-CEO | Kashable | manual lookup needed | manual lookup needed |
| Manuel Beaudroit | Co-Founder & CEO | belo | manual lookup needed | manual lookup needed |
| Edwin Rager | Co-Founder | belo | manual lookup needed | manual lookup needed |

Founder names confirmed from source articles (PYMNTS / Crunchbase coverage of Kashable; TechFundingNews coverage of belo). Email and LinkedIn fields left blank pending manual enrichment because the Apollo enrichment endpoint was not reachable on the current plan.

## Contacts Needing Manual Lookup
| Company | Target Title |
|---------|--------------|
| Performativ | CEO / Co-Founder |
| Performativ | CTO / VP Engineering |
| Performativ | Head of Product / VP Product / CPO |
| Performativ | Head of Design / VP Design |
| Kashable | CTO / VP Engineering |
| Kashable | Head of Product / VP Product / CPO |
| Kashable | Head of Design / VP Design |
| belo | CTO / VP Engineering |
| belo | Head of Product / VP Product / CPO |
| belo | Head of Design / VP Design |
| Netbank | CEO / Co-Founder |
| Netbank | CTO / VP Engineering |
| Netbank | Head of Product / VP Product / CPO |
| Netbank | Head of Design / VP Design |

## Articles Unable to Fetch
| URL | Source Alert | Reason |
|-----|--------------|--------|
| https://citywire.com/ria/news/exclusive-fintech-firm-wavvest-launches-in-house-ria/a2488817 | Product launch alert (today) | Blocked by Incapsula bot protection (returned a noindex stub) |
| https://ibsintelligence.com/ibsi-news/netbank-secures-series-b-led-by-altara-ventures/ | Series B fintech funding alert (today) | Redirect cancelled by upstream — confirmation pulled from email snippet only |

## HubSpot Records Created
- Companies: Kashable (320902505164), Performativ (320904394457), belo (320898920143), Netbank (320993448669)
- Contacts: Rishi Kumar (479684854519), Einat Steklov (479736162003), Manuel Beaudroit (479708824305), Edwin Rager (479652870867)

## Suggested Pipeline Improvements
- Apollo plan needs an upgrade or token refresh — the search and enrichment endpoints are essential for steps 4 and 5, and today's run had to fall back to article-only contact data for the qualified companies.
- Consider adding a Google Alert specifically for "fintech rundown" / "fintech weekly" / "weekly fintech recap" titles. Roundup posts are the highest-yield single articles, and today's digest didn't surface one.
- The "(\"top fintech\" OR \"fintech 50\")" alert is producing a high disqualification rate (mostly listicles and editorial roundups). Worth narrowing or replacing with a "fintech hiring" alert tied to "Head of Product" / "Head of Design" job posts to catch design-capacity signals directly.
