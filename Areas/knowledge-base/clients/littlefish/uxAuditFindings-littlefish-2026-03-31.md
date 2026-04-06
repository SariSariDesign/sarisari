# UX Audit Report

## littlefish

**URL:** https://littlefishapp.com | **Audit Date:** March 31, 2026

---

## Business Model Profile

| Attribute | Detail |
|---|---|
| **Industry** | Fintech / Financial Infrastructure |
| **Company Stage** | Series A ($9.5M raised March 2026, led by Partech with TLcom participation) |
| **Core Product** | White-label merchant operating system for acquiring banks — consolidates POS apps, back-office CRM, merchant portals, payments, and APIs into a unified orchestration layer |
| **Objective** | Enable Africa's largest financial institutions to deliver fintech-grade merchant services at scale while preserving ownership of the merchant relationship |
| **Primary Conversion Goal** | Demo request / sales inquiry ("Get in touch") |
| **Core User Personas** | Heads of Merchant Acquiring, Chief Digital Officers, and Payment Product leads at Tier 1 African banks (Standard Bank, FNB, Absa) |
| **Customer Type** | B2B Enterprise |
| **Business Model** | Enterprise SaaS / platform licensing |
| **GTM Motion** | Sales-led growth (SLG) |
| **Competitor Landscape** | Paystack (Stripe-acquired, Africa-focused), Flutterwave, DPO Group, Network International. littlefish is differentiated by selling to banks as the customer (not merchants directly), positioning itself as infrastructure that extends the bank rather than replacing it. |

### Evaluation Priorities (ordered by relevance to this business)

1. Conversion Rate Optimization
2. Content Hierarchy & Copywriting
3. Visual & Brand Design (Trust Signaling)
4. Information Architecture
5. SEO & Discoverability
6. Accessibility
7. Nielsen's Heuristics
8. Performance
9. QA / Bug Reporting
10. Mobile Responsiveness
11. Competitor Benchmarking

### Evaluation Lens

This audit is framed for a Series A B2B fintech selling enterprise infrastructure to Africa's largest banks — where every website visit from a decision-maker is high-value and where credibility, clarity, and proof are the primary conversion levers. The evaluation prioritizes trust-building, conversion path design, and content specificity over aesthetic preference.

### Why This Matters

For a sales-led enterprise platform, the website is the first credibility checkpoint before a bank executive agrees to take a meeting. Friction, vagueness, or missing proof at this stage doesn't just reduce form submissions — it filters out the highest-value prospects who have the least patience for ambiguity.

---

## Methodology

This audit evaluated littlefishapp.com across 11 UX dimensions using 80+ criteria spanning Nielsen's usability heuristics, WCAG 2.1 AA accessibility standards, CRO best practices, SEO technical standards, and content strategy frameworks.

---

# Friction or Pain Points

---

## 1. Nielsen's 10 Usability Heuristics

This dimension evaluates whether the interface follows fundamental usability principles that reduce cognitive load, prevent errors, and support users in accomplishing their goals.

### Finding 1: News Banner Competes with Hero for Cognitive Priority

- **Description:** The homepage opens with a prominent news banner announcing the $9.5M Series A raise, complete with its own headline, body copy, image, and CTA ("Read the story"). This banner occupies roughly 40% of the above-the-fold viewport before the user reaches the actual product hero ("Powering banks in the fintech era"). The news banner uses an H2 heading tag that appears in the DOM before the H1.
- **Why it's a problem:** Violates N-08 (Aesthetic and Minimalist Design) — the banner adds visual noise that dilutes attention from the primary message. Also violates N-06 (Recognition Rather Than Recall) — the user must parse two competing narratives above the fold to understand what littlefish does. For a bank executive visiting for the first time, the funding announcement is irrelevant to their buying decision and delays product comprehension.
- **Severity:** Critical
- **Recommendation:** Reduce the news banner to a slim, single-line notification bar (e.g., "We just raised $9.5M — Read more →") that sits above the nav without pushing the hero down. Alternatively, remove it from the homepage entirely and feature it in a Resources/News section.
- **Evidence:** Screenshot ss_8516iddff — the news banner occupies the top ~260px of the viewport.
- **Effort:** Low | **Impact:** High | **Confidence:** High

### Finding 2: Solution Module Abbreviations Require Memorization

- **Description:** The "How it Works" section uses two-letter abbreviations (ON, CO, OP, PA, FI, LO) as labels for solution modules (Onboarding, Commerce, Operations, Payments, Finance, Engagement). These codes are not standard industry abbreviations and require the user to read each card to decode them.
- **Why it's a problem:** Violates N-06 (Recognition Rather Than Recall) — users must remember what ON, CO, OP stand for rather than recognizing them at a glance. Also violates N-02 (Match Between System and the Real World) — these are internal product labels, not terms banking professionals use.
- **Severity:** Minor
- **Recommendation:** Replace the two-letter codes with recognizable icons or the full module names as primary labels. The abbreviations can be secondary identifiers if they serve an internal purpose.
- **Effort:** Low | **Impact:** Low | **Confidence:** High

---

## 2. Conversion Rate Optimization (CRO)

This dimension evaluates whether the site effectively moves visitors toward the primary conversion goal through clear messaging, CTAs, and engagement path variety.

### Finding 3: Above-the-Fold Fails the 5-Second Test

- **Description:** A first-time visitor landing on the homepage sees, in order: (1) a news banner about Series A funding, (2) the hero headline "Powering banks in the fintech era," (3) a subheadline about extending infrastructure, and (4) two CTAs ("Learn more" / "Get in touch"). The news banner — not the product value prop — dominates the first impression.
- **Why it's a problem:** Violates CRO-01 (Above-the-Fold Clarity). The 5-second test asks: What does this do? Who is it for? What should I do next? The funding announcement answers none of these. A bank CDO arriving from a Google search or a Partech referral must scroll past promotional content to find the answer. This is the single highest-friction point on the site.
- **Severity:** Critical
- **Recommendation:** Make the product hero the undisputed first thing visitors see. The funding banner should be reduced to a slim bar or moved to a dedicated news page. The hero should lead with the specific outcome for banks, not an aspirational tagline.
- **Effort:** Low | **Impact:** High | **Confidence:** High

### Finding 4: No Mid-Intent Engagement Paths

- **Description:** The site offers two engagement options: "Learn more" (low intent — navigates to a product page) and "Get in touch" (high intent — contact form). There are no mid-intent engagement paths such as downloadable case study PDFs, an ROI calculator, a product tour or demo video, a whitepaper, or a gated resource.
- **Why it's a problem:** Violates CRO-04 (Engagement Path Variety). Enterprise B2B sales cycles for banking infrastructure are typically 6-18 months. A bank executive will not fill out a contact form on their first visit. Without a way to capture mid-intent prospects — those who are interested but not yet ready for a sales conversation — littlefish loses the majority of qualified traffic. There is no mechanism to nurture anonymous visitors into known leads.
- **Severity:** Critical
- **Recommendation:** Add at least one mid-intent conversion path: a downloadable case study (e.g., "How Absa launched merchant services in 90 days"), a product overview PDF, or a short recorded product tour. Gate it behind an email capture to build the nurture pipeline.
- **Effort:** Medium | **Impact:** High | **Confidence:** High

### Finding 5: Generic CTA Labels Across the Page

- **Description:** The homepage uses "Learn more" (twice), "Get in touch" (twice), "Get started today," "Start Your Transformation," and "GET STARTED." Most of these CTAs are generic and several likely point to the same contact endpoint.
- **Why it's a problem:** Violates CRO-02 (CTA Specificity and Placement) and CRO-03 (CTA Redundancy and Dilution). Generic labels like "Learn more" and "Get in touch" don't communicate what happens next. When multiple CTAs funnel to the same outcome using different language, it creates confusion rather than clarity. A bank executive should know exactly what they're signing up for: a demo? A consultation? A sales call?
- **Severity:** Major
- **Recommendation:** Replace generic CTAs with specific, outcome-oriented labels: "Book a Platform Demo," "See How Banks Use littlefish," "Talk to Our Banking Team." Differentiate primary and secondary CTAs clearly. Every CTA should lead to a meaningfully different next step or, if not, use consistent language.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

### Finding 6: Unattributed Statistics Undermine Credibility

- **Description:** The bottom of the homepage presents three statistics: "90 days — Implementation time," "40% — Revenue increase," and "60% — Cost reduction." None of these are attributed to a specific client, time period, methodology, or data source.
- **Why it's a problem:** Violates CRO-07 (Social Proof Depth) and COPY-08 (Proof and Credibility in Copy). Unattributed statistics are a red flag for sophisticated enterprise buyers. A bank procurement team evaluating a platform will ask: "40% revenue increase for whom? Measured how? Over what period?" Without attribution, these numbers feel like marketing claims rather than verified outcomes. This actively erodes the trust they're meant to build.
- **Severity:** Major
- **Recommendation:** Attribute each statistic to a specific client or cohort: "Absa saw a 40% increase in merchant-originated revenue within 12 months of launching on littlefish." If client attribution isn't possible, cite the methodology or sample size: "Across 3 Tier 1 bank deployments, average implementation time was 90 days." Specific is credible; vague is not.
- **Effort:** Low | **Impact:** High | **Confidence:** High

### Finding 7: Only One Case Study Visible

- **Description:** The "Client Success Stories" carousel shows only one case study (Absa's ShopRed). The carousel indicator shows 4 dots, suggesting more exist, but only one is visible without interaction. The Absa reference is a quote from the bank's press release rather than a results-oriented case study.
- **Why it's a problem:** Violates CRO-07 (Social Proof Depth). For a platform that claims to serve "the largest banks in Africa" and lists partners like VISA, Wizzit, and Verifone, showing only one case study — and burying others behind carousel navigation — creates a trust gap. Enterprise buyers expect multiple proof points with quantified results, named decision-makers, and clear before/after narratives.
- **Severity:** Major
- **Recommendation:** Display at least 2-3 case study summaries directly on the homepage (not behind a carousel). Each should include: client name, a specific measurable outcome, and a named spokesperson. Link to full case study pages. The carousel pattern hides content that should be front and center.
- **Effort:** Medium | **Impact:** High | **Confidence:** High

---

## 3. Information Architecture (IA)

This dimension evaluates whether the site's structure and navigation allow users to find what they need and move toward their goal.

### Finding 8: No Persona-Based Routing

- **Description:** The navigation structure (Platform, Solutions, Resources, About us) is organized around the product, not the buyer. There are no pathways tailored to specific personas — for example, a Head of Merchant Acquiring vs. a CTO vs. a CDO — or to specific use cases like "I want to launch digital onboarding" vs. "I want to modernize my payment stack."
- **Why it's a problem:** Violates IA-04 (Persona Routing). littlefish's platform serves multiple buyer personas within a bank, each with different priorities and evaluation criteria. A payments executive cares about transaction processing; a digital transformation lead cares about implementation speed. Forcing all personas through the same generic journey means each one encounters content irrelevant to their needs before finding what matters.
- **Severity:** Major
- **Recommendation:** Add persona or use-case routing, either in the navigation (e.g., "Solutions for: Acquiring Banks / Payment Processors") or as a prominent entry point on the homepage (e.g., "I'm looking to: Launch merchant services / Modernize my payment stack / Add lending & financial services").
- **Effort:** Medium | **Impact:** Medium | **Confidence:** High

### Finding 9: About Page Is Actually a Careers Page

- **Description:** Navigating to littlefishapp.com/about (or clicking "About us" in the nav) leads to a page titled "Passionate innovators transforming finance" that is primarily a careers/team page with job listings, perks, benefits, and application process details. There is no traditional "About" page with the company's founding story, leadership team bios, investor information, or strategic vision accessible from the main navigation.
- **Why it's a problem:** Violates IA-01 (Navigation Clarity) and IA-05 (Content Grouping Logic). When a bank executive clicks "About us," they expect to evaluate the company's credibility — leadership, investors, board, history, traction. Instead, they find a hiring page. This is a significant information architecture mislabel that could undermine trust during the evaluation phase. Company information exists in the footer under "Company" (About us, Our values, Financial inclusion, Careers, Join our team, Press coverage), but the footer links suggest "About us" and "Careers" are separate — yet the main nav "About us" leads to what is effectively the Careers page.
- **Severity:** Major
- **Recommendation:** Create a distinct "About" page with company story, leadership bios, investor/board information, traction milestones, and the company's African impact thesis. Rename the current About page to "Careers" or "Join us" and move it under the "About us" dropdown as a sub-item.
- **Effort:** Medium | **Impact:** High | **Confidence:** High

---

## 4. Visual and Brand Design

This dimension evaluates whether the visual design supports credibility, trust, and conversion — not aesthetic preference.

### Finding 10: About Page Hero Is Mostly Empty Space

- **Description:** The About (careers) page loads with approximately 80% of the viewport as flat dark teal background, with no headline, copy, or clear content above the fold. Team photos appear at the very bottom edge of the initial viewport, partially cut off. The actual page heading ("Passionate innovators transforming finance") only becomes visible after scrolling.
- **Why it's a problem:** Violates VD-02 (Visual Hierarchy) and CRO-01 (Above-the-Fold Clarity). A visitor landing on this page sees an almost entirely blank screen. There is no visual hierarchy to guide the eye, no content to orient the user, and no indication of what the page contains. This creates an impression of a broken or incomplete page, which undermines the polish expected from an enterprise fintech.
- **Severity:** Major
- **Recommendation:** Add the page headline and a brief introductory sentence above the fold. The team photo collage can remain as a visual element, but it should be positioned below clear content that tells visitors what they're looking at and why it matters.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

### Finding 11: Dark Mode Aesthetic May Not Match Banking Buyer Expectations

- **Description:** The site uses a dark teal/near-black background for the homepage hero and multiple sections. While this creates a modern, startup-forward aesthetic, it contrasts with the more institutional, light-background design conventions common in enterprise banking software and financial infrastructure.
- **Why it's a problem:** Relates to VD-08 (Industry-Appropriate Trust Signaling). littlefish's buyers are conservative banking executives at Tier 1 institutions. Enterprise banking platforms (Temenos, FIS, Finastra, Mambu) typically use light, professional design languages that signal stability and institutional credibility. A dark, startup-forward aesthetic may unconsciously signal "early-stage" rather than "enterprise-ready" to a bank procurement team comparing vendors.
- **Severity:** Minor
- **Recommendation:** This is not necessarily something to change, but it's worth testing. Consider A/B testing a lighter hero variant for campaigns targeting banking decision-makers, or ensuring the design is balanced with enough institutional trust signals (certifications, compliance badges, bank logos) to counteract any perceived "startup" impression.
- **Effort:** High | **Impact:** Low | **Confidence:** Medium

---

## 5. Accessibility (WCAG 2.1 AA)

This dimension evaluates compliance with WCAG 2.1 Level AA standards.

### Finding 12: No Skip Navigation Link

- **Description:** The homepage has no skip navigation link allowing keyboard users to bypass the main navigation and jump directly to content. The automated scan confirmed `skipNav: false`.
- **Why it's a problem:** Violates ACC-16 (WCAG 2.4.1 Bypass Blocks). Keyboard-only users must tab through the entire navigation structure on every page load before reaching content. For a company that sells to regulated financial institutions — many of which have accessibility requirements in their procurement criteria — this is a compliance gap that could surface during vendor evaluation.
- **Severity:** Major
- **Recommendation:** Add a skip navigation link as the first focusable element on every page: `<a href="#main-content" class="skip-link">Skip to main content</a>`. Style it to be visually hidden but visible on focus.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

### Finding 13: Heading Hierarchy Violation — H2 Before H1

- **Description:** The homepage's first heading in the DOM is an H2 (the news banner headline about the Series A raise), followed by the H1 ("Powering banks in the fintech era"). This inverts the expected heading hierarchy.
- **Why it's a problem:** Violates ACC-02 (WCAG 1.3.1 Info and Relationships) and SEO-04 (Heading Hierarchy). Screen readers and search engines use heading levels to understand page structure. An H2 appearing before the H1 creates a confusing document outline. This compounds the CRO issue of the news banner competing with the hero — it's not just a visual problem but a semantic one.
- **Severity:** Major
- **Recommendation:** If the news banner remains, demote its heading to a `<p>` or `<span>` with appropriate visual styling, ensuring the H1 is the first heading in the document. Alternatively, removing the large banner (as recommended in Finding 1) resolves this automatically.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

### Finding 14: Additional Accessibility Items Requiring Manual Review

- **Description:** The automated scan could only assess ~30-40% of WCAG 2.1 AA criteria. The following require manual verification:
  - ACC-03: Meaningful Sequence (reading order with CSS disabled)
  - ACC-07: Resize Text (200% zoom behavior)
  - ACC-09: Reflow (320px viewport behavior)
  - ACC-11: Text Spacing overrides
  - ACC-13: Full keyboard navigability of all interactive elements
  - ACC-18: Focus order logic
  - ACC-21: Focus indicator visibility
- **Why it's a problem:** These criteria cannot be evaluated by automated scraping alone. Given that littlefish sells to regulated banks, full WCAG 2.1 AA compliance is likely a procurement expectation, not just a nice-to-have.
- **Severity:** Cannot Evaluate
- **Recommendation:** Conduct a manual accessibility audit covering keyboard navigation, screen reader testing (NVDA/VoiceOver), and responsive zoom behavior. Prioritize ACC-13 (keyboard operability) and ACC-21 (focus visibility) as they are the most impactful for real users.
- **Effort:** Medium | **Impact:** High | **Confidence:** Cannot Evaluate

---

## 6. Performance and Core Web Vitals

### Finding 15: Performance Data Unavailable

- **Description:** The PageSpeed Insights API returned HTTP 429 (rate limited) on multiple attempts for both mobile and desktop analysis. Browser-based fallback was not attempted due to time constraints.
- **Why it's a problem:** Cannot evaluate PERF-01 through PERF-09. Performance directly impacts both user experience and SEO rankings. For a site targeting enterprise buyers who may access it from corporate networks with varying connection quality, performance matters.
- **Severity:** Cannot Evaluate
- **Recommendation:** Run manual PageSpeed tests at https://pagespeed.web.dev/analysis?url=https://littlefishapp.com for both mobile and desktop. Pay particular attention to LCP (the hero image/banner is likely the LCP element) and CLS (the news banner may cause layout shift during load).
- **Effort:** Low | **Impact:** Medium | **Confidence:** Cannot Evaluate

---

## 7. SEO and Discoverability

This dimension evaluates whether the site is structured to be found, indexed, and understood by search engines.

### Finding 16: Missing Canonical Tag

- **Description:** No `<link rel="canonical">` tag is present in the homepage HTML. The automated SEO scan confirmed `canonical: "NOT FOUND"`.
- **Why it's a problem:** Violates SEO-06 (Canonical Tag). Without a canonical tag, search engines may index multiple versions of the same page (e.g., with/without trailing slash, with tracking parameters, HTTP vs. HTTPS). This can dilute page authority and create duplicate content issues. For a Series A company investing in growth, organic search is a critical acquisition channel that is being undermined by this technical gap.
- **Severity:** Major
- **Recommendation:** Add a self-referencing canonical tag to every page: `<link rel="canonical" href="https://littlefishapp.com/">`. Ensure it is present in the HTML head of all pages, including paginated or parameterized URLs.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

### Finding 17: Meta Description Too Short and Missing CTA

- **Description:** The meta description is "Full stack enterprise platform that extends your infrastructure, instead of replacing it." at approximately 88 characters. The recommended range is 150-160 characters. It lacks a benefit-led hook for the target audience and contains no soft CTA.
- **Why it's a problem:** Violates SEO-02 (Meta Description). The meta description is what appears in Google search results below the page title. At 88 characters, it's leaving ~70 characters of persuasion space unused. It also doesn't mention banks, Africa, merchant services, or any specific differentiator that would compel a click. A bank executive searching for "merchant acquiring platform Africa" would see a generic description that could apply to any SaaS infrastructure company.
- **Severity:** Minor
- **Recommendation:** Expand to 150-160 characters with audience, benefit, and CTA: "littlefish powers Africa's largest banks with a full-stack merchant platform — launch payments, onboarding, and lending in 90 days. Book a demo." This is more specific, includes keywords, and has a clear next step.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

### Finding 18: Duplicate Page Titles

- **Description:** Both the homepage and the About page use the identical title tag: "littlefish - Next generation merchant services platform." Page titles should be unique per page to help search engines and users distinguish between pages.
- **Why it's a problem:** Violates SEO-01 (Page Title) and ACC-17 (WCAG 2.4.2 Page Titled). Duplicate titles confuse search engines about which page to rank for a given query. They also fail to help users who have multiple tabs open or who use screen readers, which announce the page title on navigation.
- **Severity:** Major
- **Recommendation:** Give each page a unique, descriptive title. Example: About/Careers page: "Careers at littlefish — Join the Team Building Africa's Merchant Infrastructure." Solutions page: "Merchant Acquiring Platform for Banks — littlefish."
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

### Finding 19: No Structured Data / Schema Markup

- **Description:** The SEO scan found zero `<script type="application/ld+json">` elements on the homepage. No Organization, SoftwareApplication, or other schema markup is present.
- **Why it's a problem:** Violates SEO-09 (Structured Data). Structured data helps search engines understand the entity behind the website and can enable rich results (knowledge panel, FAQ snippets, etc.). For a B2B company building brand authority, Organization schema with founding date, location, and social profiles is a baseline expectation.
- **Severity:** Minor
- **Recommendation:** Add at minimum Organization schema with company name, logo, URL, social profiles, founding date, and location. Consider adding SoftwareApplication schema for the platform and FAQPage schema if an FAQ section is added.
- **Effort:** Low | **Impact:** Low | **Confidence:** High

---

## 8. Content Hierarchy and Copywriting

This dimension evaluates whether the site's content guides users through a clear narrative using language that resonates with the target audience.

### Finding 20: Hero Headline Is Aspirational but Non-Specific

- **Description:** The H1 headline is "Powering banks in the fintech era." While clear about the audience (banks) and the context (fintech), it doesn't communicate what littlefish specifically does, what outcome it delivers, or how it's different. Any fintech infrastructure company could make this claim.
- **Why it's a problem:** Violates COPY-03 (Headline Specificity). The headline is the single most important piece of copy on the site. For a Series A company competing against well-funded players (Paystack/Stripe, Flutterwave), the headline needs to convey a specific, differentiated value proposition — not an aspirational statement. The subheadline ("Full stack enterprise platform that extends your infrastructure, instead of replacing it") is actually stronger because it articulates a specific benefit.
- **Severity:** Major
- **Recommendation:** Lead with the specific outcome or differentiator. Consider: "Launch merchant services in 90 days — without replacing your core banking stack." This is specific, quantified, addresses a real fear (rip-and-replace), and differentiates littlefish from competitors. The current headline can become a supporting tagline.
- **Effort:** Low | **Impact:** High | **Confidence:** High

### Finding 21: Feature-Led Framing in Key Sections

- **Description:** Several sections default to describing what the platform does rather than what the bank achieves. Examples: "Streamlined merchant acquisition and setup" (feature), "Complete payment and transaction solutions" (feature), "Automated workflows and operational efficiency" (feature). The Business Impact section is the exception — it leads with outcomes ("Turn merchants into revenue").
- **Why it's a problem:** Violates COPY-02 (Benefit-Led vs. Feature-Led Framing). Bank executives don't buy features — they buy outcomes: revenue growth, cost reduction, competitive positioning, compliance. Feature-led copy asks the reader to do the translation from "what it does" to "why I should care." Benefit-led copy does that work for them.
- **Severity:** Minor
- **Recommendation:** Rewrite solution module descriptions to lead with the bank's outcome: Instead of "Streamlined merchant acquisition and setup" → "Onboard merchants 5x faster with zero manual paperwork." Instead of "Automated workflows and operational efficiency" → "Cut operational costs by 60% with automated back-office workflows." Model the language after the Business Impact section, which already does this well.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

---

## 9. QA / Bug Reporting

### Finding 22: About Page Appears Broken Above the Fold

- **Description:** The About page (littlefishapp.com/about) renders with approximately 80% empty dark teal space above the fold. The page heading and content only appear after scrolling. On initial load, the page looks broken or unfinished.
- **Why it's a problem:** This appears to be a rendering or layout issue where the hero content is either positioned below the viewport or hidden behind the team photo collage. Whether intentional (an animation that failed to trigger) or a bug, the result is that a first-time visitor sees what appears to be an empty page. This is particularly damaging because the About page is a key credibility page in enterprise B2B evaluation.
- **Severity:** Major
- **Recommendation:** Investigate whether this is an animation dependency, a CSS positioning issue, or intentional design. Regardless of root cause, ensure the page heading and introductory content are visible above the fold on initial load without requiring scroll or animation triggers.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

### Finding 23: Job Listings May Not Be Fully Rendering

- **Description:** The About page text extraction found 6 job listings (Solutions Architect, Backend Engineer, Head of Service Delivery, DevOps Engineer, Payment Product Manager, Senior Product Marketing Manager), but the visual screenshot at the job openings section showed only 2 visible cards (Solutions Architect, Backend Engineer) with no scroll indicator or "load more" mechanism visible.
- **Why it's a problem:** If 4 of 6 job listings are not rendering, qualified candidates won't see all open positions. This could be a lazy-loading issue, a viewport-dependent render, or a JavaScript failure. It represents potential lost candidates during an active hiring push at Series A.
- **Severity:** Minor
- **Recommendation:** Verify that all 6 job listings render correctly across browsers and viewport sizes. If the list is intentionally truncated, add a "View all openings" link or expand the visible list.
- **Effort:** Low | **Impact:** Low | **Confidence:** Medium

---

## 10. Mobile Responsiveness

### Finding 24: Mobile Evaluation Requires Manual Review

- **Description:** Mobile responsiveness was not directly evaluated in this audit. However, given the issues identified on desktop — particularly the oversized news banner, empty About page hero, and long-scroll homepage — these issues are likely amplified on mobile viewports.
- **Why it's a problem:** Violates IA-09 (Mobile Navigation) evaluation scope. Mobile traffic typically represents 50-70% of web traffic in Africa. If bank executives are reviewing the site on mobile devices (which is common for initial research), the experience must be solid.
- **Severity:** Cannot Evaluate
- **Recommendation:** Conduct mobile-specific testing across common devices (iPhone, Samsung Galaxy, iPad). Pay particular attention to: the news banner behavior on mobile, touch target sizes for CTAs, and the About page rendering issue.
- **Effort:** Low | **Impact:** Medium | **Confidence:** Cannot Evaluate

---

## 11. Competitor Benchmarking

### Finding 25: Content Depth Gap vs. Competitors

- **Description:** Competing platforms (Paystack, Flutterwave, Stripe) invest heavily in content as a sales tool — extensive documentation, multiple named case studies with quantified results, developer portals, blog content, and downloadable resources. littlefish's homepage has one partially attributed case study, unattributed statistics, and no downloadable content.
- **Why it's a problem:** While littlefish's positioning (selling to banks, not merchants) is differentiated, the content strategy doesn't yet reflect that differentiation at scale. Banks evaluating littlefish against competitors will find significantly more proof, depth, and third-party validation on competitor sites — even though those competitors serve a different market.
- **Severity:** Minor
- **Recommendation:** This is a long-term content strategy investment, not a quick fix. Prioritize: (1) 2-3 full case studies with named clients and quantified results, (2) a "How it Works" product tour or demo video, (3) at least one downloadable thought leadership piece (e.g., "The State of Merchant Acquiring in Africa 2026").
- **Effort:** High | **Impact:** High | **Confidence:** Medium

---

## Summary of Findings

| # | Finding | Dimension | Severity | Effort | Impact |
|---|---------|-----------|----------|--------|--------|
| 1 | News banner competes with hero | Nielsen's Heuristics | Critical | Low | High |
| 2 | Solution abbreviations require memorization | Nielsen's Heuristics | Minor | Low | Low |
| 3 | Above-the-fold fails 5-second test | CRO | Critical | Low | High |
| 4 | No mid-intent engagement paths | CRO | Critical | Medium | High |
| 5 | Generic CTA labels | CRO | Major | Low | Medium |
| 6 | Unattributed statistics | CRO | Major | Low | High |
| 7 | Only one case study visible | CRO | Major | Medium | High |
| 8 | No persona-based routing | IA | Major | Medium | Medium |
| 9 | About page is actually careers page | IA | Major | Medium | High |
| 10 | About page hero is empty space | Visual Design | Major | Low | Medium |
| 11 | Dark mode may not match banking expectations | Visual Design | Minor | High | Low |
| 12 | No skip navigation link | Accessibility | Major | Low | Medium |
| 13 | Heading hierarchy violation (H2 before H1) | Accessibility | Major | Low | Medium |
| 14 | Manual accessibility review needed | Accessibility | Cannot Evaluate | Medium | High |
| 15 | Performance data unavailable | Performance | Cannot Evaluate | Low | Medium |
| 16 | Missing canonical tag | SEO | Major | Low | Medium |
| 17 | Meta description too short | SEO | Minor | Low | Medium |
| 18 | Duplicate page titles | SEO | Major | Low | Medium |
| 19 | No structured data markup | SEO | Minor | Low | Low |
| 20 | Hero headline non-specific | Copywriting | Major | Low | High |
| 21 | Feature-led framing in key sections | Copywriting | Minor | Low | Medium |
| 22 | About page appears broken above fold | QA | Major | Low | Medium |
| 23 | Job listings may not fully render | QA | Minor | Low | Low |
| 24 | Mobile evaluation needed | Mobile | Cannot Evaluate | Low | Medium |
| 25 | Content depth gap vs. competitors | Competitor | Minor | High | High |

**Total: 25 findings** — 3 Critical, 12 Major, 7 Minor, 3 Cannot Evaluate

---

*Audit conducted by Sari Sari Design — March 2026*
