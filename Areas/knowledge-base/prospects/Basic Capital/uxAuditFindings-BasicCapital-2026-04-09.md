# UX Audit Report — Basic Capital

**URL:** https://basiccapital.com
**Audit Date:** 2026-04-09

## Business Model Profile

- **Industry:** Fintech — Retirement / 401(k) infrastructure
- **Company Stage:** Early/Growth (likely Series A)
- **Core Product:** AI-powered 401(k) platform with real-time compliance, 6,000+ fund options, and a novel "Retirement Mortgage" leverage product
- **Objective:** Win 401(k) plan sponsorships from fast-growing employers; differentiate against Human Interest, Guideline, Vestwell
- **Primary Conversion Goal:** Demo request ("Talk to our team" / "See it in action")
- **Core Personas:** CEO/CFO at fast-growing startups (10–500 employees); HR leaders; financial advisors
- **Customer Type:** B2B (SMB → mid-market)
- **Business Model:** SaaS (per-employee pricing)
- **GTM:** SLG with some self-serve elements
- **Competitors:** Human Interest, Guideline, Vestwell, Employee Fiduciary

### Evaluation Priorities
1. CRO — enterprise SLG demands demo-request clarity
2. Content Hierarchy & Copywriting — novel product (Retirement Mortgage) needs plain-language framing
3. IA — 3 distinct personas (Employers, Employees, Advisors) need clear routing
4. Visual & Brand Design — fintech credibility signaling to CFOs
5. Accessibility — compliance industry = compliance expectations
6. SEO, Nielsen, Performance

### Evaluation Lens
Basic Capital sells into CFOs and founders who have an existing 401(k) solution and need a credible reason to switch. The audit prioritizes how clearly the site justifies a switch and whether its novel product (Retirement Mortgage) is explained in a way that doesn't alienate compliance-cautious buyers.

### Why This Matters
For an early-stage retirement fintech, every demo request is expensive to generate — paid search on 401(k) keywords is brutal. Friction on the marketing site directly lengthens payback periods and burns capital. A confusing hero or novel-feature explanation that scares away conservative CFOs is an avoidable tax on growth.

---

## Methodology

This audit evaluates basiccapital.com against 8 UX dimensions using Sari Sari Design's reference checklist, prioritized for a B2B SLG motion in the retirement fintech category. Performance data was rate-limited this session and flagged as Cannot Evaluate.

---

# Friction or Pain Points

## 1. Content Hierarchy & Copywriting

### F1.1 — Hero headline describes a feature, not the switch-reason
- **Observation:** "The 401(k) that gives you instant insights and data" — this describes a product capability, not a buyer outcome. A CFO evaluating whether to switch from Guideline doesn't wake up wanting "instant insights" — they want lower fees, less liability, or a happier workforce.
- **Why it's a problem:** COPY-02 (Benefit-led vs. Feature-led) and COPY-03 (Headline Specificity) — the hero fails to answer "why switch?" in the 5 seconds it has. Competitors like Human Interest lead with "Affordable 401(k) for growing businesses" — a benefit and a buyer fit in one line.
- **Severity:** Major
- **Recommendation:** Rewrite the hero around the switch-reason. Options: "The 401(k) plan that eliminates compliance risk" or "The 401(k) plan that pays for itself through Retirement Mortgage returns." Lead with the outcome CFOs buy, not the feature that delivers it.
- **Effort:** Low | **Impact:** High

### F1.2 — "Retirement Mortgage" is the most differentiated feature but explained through an abstract $400/$100 ratio
- **Observation:** The Retirement Mortgage — a novel leverage product for retirement investing — is the single most differentiated thing on the site. It's explained with an abstract visual ratio ($400/$100) that doesn't translate into a buyer outcome.
- **Why it's a problem:** COPY-07 (Jargon & Readability) and COPY-08 (Proof & Credibility) — a novel financial product needs plain-language framing, especially when the audience is compliance-cautious fiduciaries. Abstract ratios without context can read as "too good to be true," which triggers caution in exactly the buyers Basic Capital needs to win.
- **Severity:** Major
- **Recommendation:** Reframe Retirement Mortgage around a concrete employee outcome: "Your employees retire with 3x more savings — here's the math." Include a named customer example, a compliance sign-off quote, and a 1-paragraph risk disclosure. Build trust before pitching the mechanism.
- **Effort:** Medium | **Impact:** High

## 2. Conversion Rate Optimization

### F2.1 — Three personas, one CTA path
- **Observation:** The nav includes "For Employers," "For Employees," and "For Advisors" — three distinct audiences with very different intents. Yet the CTA path is the same ("Talk to our team" / "See it in action") for all three.
- **Why it's a problem:** CRO-04 (Engagement Path Variety) — an employee landing here wants to check their balance or learn features. An advisor wants a partner program. An employer wants pricing and compliance confidence. A single CTA creates the wrong experience for 2 of 3 audiences.
- **Severity:** Major
- **Recommendation:** Route each persona to a persona-specific landing page with a relevant primary CTA: Employers → "See pricing" or "Book a demo"; Employees → "Log in" or "Learn about my 401(k)"; Advisors → "Join the partner program."
- **Effort:** Medium | **Impact:** High

### F2.2 — "See it in action" repeated without differentiation
- **Observation:** The CTA "See it in action" appears twice on the page and leads to the same destination. No mid-funnel CTA exists for visitors not yet ready for a demo.
- **Why it's a problem:** CRO-03 (CTA Redundancy) — repeated identical CTAs waste real estate that could be used for mid-funnel capture (gated comparison to Guideline/Human Interest, an ROI calculator, a compliance checklist).
- **Severity:** Minor
- **Recommendation:** Keep one "See it in action" as the primary CTA. Replace the second with a mid-funnel asset — "Compare us to Guideline" or "Download the 2026 401(k) compliance checklist."
- **Effort:** Low | **Impact:** Medium

## 3. Visual & Brand Design

### F3.1 — Information density reduces scannability
- **Observation:** Multiple sections pack several feature claims into close proximity without dominant visual anchors. A CFO scanning for 10 seconds can't tell which section is most important.
- **Why it's a problem:** VD-02 (Visual Hierarchy) and COPY-06 (Scannability) — dense pages get skipped, not read, especially by executive buyers who scan before committing.
- **Severity:** Minor
- **Recommendation:** Pick one "hero moment" per section — one claim, one stat, or one image — and visually dominate it. Supporting content should be clearly secondary in weight.
- **Effort:** Medium | **Impact:** Medium

## 4. Trust Signals

### F4.1 — Only one customer testimonial
- **Observation:** The site features a single named testimonial (Eli Wachs, Footprint) and some media quotes. For a fintech handling retirement assets, one testimonial is thin social proof.
- **Why it's a problem:** CRO-07 (Social Proof Depth) — retirement is one of the highest-trust categories in fintech. Buyers transferring employee retirement assets need deep proof they're not making a mistake. One testimonial doesn't carry that weight.
- **Severity:** Major
- **Recommendation:** Add 4-6 more testimonials with specific outcomes (e.g., "switched from Guideline, saved 30% on fees"). Include customer logos. Add a "Trusted by [N] growing companies" counter. Publish 2-3 case studies from real clients.
- **Effort:** High (content work) | **Impact:** High

## 5. Information Architecture

### F5.1 — Nav mixes audience (For Employers/Employees/Advisors) with content (About, Case Studies, Compare)
- **Observation:** Top nav combines persona routing with content pages in a flat structure.
- **Why it's a problem:** IA-01 (Navigation Clarity) — two mental models share the same nav level, creating visual clutter at the top.
- **Severity:** Minor
- **Recommendation:** Group persona routing under a single "Who it's for" dropdown, and keep content pages (Learn, Case Studies, Compare, About) in their own group.
- **Effort:** Low | **Impact:** Medium

## 6. Nielsen / Accessibility / Performance / SEO
- Flagged for manual review — full scan data unavailable this session.

---

*7 findings documented. Top 5 selected for published report.*
