# UX Audit Report — Zocks

**URL:** https://www.zocks.io
**Audit Date:** 2026-04-09

## Business Model Profile

- **Industry:** Vertical AI for financial advisors / wealthtech
- **Company Stage:** Growth (enterprise logos: Carson Group, Commonwealth, Osaic, Hightower)
- **Core Product:** Privacy-first AI assistant for financial advisors — automates meeting notes, intake forms, client emails, and CRM updates
- **Objective:** Win RIA and broker-dealer deals; displace general-purpose meeting AI (Otter, Fireflies) and CRM-bundled assistants (Redtail, Wealthbox)
- **Primary Conversion Goal:** Demo request; secondary: 14-day free trial
- **Core Persona:** Solo/independent financial advisors, mid-size RIAs, and compliance officers at enterprise broker-dealers
- **Customer Type:** B2B (SMB → enterprise)
- **Business Model:** SaaS
- **GTM:** Hybrid (self-serve trial + enterprise sales)
- **Competitors:** Jump, Pulse360, Otter.ai, Fireflies, Fathom, CRM-native notetakers

### Evaluation Priorities
1. CRO — hybrid SLG/PLG motion requires dual paths
2. Trust & Compliance — RIAs live in FINRA/SEC-audited environments
3. Content Hierarchy & Copywriting — "10 hours a week" is a strong claim; how well is it used?
4. IA — deep nav (30+ items) needs disciplined grouping
5. Visual Design
6. Accessibility
7. SEO & Performance

### Evaluation Lens
Zocks sells into financial advisors who are under enormous regulatory pressure (FINRA, SEC, state registrations) and can't use generic AI tools that store data in un-audited environments. The site's job is to make "privacy-first, compliant AI" the obvious answer vs. Otter and Fireflies — which advisors already know they can't use on client calls.

### Why This Matters
Financial advisors lose 10-15 hours/week to administrative work. The TAM for a product that credibly removes that load is enormous — but only if the site clears the compliance bar in the first 10 seconds. Advisors who feel any ambiguity about FINRA/SEC fit will default to "no" and ask their CRM vendor for a built-in alternative.

---

## Methodology

Audit based on WebFetch of zocks.io homepage. 8 findings documented across 5 dimensions. Top 5 selected for published report.

---

# Friction or Pain Points

## 1. Content Hierarchy & Copywriting

### F1.1 — Hero headline is strong; subhead is the workhorse and could go further
- **Observation:** Headline: "The AI Assistant for financial advisors." Subhead: "Get 10+ hours a week back to focus on your clients. Automate your meeting notes, intake forms, client emails, and more."
- **Why it's a problem:** COPY-03 (Headline Specificity) — the headline is category-clear but generic. The "10+ hours a week" stat in the subhead is the actual wedge — it's benefit-led and quantified — but it's doing too much work buried in the subhead.
- **Severity:** Major
- **Recommendation:** Promote the stat into the hero or create a strong proof line directly below the headline: "Give advisors 10+ hours a week back. Built for FINRA and SEC compliance." Lead with the outcome AND the compliance wedge in the same breath.
- **Effort:** Low | **Impact:** High

### F1.2 — Compliance/privacy differentiation isn't in the hero despite being the category wedge
- **Observation:** The nav exposes "Privacy & Security" and "Compliance" as platform surfaces — which strongly suggests Zocks has a real story here. But the hero copy doesn't mention compliance, privacy, or FINRA/SEC fit. The wedge against Otter/Fireflies is invisible until you explore nav.
- **Why it's a problem:** COPY-08 (Proof & Credibility) and CRO-05 (Value Proposition Clarity) — the #1 reason an advisor chooses Zocks over general meeting AI is that Zocks is built to be compliant. That reason must be front-of-site, not a sub-nav link.
- **Severity:** Major
- **Recommendation:** Add a compliance ribbon directly below the hero: "Built for financial advisors — SOC 2 Type II, FINRA-compliant recording workflows, no client data used in model training." Make compliance the second thing every visitor reads.
- **Effort:** Low | **Impact:** High

## 2. Trust Signals & Credibility

### F2.1 — SOC 2 status isn't visible in hero or footer snapshot
- **Observation:** The homepage mentions "Privacy and Security" as a platform section but no SOC 2 Type II, ISO 27001, or FINRA compliance badges were visible in the extracted content. For an advisor evaluating Zocks, this is the first filter.
- **Why it's a problem:** CRO-06 (Trust Signal Placement) — enterprise broker-dealers (Osaic, Commonwealth, Cambridge) would not use Zocks without SOC 2. The badge likely exists — but if it's not visible to a visiting prospect, it doesn't help the deal.
- **Severity:** Major
- **Recommendation:** Add a security badge strip to the footer AND a dedicated "/security" trust center page. Include SOC 2 Type II, data-at-rest encryption, model-training opt-out, FINRA-aligned audit trail, and subprocessor list. Link from the compliance nav item.
- **Effort:** Low (if certified) | **Impact:** High

### F2.2 — Only one named testimonial visible
- **Observation:** One quoted testimonial (Michael Kelly, Reach) and a strong logo wall (Carson Group, Commonwealth, Osaic, Hightower, Cambridge, NewEdge Advisors). The logos do heavy lifting but the testimonial layer is thin.
- **Why it's a problem:** CRO-07 (Social Proof Depth) — a single testimonial doesn't speak to the variety of personas (solo advisor vs. enterprise compliance officer vs. CRM admin) that evaluate Zocks. Enterprise buyers want to hear from peers at enterprise firms, not solo advisors.
- **Severity:** Minor
- **Recommendation:** Add 3-5 additional named testimonials, at least one from an enterprise firm compliance officer and one from a solo advisor — each with a specific outcome stat (e.g., "cut post-meeting admin from 45 minutes to 5").
- **Effort:** Medium (content work) | **Impact:** Medium

## 3. Conversion Rate Optimization

### F3.1 — "Book a demo" and "See how it works" compete for the same click
- **Observation:** Two equal-weight CTAs above the fold: "Book a demo" and "See how it works." Dual primaries split attention and dilute conversion.
- **Why it's a problem:** CRO-01 (Primary CTA Prominence) — visitors satisfice when given two options; they often click neither or pick the lower-commitment one. Zocks also has a "Start Free Trial" self-serve path — three CTAs fighting for the same click.
- **Severity:** Minor
- **Recommendation:** Designate a single primary CTA per persona. For enterprise-intent visitors: "Book a demo." For self-serve advisors: "Start 14-day free trial." "See how it works" should become a scroll anchor or secondary ghost button — not a competing primary.
- **Effort:** Low | **Impact:** Medium

### F3.2 — Free trial path exists but isn't the hero CTA
- **Observation:** Zocks offers a 14-day free trial (mentioned in nav) but the hero CTAs are "Book a demo" and "See how it works" — the trial isn't promoted above the fold.
- **Why it's a problem:** CRO-04 (Engagement Path Variety) — solo advisors (the largest segment of the wealth-management market) overwhelmingly prefer self-serve trial over booking a sales call. Burying the trial behind nav means the PLG path is invisible to exactly the segment that prefers it.
- **Severity:** Major
- **Recommendation:** Add "Start 14-day free trial" as a primary or co-primary hero CTA. Route enterprise buyers to "Book a demo" via a secondary path. Segment by persona if possible.
- **Effort:** Low | **Impact:** High

## 4. Information Architecture

### F4.1 — 30+ nav items across 3 dropdowns is excessive
- **Observation:** Navigation contains Platform (9 items), Features (8 items), Resources (6 items), plus Pricing, Customers, Help Center, Login, Start Free Trial. That's 30+ discoverable links at the top.
- **Why it's a problem:** IA-01 (Navigation Clarity) — deep nav signals "we serve every possible use case" but creates choice paralysis. A solo advisor doesn't need Enterprise, MCP, or Team Collaboration surfaces front-of-mind.
- **Severity:** Minor
- **Recommendation:** Consolidate. Collapse "Features" under "Platform" and prune rarely-visited items (Zocks MCP, Customization) to a deeper sub-page. Target 4-5 top-level nav items.
- **Effort:** Medium | **Impact:** Medium

## 5. Visual Design
### F5.1 — (Not evaluated — requires browser-level review.)
- Flagged for manual review.

---

*8 findings documented. Top 5 selected for published report.*
