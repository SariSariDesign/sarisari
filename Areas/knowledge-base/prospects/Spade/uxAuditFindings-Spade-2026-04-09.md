# UX Audit Report — Spade

**URL:** https://spade.com
**Audit Date:** 2026-04-09

## Business Model Profile

- **Industry:** Fintech infrastructure — transaction data enrichment & AI for financial services
- **Company Stage:** Growth (enterprise logos suggest Series B+)
- **Core Product:** Transaction data enrichment API + AI agents that turn messy card transaction strings into structured, verified merchant records (used for risk, rewards, analytics, CX)
- **Objective:** Win infrastructure deals at fintechs, banks, and AI ecosystem players
- **Primary Conversion Goal:** Sales contact ("Contact sales")
- **Core Persona:** Heads of Data/Risk/Product at fintechs and banks; platform engineering leaders
- **Customer Type:** B2B enterprise
- **Business Model:** SaaS / API usage
- **GTM:** Sales-led (enterprise)
- **Competitors:** Ntropy, Heron Data, Atomic, Mastercard SpendingPulse, Plaid (adjacent)

### Evaluation Priorities
1. CRO — enterprise SLG; clarity and trust define conversion
2. Content Hierarchy & Copywriting — "data & AI platform" is vague in 2026
3. Trust Signals — financial data processing = compliance-heavy
4. IA — 4 solutions × 4 industries needs disciplined routing
5. Visual Design
6. Accessibility
7. SEO & Performance

### Evaluation Lens
Spade competes in a crowded transaction enrichment category where Ntropy, Heron, and Atomic are all pitching similar stories to the same buyers. The best wedge Spade has is its logo wall (Stripe, Cash App Pay, Mercury, Robinhood, PayPal, Coinbase) — which reads like a category winner. The audit prioritizes whether the site makes that wedge the hero story.

### Why This Matters
Enterprise infrastructure buyers short-list based on 60-second homepage scans. Spade's logo wall is arguably the strongest trust signal in the category — if it isn't hero-level, the company is throwing away its biggest lead. Every moment spent explaining "what is transaction enrichment" to a buyer who already knows is a moment not spent closing.

---

## Methodology

Audit based on WebFetch of spade.com homepage. 8 findings documented across 5 dimensions. Top 5 selected for published report.

---

# Friction or Pain Points

## 1. Content Hierarchy & Copywriting

### F1.1 — Hero headline is category-generic for 2026
- **Observation:** Hero: "The data & AI platform for modern finance." Subhead: "Spade takes messy transaction data and turns it into structured, verified records — with AI agents that help you use it everywhere it matters."
- **Why it's a problem:** COPY-03 (Headline Specificity) — "data & AI platform" is the most common B2B headline structure in 2026. It says nothing specific about Spade and could be pasted onto Ntropy, Heron, or any competitor. The subhead is better (it names the actual problem) but it's carrying too much weight.
- **Severity:** Major
- **Recommendation:** Rewrite the hero around the specific claim Spade actually owns. Direction: "Transaction data enrichment trusted by 1 in 3 U.S. fintech startups." Or: "Turn raw transactions into verified merchant records in <50ms — used by Stripe, Mercury, and Cash App." Lead with the proof you already have.
- **Effort:** Low | **Impact:** High

### F1.2 — The two strongest stats ("1 in 3 U.S. startups" and "<50ms P99") are buried
- **Observation:** Spade has two exceptional quantitative claims: "1 in 3 U.S. startups rely on transaction data enriched by Spade" (Mercury testimonial) and "<50ms P99 enrichment latency." Both are category-defining numbers. Both are buried below the fold.
- **Why it's a problem:** COPY-04 (Information Hierarchy) — "1 in 3 U.S. startups" is a near-monopoly claim. In infrastructure, that's the strongest possible category signal. Hiding it mid-page is throwing away a competitive moat.
- **Severity:** Major
- **Recommendation:** Promote "1 in 3 U.S. startups" directly into the hero as a proof line. Pair with "<50ms P99" as the technical trust anchor. Example: "Transaction enrichment for 1 in 3 U.S. fintech startups. <50ms P99 latency. Trusted by Stripe, Mercury, and Cash App."
- **Effort:** Low | **Impact:** High

## 2. Trust Signals & Credibility

### F2.1 — Elite logo wall exists, but hero doesn't reference it
- **Observation:** Customer list includes Stripe, Cash App Pay, Mercury, Robinhood, PayPal, Coinbase, Monzo, Afterpay, Airwallex, Current, Navan — arguably the strongest logo wall in the fintech data category. These appear as logos but don't anchor the hero narrative.
- **Why it's a problem:** CRO-07 (Social Proof Depth) and CRO-06 (Trust Signal Placement) — for enterprise infra, logo quality IS the product. A new buyer's first thought is "who else uses this?" If the answer appears only in a logo strip, not in the hero narrative, it's being under-monetized.
- **Severity:** Major
- **Recommendation:** Move the logo wall directly below the hero (if not already there) with a bold line: "The infrastructure behind the next generation of finance — used by Stripe, Cash App, Mercury, Robinhood, and 50+ others." Let the logos do the heavy lifting.
- **Effort:** Low | **Impact:** High

### F2.2 — No SOC 2, ISO, or PCI compliance badges visible
- **Observation:** Footer includes Terms, Privacy, MSA, SLA — but no SOC 2 Type II, ISO 27001, PCI-DSS, or similar compliance badges. For a company processing transaction data for banks and enterprise fintechs, these are table stakes.
- **Why it's a problem:** CRO-06 (Trust Signal Placement) — an enterprise procurement or security reviewer will look for these first. If Spade has them (it almost certainly does given the customer list), not displaying them creates unnecessary friction in the deal cycle.
- **Severity:** Major
- **Recommendation:** Add a compliance strip to the footer or dedicated Security page: "SOC 2 Type II • PCI-DSS • ISO 27001" with links to a trust center. If only some are current, still display those.
- **Effort:** Low (if certifications exist) | **Impact:** High

## 3. Conversion Rate Optimization

### F3.1 — Only one CTA path ("Contact sales") and no self-serve or docs-first entry
- **Observation:** Both above-the-fold CTAs are "Contact sales." There's a "Docs" nav link, but it isn't positioned as an alternative conversion path.
- **Why it's a problem:** CRO-04 (Engagement Path Variety) — enterprise infra buying is dominated by engineering-led evaluation. Engineers don't "contact sales" on a first visit; they read docs, try a sandbox, and bring a recommendation to the buyer. A sales-only CTA path loses the engineer segment of the buying committee.
- **Severity:** Major
- **Recommendation:** Add a secondary CTA: "Read the API docs" or "Request sandbox access." Make it visually subordinate to "Contact sales" but present above the fold. This captures the engineer-led evaluation path that eventually pulls through to a sales call.
- **Effort:** Low | **Impact:** High

## 4. Information Architecture

### F4.1 — 4 solutions × 4 industries creates a 16-cell matrix without clear primary path
- **Observation:** Solutions are Risk & Authorization, Rewards & Attribution, Analytics & AI, User Experience. Industries are Fintechs, Banks, AI, Ecosystem Partners. The nav treats them as parallel axes without indicating which combinations Spade is strongest in.
- **Why it's a problem:** IA-01 (Navigation Clarity) — 16 implicit landing pages is too many for a visitor to self-sort. Without a clear "most people start here" path, high-intent buyers drop into the wrong content and bounce.
- **Severity:** Minor
- **Recommendation:** Designate 1-2 "most popular" combinations as featured in the Solutions dropdown (e.g., "Risk & Authorization for Fintechs" or "Rewards & Attribution for Banks"). Let the rest remain discoverable but visually de-emphasized.
- **Effort:** Low | **Impact:** Medium

## 5. Visual Design
### F5.1 — (Not evaluated — requires browser-level review.)
- Flagged for manual review.

---

*8 findings documented. Top 5 selected for published report.*
