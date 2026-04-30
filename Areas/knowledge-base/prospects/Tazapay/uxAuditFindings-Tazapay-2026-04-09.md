# UX Audit Report — Tazapay

**URL:** https://tazapay.com
**Audit Date:** 2026-04-09

> **Note:** tazapay.com returned HTTP 403 when fetched programmatically during this session (likely bot/WAF protection). This audit is based on publicly indexed search result metadata and cannot include finding-level DOM citations. All findings below should be treated as directional and confirmed with a manual review.

## Business Model Profile

- **Industry:** Cross-border payments / fintech infrastructure
- **Company Stage:** Growth (Series A, $16.9M raised, Sequoia-backed)
- **Core Product:** Cross-border payment platform — checkout, payment links, escrow, 80+ local payment methods, 173+ card markets, 35+ currencies, stablecoin (USDC/USDT) settlement
- **Objective:** Win cross-border payment volume from global merchants, SaaS platforms, marketplaces, and fintechs
- **Primary Conversion Goal:** Demo request / sales contact; secondary: self-serve onboarding
- **Core Persona:** Heads of Payments, CFOs, and founders at mid-market SaaS, e-commerce, and marketplace businesses with cross-border volume
- **Customer Type:** B2B (mid-market + enterprise)
- **Business Model:** SaaS + transaction fee
- **GTM:** Hybrid (sales-led enterprise, self-serve SMB)
- **Competitors:** Airwallex, Wise Business, Nium, Stripe (cross-border), PayPal Xoom

### Evaluation Priorities
1. CRO (multi-segment conversion paths)
2. Content Hierarchy & Copywriting (complex product offering needs simplification)
3. IA (multi-product, multi-vertical)
4. Trust / Social Proof (cross-border money movement = trust-heavy)
5. Accessibility
6. Visual Design
7. SEO & Performance (flagged — cannot evaluate this session)

### Evaluation Lens
Tazapay sells into Heads of Payments evaluating cross-border infrastructure against Airwallex, Wise, and Stripe. Buyers compare fee structures, coverage, compliance posture, and integration complexity side-by-side. The site's job is to answer "what's unique about you?" in a category where feature parity is the norm.

### Why This Matters
Cross-border payments is a trust-heavy, compliance-gated category. Every moment a Head of Payments spends trying to understand Tazapay's differentiation is a moment they're not on their competitor's page — and the switching cost for a mid-market payments integration is significant. Clarity directly shortens the sales cycle and raises close rates.

---

## Methodology

This audit evaluates tazapay.com based on publicly available search metadata and company information (direct fetch blocked by WAF). 7 findings documented across 4 dimensions; full DOM/performance/SEO scan requires manual review.

---

# Friction or Pain Points

## 1. Conversion Rate Optimization (Inferred)

### F1.1 — Homepage fetch blocked to bots/crawlers (HTTP 403)
- **Observation:** tazapay.com returns HTTP 403 to non-browser fetch requests, indicating Cloudflare or similar WAF protection that blocks automated user agents.
- **Why it's a problem:** SEO-12 (Page Indexability) and accessibility of content to AI crawlers. While protecting against abuse, overly aggressive bot blocking can reduce visibility in AI search tools (Perplexity, ChatGPT Search, Gemini) which are becoming meaningful referral sources for B2B payments research. It may also block legitimate SEO crawling tools.
- **Severity:** Minor (intentional tradeoff) — worth reviewing the WAF rules to ensure they whitelist major AI crawlers (GPTBot, PerplexityBot, etc.) if AI visibility is desired.
- **Recommendation:** Review Cloudflare bot rules. Whitelist AI search bots if Tazapay wants to appear in Perplexity/ChatGPT Search results. Balance against bot abuse concerns.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High (observed)

### F1.2 — Multi-persona / multi-product site likely dilutes primary CTA
- **Observation:** Tazapay serves e-commerce, SaaS platforms, marketplaces, and fintechs across checkout, payment gateway, escrow, stablecoins, and payouts. Sites with this many product × persona permutations frequently dilute conversion paths.
- **Why it's a problem:** CRO-04 (Engagement Path Variety) — without explicit persona routing, every visitor sees the same generic homepage message, reducing relevance for all.
- **Severity:** Cannot fully evaluate without direct access
- **Recommendation:** During manual review, check whether the homepage routes visitors to persona-specific pages (e-commerce / SaaS / marketplace / fintech) with tailored CTAs.
- **Effort:** Cannot evaluate | **Impact:** Cannot evaluate

## 2. Content Hierarchy & Copywriting (Inferred)

### F2.1 — Fee structure is a competitive differentiator and should be surfaced prominently
- **Observation:** Public information indicates Tazapay's fee structure starts at 0% for local bank transfers, 1.8% for non-card, 3% for cards — notably more transparent than most competitors who bury pricing behind "talk to sales."
- **Why it's a problem:** COPY-08 (Proof & Credibility) — in payments, published pricing is a trust signal and a clear differentiator against Airwallex/Nium, which obscure fees. This is a defensible claim that should be front-of-site.
- **Severity:** Major (if pricing is not hero-level on the site)
- **Recommendation:** If not already present, surface "Transparent pricing — 0% local bank, 1.8% non-card, 3% cards" as a hero-level claim or in the first 2 content blocks. Link to a full pricing page from the nav.
- **Effort:** Low | **Impact:** High | **Confidence:** Medium (needs visual confirmation)

### F2.2 — 85+ market / 173+ card market / 35+ currency stats are credibility assets
- **Observation:** Tazapay's coverage stats (85+ markets, 173+ card markets, 35+ currencies, 100+ payout currencies, same-day settlement) are specific, verifiable, and differentiated. These are hero-level credibility claims.
- **Why it's a problem:** CRO-05 (Value Proposition Clarity) — specific numerical claims are far more memorable and defensible than generic "global payments" messaging.
- **Severity:** Major (if buried mid-page)
- **Recommendation:** Use these numbers in the hero or immediately below. Example headline direction: "Cross-border payments in 85+ markets, 35+ currencies, same-day settlement."
- **Effort:** Low | **Impact:** High | **Confidence:** Medium

## 3. Trust Signals & Credibility (Inferred)

### F3.1 — Sequoia investor signal is underleveraged in cross-border category
- **Observation:** Tazapay is Sequoia-backed with PayPal Alumni Fund participation. In a trust-heavy payments category, investor quality is a direct credibility input.
- **Why it's a problem:** CRO-06 (Trust Signal Placement) — Sequoia's brand carries significant weight with enterprise payments buyers. If it's not visible above the fold or in a "backed by" strip, it's underused.
- **Severity:** Minor
- **Recommendation:** Place a "Backed by Sequoia, PayPal Alumni Fund" strip near the hero or in the customer-logos section. For cross-border fintechs, investor quality is vetting proof.
- **Effort:** Low | **Impact:** Medium | **Confidence:** Medium

### F3.2 — Compliance/licensing posture should be prominent (MSB, FINTRAC mentions)
- **Observation:** Tazapay's stablecoin services are provided via Tazapay Canada Corp., an MSB registered with FINTRAC-CANAFE. Compliance posture matters enormously in cross-border.
- **Why it's a problem:** For payments buyers, regulatory status is a hard filter. If buyers can't quickly confirm licensing in their target markets, they disqualify.
- **Severity:** Minor
- **Recommendation:** Add a dedicated "Compliance & Licensing" page (or footer section) listing all regulatory registrations, audits (SOC 2, PCI-DSS if applicable), and data processing details. Link prominently from nav.
- **Effort:** Medium | **Impact:** Medium

## 4. Accessibility, SEO, Performance
- **Cannot evaluate this session** — direct fetch blocked. Recommend manual review with browser + axe-core + PageSpeed.

## 5. Next Steps for Complete Audit
A full audit requires direct browser access (which the Sari Sari Design team can perform interactively) to validate:
- Hero copy and above-the-fold messaging
- Actual CTA placement and count
- DOM-level SEO (title, meta, schema, canonical)
- axe-core accessibility scan
- PageSpeed Insights (mobile and desktop)
- Screenshot of key findings

---

*7 findings documented (mostly inferred — flagged for manual confirmation). Top 5 selected for published report.*
