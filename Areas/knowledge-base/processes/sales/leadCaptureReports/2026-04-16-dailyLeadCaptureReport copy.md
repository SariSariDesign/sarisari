# Daily Lead Capture Report — 2026-04-16

## Summary
- Alerts processed: 1 (digest with 8 alert categories, 17 article links)
- Articles fetched: 8 attempted (5 successful, 3 blocked)
- Articles unable to fetch: 3 (BizJournals - 403, Bluefish/FinSMEs - 403, Humanly/GeekWire - 403)
- Articles skipped (duplicate company coverage or low signal): 9
- Companies identified: 18 named + ~3 unknown (JAX Hub cohort, article blocked)
- Companies qualified: 2
- Companies disqualified: 16
- Contacts added to HubSpot: 2
- Contacts updated (note added): 0
- Contacts not found (manual lookup needed): 2 (emails + LinkedIn needed for both)

---

## Qualified Companies

| Company | Signal | Qualification Reason |
|---------|--------|----------------------|
| Common Wealth | $12M CAD Series A (BetaKit, 2026-04-15). Investors: Broadbent Group, Good & Well, AgeTech Capital. CEO: Alex Mazer. | Series A fintech, Toronto. Workplace retirement plan platform for SMEs (1,500+ employer clients, 3x membership growth). User-facing financial product with pension compliance complexity. No design team mentioned — likely design capacity gap. Strong ICP fit. |
| Wamo | €10M Series A led by TCEE Fund IV / 3TS Capital Partners (FinTech Global, 2026-04-14). Founder: Yanki Önen. | Series A fintech, Helsinki (Finnish FSA licensed). SME financial operating platform (multi-currency accounts, invoicing, embedded lending). 15,000 customers, tripled YoY. UX explicitly core to value prop. No design team mentioned. Strong ICP fit. Note: European company — lower outreach priority than US-based leads. |

---

## Disqualified Companies

| Company | Reason |
|---------|--------|
| Bluefish | $43M Series B, agentic marketing platform for Fortune 500 brands. Not fintech — marketing technology. Target customers are large enterprises, not SMEs or consumers. |
| Haast | $12M Series A, AI compliance engine. Targets Fortune 500 for internal enterprise compliance automation. Not a user-facing fintech product; no financial transactions or onboarding flows. |
| Alkami | Publicly traded digital banking platform (ALKT). Established company with large design team. Far too large for ICP. |
| Raspire | YC-backed no-code runtime security platform. Cybersecurity tooling for banks/fintech — not a fintech company itself. No user-facing financial product or transactions. |
| Humanly | HR/AI hiring startup (acquired Anthill). Not fintech or financial services. |
| Anthill | Employee engagement startup, acquired by Humanly. Not fintech. |
| CUBE (RegTech) | Partnership announcement with ServiceNow. No new funding round. Established regulatory intelligence company, not a startup. (Previously seen in 2026-03-27 report.) |
| Zazu | SME neobank in Morocco. African geography (not a current outreach market). |
| Chari | Card issuance infrastructure, Morocco. African geography. |
| Credable | Fintech infrastructure, East/Southern Africa. African geography. |
| Kredete | Stablecoin-linked card payments, Africa/Gulf. African geography. |
| MoneyHash | Payment acceptance platform, MENA. Geographic mismatch. |
| Rocket Companies | Public company (RKT). Too large, established design team. |
| Kaspi.kz | Public company (KSPI). Central Asian fintech, too large. |
| UP Fintech | Public company (TIGR). Too large, established. |
| AMINA / Incore Bank / Crypto Finance | Established Swiss banking/crypto companies completing a payment pilot. Not startups, no new funding round. |

---

## Contacts Added to HubSpot

| Name | Title | Company | Email | LinkedIn | HubSpot ID |
|------|-------|---------|-------|----------|------------|
| Alex Mazer | Co-founder & CEO | Common Wealth | Manual lookup needed | Manual lookup needed | 472213380845 |
| Yanki Önen | Founder | Wamo | Manual lookup needed | Manual lookup needed | 472237528817 |

---

## Contacts Needing Manual Lookup

| Company | Contact | Target for Lookup |
|---------|---------|-------------------|
| Common Wealth | Alex Mazer (CEO) | Business email + LinkedIn URL |
| Common Wealth | Co-founder(s) / Head of Product | LinkedIn search — article only named Alex Mazer |
| Wamo | Yanki Önen (Founder) | Business email + LinkedIn URL |
| Wamo | Head of Product / CPO (if exists) | LinkedIn search — no product/design leadership named in article |

---

## Articles Unable to Fetch

| URL | Source Alert | Reason |
|-----|-------------|--------|
| https://www.bizjournals.com/jacksonville/news/2026/04/14/jax-hub-inaugural-cohort-selected.html | Fintech accelerator cohort alert | HTTP 403 Forbidden — BizJournals paywall |
| https://www.finsmes.com/2026/04/bluefish-raises-43m-in-series-b-funding.html | Series B fintech funding alert | HTTP 403 Forbidden |
| https://www.geekwire.com/2026/ai-powered-hiring-startup-humanly-acquires-anthill-to-boost-employee-engagement/ | Fintech hiring/design alert | HTTP 403 Forbidden |

---

## Alert Keyword Performance

| Alert Category | Links | Companies Found | Qualified |
|----------------|-------|-----------------|-----------|
| Series B fintech funding | 3 (same company) | Bluefish | 0 — not fintech |
| Fintech accelerator/incubator | 2 | JAX Hub cohort (unknown), Visa Africa startups | 0 — article blocked; geography mismatch |
| Top fintech / fintech to watch | 3 | Alkami (public), TechRound entry, AMINA/Incore | 0 — established/public companies |
| Fintech regulatory/compliance | 1 | CUBE | 0 — established company, no funding |
| YC / accelerator fintech | 1 | Raspire | 0 — cybersecurity, not fintech product |
| Series A fintech funding | 3 | Common Wealth, Haast, Wamo | 2 ✓ |
| Fintech product launches | 3 (same company) | Alkami | 0 — public company |
| Fintech hiring / design roles | 1 | Humanly + Anthill | 0 — not fintech |

---

## Notes

**Two strong leads found today.** Both Common Wealth and Wamo are Series A fintech companies with user-facing financial products and compliance complexity — exactly the ICP. Common Wealth is a Canadian company (slightly lower outreach priority than US-based leads but still worth pursuing). Wamo is European, which is a meaningful geographic stretch given Sarisari's current outreach channels focus on LinkedIn and warm intros.

**JAX Hub cohort remains a gap.** The BizJournals article describing three FL/CA-based fintech startups selected for an inaugural Jacksonville cohort was blocked by a paywall. These could be early-stage ICP fits. Recommend a manual visit to `bizjournals.com/jacksonville` or a web search for "JAX Hub fintech cohort 2026" to surface the company names.

**Apollo MCP still not connected.** Both new contacts were added without verified emails or LinkedIn URLs. Without Apollo, enrichment requires manual research. This is the highest-priority infrastructure gap in the pipeline — each day without Apollo means contacts enter HubSpot as partial records that require follow-up effort.

**Series A alert is the signal engine.** The "series A AND fintech" alert produced both qualified leads today. The Series B alert (Bluefish) and product launch alert (Alkami) both produced noise. Consider tightening the Series B alert to require `("fintech" OR "payments" OR "neobank" OR "lending" OR "insurtech")` rather than the broader `"financial services"` term.

**Fintech hiring alert misfired.** The hiring alert triggered on Humanly (an HR startup acquiring another HR startup) — the word "designer" appeared in the journalist's bio, not in a job posting. The alert query may benefit from tightening to require `"design role" OR "UX designer" OR "product designer"` rather than the standalone `"designer"` term.
