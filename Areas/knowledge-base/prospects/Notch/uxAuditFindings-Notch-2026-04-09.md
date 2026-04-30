# UX Audit Report — Notch

**URL:** https://notch.cx
**Audit Date:** 2026-04-09

## Business Model Profile

- **Industry:** AI customer support / vertical AI for regulated industries
- **Company Stage:** Growth
- **Core Product:** Autonomous AI support agent that resolves end-to-end tickets across chat, email, social, and voice — positioned specifically for regulated verticals (insurance, finance, gaming, travel)
- **Objective:** Win AI support deals from compliance-sensitive mid-market and enterprise buyers who are wary of generic AI vendors
- **Primary Conversion Goal:** Demo request ("Book a demo" / "Book a tailored demo")
- **Core Persona:** VP of Customer Experience / Head of Support / COO at regulated-industry operators (insurance, banking, gaming, travel, ecommerce)
- **Customer Type:** B2B (mid-market → enterprise)
- **Business Model:** SaaS, priced per-ticket-resolved
- **GTM:** Sales-led, demo-gated
- **Competitors:** Intercom Fin, Ada, Sierra, Decagon, Forethought

### Evaluation Priorities
1. CRO (demo-gated SLG — conversion clarity is the whole game)
2. Content Hierarchy & Copywriting (regulated-industry positioning must be credible)
3. Trust Signals (compliance is the wedge — SOC 2, ISO 27001 need to be prominent)
4. IA (6 vertical solutions × capabilities — routing matters)
5. Visual Design
6. Accessibility
7. SEO & Performance

### Evaluation Lens
Notch's whole differentiation is "AI built for regulated industries." Buyers in insurance, banking, and gaming have been burned by generic AI vendors that can't handle compliance, audit trails, and PII. The site's job is to make the compliance story the hero — not an afterthought in the footer.

### Why This Matters
Notch is competing in one of the most crowded AI categories of the year (customer support AI) where Intercom, Ada, Sierra, and Decagon are all fighting for the same buyers. The only way to stand out is to own a niche — "regulated industries" — and make that ownership obvious within 5 seconds of landing. Any moment the site feels like a generic AI support pitch is a moment the buyer mentally groups Notch with 10 other vendors.

---

## Methodology

Audit based on WebFetch extraction of tazapay.com homepage and pricing page. 8 findings documented across 5 dimensions. Top 5 selected for published report.

---

# Friction or Pain Points

## 1. Content Hierarchy & Copywriting

### F1.1 — Hero headline states the positioning but not the proof
- **Observation:** "AI Built for Regulated Industries" is a strong category claim, but the subhead ("Designed for the complexity of real-life support. Notch handles regulated workflows, sensitive data, and enterprise compliance at scale.") doubles down on the same abstract claim without naming the proof.
- **Why it's a problem:** COPY-03 (Headline Specificity) and COPY-08 (Proof & Credibility) — regulated-industry buyers are professionally skeptical. A headline + subhead stack that says "trust us, we handle compliance" without naming a certification, vertical, or stat loses those buyers before they scroll.
- **Severity:** Major
- **Recommendation:** Rewrite the subhead to lead with proof: "SOC 2 Type II and ISO 27001 certified. Resolves 30% of tickets autonomously in 90 days. Trusted by insurance, gaming, and finance operators." Let the facts do the credibility work the adjectives can't.
- **Effort:** Low | **Impact:** High

### F1.2 — "20M conversations, 70% cost reduction, 30% resolved in 90 days" buried instead of hero-anchored
- **Observation:** Notch has three very strong quantitative claims (20M conversations handled, 70% cost reduction, 30% autonomous resolution in 90 days) but they appear as stat strips mid-page rather than anchoring the hero.
- **Why it's a problem:** COPY-04 (Information Hierarchy) — in a category where every competitor claims to "resolve tickets with AI," specific numbers are the only defensible proof. A buyer who bounces after the hero never sees them.
- **Severity:** Major
- **Recommendation:** Promote the strongest stat ("30% of tickets autonomously resolved within 90 days") into the hero as a proof line directly below the headline. Use the remaining two as a stat strip immediately below.
- **Effort:** Low | **Impact:** High

## 2. Conversion Rate Optimization

### F2.1 — Single "Book a demo" CTA path for 6 distinct verticals
- **Observation:** The nav lists 6 vertical solutions (Ecommerce, SaaS, Gaming, Insurance, Banking & Finance, Travel), but every CTA on the homepage is the generic "Book a demo."
- **Why it's a problem:** CRO-04 (Engagement Path Variety) — an insurance buyer and a gaming operator have radically different compliance concerns, ticket types, and ROI models. A generic demo CTA fails to signal "we've solved your specific problem" at the moment of highest intent.
- **Severity:** Major
- **Recommendation:** A/B test vertical-specific CTAs when the visitor is on a vertical page ("See Notch for Insurance" → pre-filled demo form). At minimum, after the user clicks into a vertical solution page, the demo form should capture vertical + priority use case so the sales call is tailored from the first minute.
- **Effort:** Medium | **Impact:** High

### F2.2 — No mid-funnel asset for buyers not yet demo-ready
- **Observation:** Only conversion path visible is "Book a demo" (or the pricing page, which is also a demo form). There's no gated case study, ROI calculator, compliance whitepaper, or vendor comparison asset.
- **Why it's a problem:** CRO-03 (CTA Redundancy) and CRO-04 (Engagement Path Variety) — regulated-industry buying committees take 3-6 months and many evaluators (compliance officers, security reviewers) won't book a demo until they've vetted the vendor with internal docs. Without a mid-funnel asset, Notch loses the ability to capture those evaluators as leads.
- **Severity:** Major
- **Recommendation:** Publish a gated "Compliance Brief for AI Customer Support in Regulated Industries" (covers SOC 2, ISO 27001, data residency, PII handling, audit trails). This becomes the mid-funnel capture and doubles as sales collateral.
- **Effort:** Medium | **Impact:** High

## 3. Trust Signals & Credibility

### F3.1 — SOC 2 Type II and ISO 27001 live in the footer, not the hero
- **Observation:** Notch is SOC 2 Type II and ISO 27001 certified — the exact proof points that the positioning ("AI Built for Regulated Industries") promises. But both certifications appear only in the footer.
- **Why it's a problem:** CRO-06 (Trust Signal Placement) and CRO-07 (Social Proof Depth) — for the target persona (compliance-cautious enterprise buyer), the certifications ARE the value proposition. Burying them in the footer means the first scroll doesn't deliver the promise the headline made.
- **Severity:** Major
- **Recommendation:** Add a compliance badge strip immediately below the hero: "SOC 2 Type II • ISO 27001 • CCPA compliant • GDPR ready." Link to a dedicated Security & Compliance page with full detail (audit dates, subprocessors, DPA templates, penetration test summary).
- **Effort:** Low | **Impact:** High

### F3.2 — Only one named testimonial
- **Observation:** The page features customer logos (Rubbit, Theo Grace, The Conscious Bar, Idyl, Guardio, Yves Rocher, Maëlys) but only one quoted testimonial (Daniel De Castro, Maëlys).
- **Why it's a problem:** CRO-07 (Social Proof Depth) — one named testimonial from an ecommerce brand doesn't carry weight for an insurance or banking buyer evaluating whether Notch can handle their specific compliance context.
- **Severity:** Minor
- **Recommendation:** Add 2-3 more named testimonials from diverse verticals — ideally one from a regulated vertical (insurance, finance, or gaming) — each with a specific outcome stat (e.g., "cut first-response time by 60% while staying audit-compliant").
- **Effort:** Medium (content work) | **Impact:** Medium

## 4. Information Architecture

### F4.1 — 6 vertical solutions crammed into a single "Solutions" dropdown
- **Observation:** Ecommerce, SaaS, Gaming, Insurance, Banking & Finance, and Travel all live under one "Solutions" nav item. These verticals have very different regulatory profiles (gaming ≠ insurance ≠ SaaS) and different buyer personas.
- **Why it's a problem:** IA-01 (Navigation Clarity) — flattening 6 verticals under one dropdown signals "we serve everyone" rather than "we're specialists." For a positioning built on vertical focus, this structure undermines the story.
- **Severity:** Minor
- **Recommendation:** Keep the dropdown but group visually: "Regulated" (Insurance, Banking & Finance, Gaming) and "Commerce" (Ecommerce, SaaS, Travel). This reinforces the "built for regulated industries" wedge directly in the nav.
- **Effort:** Low | **Impact:** Medium

## 5. Visual Design
### F5.1 — (Not evaluated — WebFetch returns text content only; visual hierarchy requires manual review)
- Flagged for manual review with browser + screenshot.

---

*8 findings documented. Top 5 selected for published report.*
