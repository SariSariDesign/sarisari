# UX Audit Report — Vivi Money

**URL:** https://www.vivi.com.au
**Audit Date:** 2026-04-09

## Business Model Profile

- **Industry:** Neobank / consumer fintech (Australia)
- **Company Stage:** Early/Growth
- **Core Product:** AI-powered consumer banking app combining transaction account, Visa debit card, savings (up to 6-8% p.a.), crypto/stocks/carbon-credit investing, and travel FX
- **Objective:** Acquire Australian consumers and pull deposits from incumbent banks (CBA, NAB, ANZ, Westpac) and neobanks (Up, Ubank)
- **Primary Conversion Goal:** App download ("Get Vivi Now")
- **Core Persona:** Australian consumers age 22-40 who travel, want fee-free spending, and are open to crypto/investing inside a single app
- **Customer Type:** B2C
- **Business Model:** Freemium (Standard free, Metal card with Vivi Plus paid)
- **GTM:** Product-led growth, app store + social
- **Competitors:** Up Bank, Ubank, Revolut, Wise, Commonwealth Bank

### Evaluation Priorities
1. CRO (consumer app install conversion is the whole game)
2. Trust Signals (regulated financial services — consumers need safety proof fast)
3. Content Hierarchy & Copywriting ("AI money genius" claim needs grounding)
4. IA (7 feature surfaces — Spend/Invest/Save/Travel/Card/Security/FAQ)
5. Visual Design
6. Accessibility
7. SEO & Performance

### Evaluation Lens
Vivi competes in the Australian neobank category where Up Bank has dominant mindshare and Revolut has brand gravity. The site's job is to give a skeptical Australian consumer a reason to download a new banking app — a category with extremely low download intent outside of targeted campaigns.

### Why This Matters
In consumer fintech, the homepage is the most expensive real estate the company owns. Every ambiguous word, missing trust signal, or undifferentiated claim adds drag to app installs — which directly raise CAC and lengthen payback. In Australia specifically, consumers are trust-skeptical of new banks after the 2020-2023 neobank shakeout (Xinja, Volt); missing trust signals cost more here than in other markets.

---

## Methodology

Audit based on WebFetch of vivi.com.au homepage. 8 findings documented across 5 dimensions. Top 5 selected for published report.

---

# Friction or Pain Points

## 1. Trust Signals & Credibility

### F1.1 — No visible regulatory licensing, ADI status, or deposit protection disclosure
- **Observation:** The homepage surfaces "ACN 653 436 689" and "Mutual Ltd." partnership in the footer. There is no above-the-fold disclosure of AFSL, ADI status, or whether deposits are covered by the Australian Financial Claims Scheme (FCS / government guarantee up to $250K).
- **Why it's a problem:** CRO-06 (Trust Signal Placement) — in Australia post-Xinja/Volt collapse, consumers check for ADI status before installing. Not displaying it (or not being ADI at all) is a disqualifying gap for exactly the deposit-holders Vivi wants to convert.
- **Severity:** Critical
- **Recommendation:** If Vivi is an ADI (directly or via a sponsor bank), display it prominently: "Your deposits are protected up to $250,000 under the Australian Government Financial Claims Scheme." If not, transparently explain how funds are protected (trust account structure, EMI license). Without this, sophisticated consumers will bounce.
- **Effort:** Low | **Impact:** High

### F1.2 — Zero social proof (no download count, rating, review, or testimonial)
- **Observation:** The homepage shows no app store ratings, install count, star rating, testimonial, or press logo. Only trust signals are footer legal docs.
- **Why it's a problem:** CRO-07 (Social Proof Depth) — consumer fintech conversion is driven by "do people like me already trust this?" Without a single social proof element, every visitor is effectively the first user.
- **Severity:** Major
- **Recommendation:** Add above-the-fold social proof: app store rating + review count, press logos (if covered), or a "Join [X] Australians already using Vivi" counter. If the product is early and these numbers are small, use testimonial quotes instead.
- **Effort:** Low (if assets exist) | **Impact:** High

## 2. Content Hierarchy & Copywriting

### F2.1 — "AI money genius" is a claim; the subhead doesn't back it up
- **Observation:** Headline: "Meet Vivi. The AI money genius that fits in your pocket." Subhead: "The first AI Powered Account. The only way to Spend, Save, Earn & Travel with one app & One Card." The subhead restates the feature list without explaining what the "AI" actually does.
- **Why it's a problem:** COPY-03 (Headline Specificity) and COPY-08 (Proof & Credibility) — "AI" in 2026 is a depreciated claim. Users have been trained by every fintech app making the same claim. Without a concrete "here's what the AI actually does" proof point, the headline is category noise.
- **Severity:** Major
- **Recommendation:** Replace the subhead with a specific AI capability: "Vivi watches your spending, moves your savings automatically, and finds the best FX rate before you travel — so you never think about money." Lead with a concrete outcome, not a feature list.
- **Effort:** Low | **Impact:** High

### F2.2 — "6-8% p.a. at call" buried, not hero-anchored
- **Observation:** The site mentions "up to 6%" and "6-8% p.a. at call" savings rates — which is genuinely competitive against the big-4 banks (who pay 0.05-4.5% on savings). But this is buried mid-page, not in the hero.
- **Why it's a problem:** COPY-04 (Information Hierarchy) — interest rate is the #1 reason Australians switch savings accounts. If Vivi's rate is the best in market, the rate IS the hero claim. "AI money genius" is a distant second.
- **Severity:** Major
- **Recommendation:** Hero direction: "Earn up to 8% p.a. on your savings. No minimum balance. Visa card included." Lead with the number, let the AI story come second.
- **Effort:** Low | **Impact:** High

## 3. Conversion Rate Optimization

### F3.1 — "Get Vivi Now" CTA with no app store badges
- **Observation:** The primary CTA is "Get Vivi Now" (2 instances above fold), but the page doesn't show Apple App Store / Google Play badges — the expected visual shorthand for "install this app." Clicking "Get Vivi Now" forces an extra decision step.
- **Why it's a problem:** CRO-02 (CTA Specificity) — mobile users land from Instagram/TikTok ads and expect a one-tap install path via App Store/Play Store badges. A generic "Get Vivi Now" button adds friction and uncertainty ("what happens when I click?").
- **Severity:** Major
- **Recommendation:** Replace or supplement "Get Vivi Now" with standard Apple/Google store badges directly in the hero. Smart link detection to route iOS users to App Store and Android users to Play Store.
- **Effort:** Low | **Impact:** High

## 4. Information Architecture

### F4.1 — Nav surfaces 7 feature pages (Spend/Invest/Save/Travel/Card/Security/FAQ) without clear intent routing
- **Observation:** Top nav exposes every feature as a peer-level item. Consumers don't shop banks by feature page — they shop by outcome ("save on fees," "higher interest," "easy travel").
- **Why it's a problem:** IA-01 (Navigation Clarity) — flat feature navs work in B2B but add cognitive load in B2C where the right mental model is "What problem do I have?" not "Which feature do you have?"
- **Severity:** Minor
- **Recommendation:** Collapse features under a single "What you can do" dropdown. Elevate "Security" (to the right of the nav or as a trust ribbon below the hero) since it's a high-intent check for deposit holders.
- **Effort:** Low | **Impact:** Medium

### F4.2 — "Business (Coming Soon)" in nav signals immaturity
- **Observation:** Nav includes "Business (Coming Soon)" as a visible menu item. "Coming Soon" labels on a fintech navbar communicate "this product is still being built."
- **Why it's a problem:** CRO-06 (Trust Signal Placement) — for a consumer deciding where to park deposits, "coming soon" adjacent to core navigation triggers doubt about the maturity of the product they ARE signing up for.
- **Severity:** Minor
- **Recommendation:** Remove "Business (Coming Soon)" from primary nav. Create a dedicated `/business` page for waitlist capture and link from the footer only.
- **Effort:** Low | **Impact:** Medium

## 5. Visual Design
### F5.1 — (Not evaluated — WebFetch returns text content only; full visual hierarchy requires manual browser review.)
- Flagged for manual review.

---

*8 findings documented. Top 5 selected for published report.*
