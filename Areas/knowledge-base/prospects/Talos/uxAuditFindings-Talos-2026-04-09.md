# UX Audit Report — Talos

**URL:** https://www.talos.com
**Audit Date:** 2026-04-09

## Business Model Profile

- **Industry:** Institutional digital asset trading infrastructure (crypto/fintech)
- **Company Stage:** Growth/Late-stage (Series B+ unicorn, $150M+ raised, est. 2018)
- **Core Product:** End-to-end crypto trading platform for institutions (OEMS, portfolio management, settlement)
- **Objective:** Win institutional crypto trading volume from enterprise buyers
- **Primary Conversion Goal:** Demo request
- **Core Persona:** Heads of trading, COOs, CTOs at asset managers, hedge funds, banks, brokers, ETF issuers, custodians
- **Customer Type:** B2B Enterprise
- **Business Model:** SaaS (enterprise, license + volume)
- **GTM Motion:** Sales-led (SLG)
- **Competitor Landscape:** FalconX, B2C2, Fireblocks (settlement side), traditional OEMS vendors entering crypto

### Evaluation Priorities (ordered)
1. Conversion Rate Optimization (enterprise SLG demands clarity of path to demo)
2. Visual & Brand Design (institutional buyers expect polish = credibility)
3. Content Hierarchy & Copywriting (differentiation in crowded crypto infra market)
4. Information Architecture (multi-persona routing across 8+ client types)
5. Accessibility (enterprise procurement increasingly checks WCAG)
6. SEO & Discoverability
7. Nielsen's Heuristics
8. Performance (rate-limited — cannot evaluate this session)

### Evaluation Lens
Talos sells into institutional buyers who evaluate vendors through a rigorous procurement lens — credibility signaling, specificity, and ease-of-path-to-demo matter more than volume of features. This audit prioritizes how well the marketing site compresses complex institutional messaging into a clear path for a busy Head of Trading or CTO to self-qualify and request a demo.

### Why This Matters
For a growth-stage infrastructure player competing with FalconX and B2C2, every friction point in the path from landing to demo request is measurable lost pipeline — an institutional crypto deal is typically $250K–$2M+ ACV. Marketing site clarity disproportionately determines whether a vetting committee at a prospective bank or hedge fund moves Talos forward in the decision.

---

## Methodology

This audit evaluates the Talos marketing site (www.talos.com) against 8 static UX dimensions using Sari Sari Design's UX Audit Reference Checklist v1.0 (Feb 2026), prioritized for an enterprise SLG motion in institutional crypto infrastructure. Performance and Core Web Vitals were rate-limited during this session and flagged as Cannot Evaluate.

---

# Friction or Pain Points

## 1. Conversion Rate Optimization (CRO)

### F1.1 — Hero headline fragments lack a single clear value proposition
- **Observation:** The hero pairs "We empower institutions to trade and manage digital assets" with a 5-word adverb stack: "at scale. anywhere. safely. securely. optimally." This tries to say everything and says nothing — none of the adverbs are differentiated claims, and the headline itself is generic enough to describe any competitor (FalconX, Fireblocks, B2C2).
- **Why it's a problem:** CRO-05 (Value Proposition Clarity) and COPY-03 (Headline Specificity) — the value prop isn't differentiated. A Head of Trading at a hedge fund looking at 4 vendors will remember "$727B volume since inception" or "the only OEMS connected to 60+ venues" but not "at scale, anywhere, safely." For an enterprise SLG motion where demo requests drive the entire pipeline, the hero has ~5 seconds to earn the next click.
- **Severity:** Major
- **Recommendation:** Replace the adverb stack with a single specific, credible claim. Example: "The institutional crypto trading platform powering $727B+ in volume across 60+ venues." Move the generic adverbs into the sub-claims beneath. Lead with what's true only for Talos.
- **Evidence:** Hero section as rendered on www.talos.com
- **Effort:** Low | **Impact:** High | **Confidence:** High

### F1.2 — "Request a demo" CTA repeated 5+ times without differentiation
- **Observation:** The primary CTA "Request a demo" appears at least five times across the homepage with no variation in label or destination. There is no mid-funnel CTA (e.g., "See the platform", "Download the institutional brief") for visitors who aren't yet demo-ready.
- **Why it's a problem:** CRO-03 (CTA Redundancy & Dilution) and CRO-04 (Engagement Path Variety) — visitors arrive at different stages of intent. A treasurer doing early research will not click "Request a demo" but may click "Download the institutional crypto playbook." Talos funnels all intent into a single binary action, which suppresses mid-funnel capture and forces every curious visitor into a sales call they aren't ready for.
- **Severity:** Major
- **Recommendation:** Keep "Request a demo" as the hero and final-section primary CTA. Replace 2 of the mid-page CTAs with mid-funnel options: a gated institutional playbook, a "See the platform" video walkthrough, or a "Talk to a product expert" option that signals exploration rather than purchase intent.
- **Evidence:** Multiple "Request a demo" placements observed across hero, Talos Standard, statistics, and footer sections
- **Effort:** Medium | **Impact:** High | **Confidence:** High

### F1.3 — Institution-type selector hides the product story behind a choice
- **Observation:** The hero uses an institution-type tab selector (Asset Managers / Hedge Funds / ETF Issuers / Banks / etc.) that gates the main product story behind a persona click. Users who don't yet know which tab applies — or who fit multiple — face a decision before seeing the product.
- **Why it's a problem:** N-07 (Flexibility & Efficiency) — while persona routing is valuable for deep content, placing it as the first interaction adds cognitive friction. Enterprise buyers often wear multiple hats (a CTO evaluating for both a hedge fund arm and a market-making desk) and may bounce rather than pick.
- **Severity:** Minor
- **Recommendation:** Either (a) show a default "all institutions" view that demonstrates the platform's breadth, then allow filtering, or (b) move the institution selector further down the page as a "Find your use case" section, after the core value prop has been established.
- **Effort:** Medium | **Impact:** Medium | **Confidence:** Medium

### F1.4 — Testimonials carry weight but lack outcome specificity
- **Observation:** 13 institutional testimonials are present from named leaders (Cumberland, Secure Digital Markets, Europa Partners, etc.) — strong credibility signals. However, most read as general endorsements rather than quantified outcomes ("Talos has been critical to our scaling" rather than "Talos helped us onboard 3 new venues in 6 weeks").
- **Why it's a problem:** COPY-11 (Social Proof Copy) and CRO-07 (Social Proof Depth) — named quotes with titles and companies are strong (and Talos does this well), but in enterprise sales the question a vetting committee asks is "what did they actually achieve?" Outcome-specific testimonials shorten that conversation.
- **Severity:** Minor
- **Recommendation:** In the next round of customer outreach, ask 3-5 existing customers for one specific metric or time-to-value quote. Refresh the carousel with these. Leave the softer testimonials as secondary.
- **Effort:** Medium | **Impact:** Medium | **Confidence:** High

## 2. Visual & Brand Design

### F2.1 — Visual density on "Talos Standard" and product carousel dilutes hierarchy
- **Observation:** The "Talos Standard" (5 value pillars) and product carousels place multiple product names, icons, and descriptions in close visual proximity without a dominant anchor. Eye flow is uncertain.
- **Why it's a problem:** VD-02 (Visual Hierarchy) — enterprise buyers scan. Without a dominant visual anchor per section, attention splits across equal-weight elements and no single message lands.
- **Severity:** Minor
- **Recommendation:** Establish a single dominant element per section (one featured product, one lead testimonial, one key stat) with supporting elements visually de-emphasized. Use contrast and scale, not just color.
- **Effort:** Medium | **Impact:** Medium | **Confidence:** Medium

### F2.2 — Awards & credentials collapsed into an accordion reduce credibility visibility
- **Observation:** The Awards & Credentials section is collapsed by default, hiding recognition from Risk.net, Hedgeweek, Digital Banker, and Forbes behind a click.
- **Why it's a problem:** VD-08 (Industry-Appropriate Trust Signaling) and CRO-06 (Trust Signal Placement) — institutional buyers weigh third-party validation heavily. Risk.net alone is a meaningful credibility signal to a trading ops buyer. Hiding it reduces the probability it factors into the decision.
- **Severity:** Minor
- **Recommendation:** Expand the awards by default or surface the 3-5 most institutionally-recognized awards inline near the testimonials section. Keep the accordion for the long tail.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

## 3. Information Architecture

### F3.1 — Navigation "Solutions" and "Clients" overlap in user model
- **Observation:** The top nav splits into "Solutions" (Trading Platform, White Label, RFQ, Portfolio Construction, etc.) and "Clients" (Asset Managers, Hedge Funds, Banks, etc.). This is two different mental models (by product vs. by persona) presented as peers.
- **Why it's a problem:** IA-01 (Navigation Clarity) and IA-04 (Persona Routing) — a user can reach the same content via either path. Some users will default to "I'm a hedge fund, let me find my page" (Clients) while others will think "I need trading execution, find the product" (Solutions). Dual navigation without clear differentiation creates decision friction at the top level.
- **Severity:** Minor
- **Recommendation:** Consider consolidating into a single primary path (likely by persona for enterprise) and using Solutions as a sub-taxonomy within each persona page. Alternatively, keep both but add a 1-line hint label under each nav item: "Solutions — by what it does" and "Clients — by who uses it."
- **Effort:** High | **Impact:** Medium | **Confidence:** Medium

### F3.2 — Footer buries compliance/legal surface important to procurement
- **Observation:** Footer contains Data Processing Addendums and regulatory disclaimers (UK, Seychelles) compressed into small text at the bottom.
- **Why it's a problem:** IA-07 (Footer Utility) — for institutional procurement buyers, DPA availability and regulatory posture are first-screen checklist items. A compliance officer who has to scroll through 6 columns to find a DPA link may assume it doesn't exist or isn't front-of-mind for Talos.
- **Severity:** Minor
- **Recommendation:** Create a dedicated "Compliance & Security" section on the marketing site (or a clearly linked page) that surfaces SOC 2, DPAs, regulatory registrations, and security documentation in one place. Link it from both footer and About nav.
- **Effort:** Medium | **Impact:** Medium | **Confidence:** High

## 4. Nielsen's Usability Heuristics

### F4.1 — Cookie consent modal overlaps page content (N-03 User Control)
- **Observation:** The privacy/cookie preferences modal overlaps primary content on initial load.
- **Why it's a problem:** N-03 (User Control & Freedom) and N-08 (Aesthetic & Minimalist Design) — cookie modals are a regulatory necessity but shouldn't block hero interaction. An overlapping modal forces the user to interact with it before the hero is actionable, which raises bounce risk on the first impression.
- **Severity:** Minor
- **Recommendation:** Use a bottom-anchored cookie banner that doesn't overlay primary content, with clear accept/reject and customize options visible without modal interaction.
- **Effort:** Low | **Impact:** Low | **Confidence:** High

## 5. Accessibility (WCAG 2.1 AA)

### F5.1 — White text on light sections flagged for contrast risk (ACC-06)
- **Observation:** Some hero and section backgrounds use lighter values where white text is placed. Without automated axe-core data in this session, exact contrast ratios cannot be measured, but visual inspection suggests possible contrast failures in specific sections.
- **Why it's a problem:** ACC-06 (1.4.3 Contrast Minimum) — WCAG AA requires 4.5:1 for normal text. Enterprise procurement increasingly requires WCAG AA attestation, and Talos serves institutions that may have accessibility compliance clauses in vendor contracts.
- **Severity:** Cannot fully evaluate without tool scan — flagged for manual review
- **Recommendation:** Run axe-core or WAVE on all marketing pages. Address any contrast failures in the design system. Publish an accessibility statement.
- **Effort:** Medium | **Impact:** Medium | **Confidence:** Cannot evaluate

## 6. Performance & Core Web Vitals

### F6.1 — Performance data unavailable this session
- **Observation:** PageSpeed Insights API rate-limited (HTTP 429) after 3 retries.
- **Why it's a problem:** Cannot evaluate PERF-01 through PERF-09 without scan data.
- **Recommendation:** Run manually at https://pagespeed.web.dev/analysis?url=https://www.talos.com. Flag for follow-up.
- **Effort:** Low | **Impact:** Cannot evaluate | **Confidence:** Cannot evaluate

## 7. SEO & Discoverability

### F7.1 — Title and meta description assessment requires page-level scan
- **Observation:** Structured SEO data extraction was not completed this session (browser-based JS scan unavailable). Based on the visible content, the page uses a clear hero H1 pattern, but title/meta/schema validation requires manual review.
- **Recommendation:** Extract SEO data manually or run a scan to evaluate SEO-01 through SEO-12. Priority check: (1) unique meta description that mentions "$727B volume", (2) Organization schema markup, (3) canonical tag.
- **Effort:** Low | **Impact:** Medium | **Confidence:** Cannot evaluate

## 8. Content Hierarchy & Copywriting

### F8.1 — "$727B volume since inception" stat is the strongest proof and underused
- **Observation:** The "$727B volume since inception" statistic appears in the "By the Numbers" section mid-page but is not leveraged in the hero, meta, or testimonial context.
- **Why it's a problem:** COPY-08 (Proof & Credibility) — this is the single most compelling, specific, and verifiable claim on the site. In a crowded institutional crypto market, "$727B in volume" is the shortest path to credibility. Burying it mid-page is a wasted asset.
- **Severity:** Major
- **Recommendation:** Elevate this stat to the hero headline or sub-headline. Example: "The institutional trading platform powering $727B in crypto volume." Let it do the work of the generic adverb stack.
- **Effort:** Low | **Impact:** High | **Confidence:** High

---

*End of findings report. 10 findings documented across 6 dimensions. 2 dimensions (Performance, full SEO) flagged for follow-up due to tool limitations.*
