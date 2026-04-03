# UX Audit Report: Brico
**Date:** March 19, 2026
**URL:** https://www.brico.ai
**Audited by:** Sari Sari Design — Automated UX Audit

---

## Business Model Profile

| Attribute | Detail |
|-----------|--------|
| Business Model | B2B SaaS — vertical compliance/licensing software for financial services |
| Target Audience | Compliance officers, legal teams, and operations leads at fintechs, money services businesses (MSBs), lenders, mortgage companies, and crypto firms |
| Primary Conversion Goal | Demo request (via HubSpot embedded form on /contact) |
| Evaluation Priorities | **Trust signaling** and **credibility** are critical — this is a compliance product where buyers need confidence in accuracy and reliability. **CRO** is high-priority given the demo-request funnel. **Content/Copy** matters because the target buyer is a niche, informed audience that will scrutinize specificity. **Accessibility** is weighted as standard priority. **Performance** and **SEO** support discoverability and first impressions. |

---

## Executive Summary

Brico is a fast-growing B2B SaaS platform (Forbes Top 50 FinTech 2025 and 2026, $13.5M Series A) that automates financial licensing applications, maintenance, and renewals across all 50 US states. The homepage communicates the core value proposition clearly — automated licensing at a fraction of the cost — and the site's structure is well-organized with persona-based navigation and clear product segmentation.

However, several issues reduce the homepage's conversion effectiveness. The hero subheading is truncated in the DOM, the "Get a Demo" CTA in the hero section links to an anchor rather than the dedicated /contact page, and there are generic "Learn More" CTAs that could be more specific. The competitive comparison section lacks visual polish and quantified proof. The site's most significant gap is in accessibility: there is no skip navigation link, at least one form input lacks a programmatic label, and the heading hierarchy has structural issues (H3 used directly under H1 before any H2 appears). On the positive side, all 85 images have alt text, the lang attribute is properly set, and structured data is present.

The site's overall design is professional and polished — appropriate for an enterprise-grade fintech compliance tool. However, there are opportunities to strengthen the conversion funnel, improve accessibility compliance, and tighten the content narrative.

## Scorecard

| Dimension | Score | Rating |
|-----------|-------|--------|
| Nielsen's Usability Heuristics | 7/10 | Adequate |
| Conversion Rate Optimization | 6/10 | Adequate |
| Information Architecture | 8/10 | Strong |
| Visual and Brand Design | 8/10 | Strong |
| Accessibility (WCAG 2.1 AA) | 5/10 | Adequate |
| Performance & Core Web Vitals | —/10 | Cannot Evaluate |
| SEO and Discoverability | 7/10 | Adequate |
| Content Hierarchy & Copywriting | 7/10 | Adequate |
| **Overall** | **6.9/10** | **Adequate** |

---

## Top 5 Critical Findings

### Finding 1: Missing Skip Navigation Link
- **Severity:** Critical
- **Criteria Violated:** ACC-16 (Bypass Blocks), ACC-13 (Keyboard)
- **Observation:** No skip navigation link is present anywhere on the site. The navigation is extensive (3 dropdown menus with 12+ sublinks, plus utility links) and is duplicated — there appear to be two complete navigation bars rendered in the DOM (refs 7–36 and 38–68), meaning keyboard users must tab through 30+ navigation links before reaching main content.
- **Impact:** Keyboard and screen reader users face extreme friction navigating the page. This is a WCAG 2.1 AA failure and a potential legal liability, particularly given Brico's enterprise-facing positioning where accessibility is increasingly a procurement requirement.
- **Recommendation:** Add a visually-hidden skip link as the first focusable element: `<a href="#main-content" class="skip-link">Skip to main content</a>`. Also investigate why the navigation appears to be duplicated in the DOM — this doubles the keyboard navigation burden unnecessarily.

### Finding 2: Hero CTA Links to Page Anchor Instead of Demo Form
- **Severity:** High
- **Criteria Violated:** CRO-02 (CTA Specificity and Placement), CRO-08 (Friction in Conversion Flow), N-01 (Visibility of System Status)
- **Observation:** The hero "Get a Demo" CTA (ref_73) links to `#demo` on the same page rather than navigating to the dedicated /contact page. On the homepage, this scrolls to the bottom-of-page "Schedule a Demo" section — but the HubSpot form embed at that location appeared as just a generic "Form" label in the accessibility tree with no visible form fields rendered, suggesting the embedded form may not be loading reliably.
- **Impact:** The most important CTA on the page may lead to a broken or empty form state. If the HubSpot embed fails to load (due to ad blockers, slow connections, or script errors), users who click the primary CTA hit a dead end with no fallback. Meanwhile, the /contact page has a properly structured demo request experience with clear expectation-setting copy.
- **Recommendation:** Point the hero CTA directly to /contact. The /contact page already has strong supporting copy ("In 30 minutes, we'll show you...") that sets expectations and reduces conversion anxiety. Also add a fallback for the homepage embedded form — a mailto or direct link to /contact if the HubSpot script fails.

### Finding 3: Heading Hierarchy Violations
- **Severity:** High
- **Criteria Violated:** SEO-04 (Heading Hierarchy), ACC-02 (Info and Relationships), ACC-20 (Headings and Labels)
- **Observation:** The heading hierarchy has multiple structural issues. "Trusted by Industry Leaders" is an H3 that appears directly after the H1, skipping H2 entirely. This violates the logical H1→H2→H3 nesting rule. The license types section repeats the same 7 H3 headings ("Money Transmitters", "Lending", "Collection", etc.) three times in the DOM — 21 duplicate headings total — likely from a carousel or responsive rendering approach that keeps all viewport variations in the DOM simultaneously.
- **Impact:** Screen readers use heading hierarchy to build a navigable page outline. Duplicate and misordered headings create a confusing, cluttered outline that makes the page harder to navigate for assistive technology users. It also dilutes SEO heading signals.
- **Recommendation:** Fix the heading nesting so H3s only appear within H2 parent sections. For the license type carousel, use `aria-hidden="true"` on the inactive/duplicate slide sets so they don't pollute the heading tree or the accessibility outline.

### Finding 4: Generic "Learn More" CTAs Lack Specificity
- **Severity:** Medium
- **Criteria Violated:** CRO-02 (CTA Specificity and Placement), CRO-03 (CTA Redundancy and Dilution), COPY-09 (CTA Copy Quality), ACC-19 (Link Purpose)
- **Observation:** The two product sections ("Simplified New Applications" and "Effortless Maintenance and Renewals") both use identical "Learn More" link text. From an accessibility standpoint, a screen reader user encountering two links both labeled "Learn More" cannot distinguish their destinations without reading surrounding context. From a CRO standpoint, generic CTAs communicate less intent and urgency than specific ones.
- **Impact:** Reduces click-through on product detail pages and creates an accessibility barrier for screen reader users navigating by link list.
- **Recommendation:** Replace with specific, action-oriented labels: "Explore New Applications" and "See Maintenance & Renewals". This improves both conversion clarity and accessibility (ACC-19 Link Purpose).

### Finding 5: No Low-Intent Engagement Paths
- **Severity:** Medium
- **Criteria Violated:** CRO-04 (Engagement Path Variety), CRO-09 (Urgency and Motivation), N-07 (Flexibility and Efficiency of Use)
- **Observation:** The site offers only one conversion path: request a demo. There are no low-intent engagement options (newsletter signup, downloadable resource, ROI calculator, licensing guide) and no mid-intent options (self-serve product tour, recorded demo, interactive cost comparison). The Insights blog exists in the nav but is not surfaced on the homepage as content or as a lead capture mechanism.
- **Impact:** Visitors who are researching or early in their evaluation have no way to engage without committing to a sales conversation. This is a significant gap for a B2B SaaS product with a complex, multi-stakeholder buying process. Brico's content (blog posts about MTL costs, licensing requirements, etc.) could serve as powerful lead magnets but is entirely disconnected from the homepage funnel.
- **Recommendation:** Add at least one low-intent CTA on the homepage — e.g., a downloadable "State-by-State Licensing Requirements Guide" or link to a featured Insights post with an email gate. Surface 2–3 blog post cards above the demo form to capture visitors who aren't ready for a demo but are actively researching.

---

## Detailed Analysis

### 1. Nielsen's Usability Heuristics

**N-01 Visibility of System Status:** Partially met. The nav includes active hover states on dropdown buttons. However, the hero CTA ("Get a Demo" → #demo anchor) provides no visual feedback that the page is scrolling to a form section — users may not realize they've been moved. The bottom-of-page form's empty state (just "Form" label visible) gives no loading indicator.

**N-02 Match Between System and the Real World:** Strong. The site uses industry-appropriate terminology (MTL, MSB, BitLicense, DFAL) that matches how compliance professionals describe their work. The "Who We Help" navigation organizes by customer type, which mirrors how buyers self-identify.

**N-03 User Control and Freedom:** Adequate. Standard browser navigation works. No modal popups or interstitial overlays were observed. The Forbes announcement banner at the top has a dismiss control. No aggressive sticky CTAs.

**N-04 Consistency and Standards:** Mostly met. Navigation is consistent. However, the "Login" link appears twice in the nav with different destinations — one goes to app.brico.ai/login (the actual app) and the other goes to /contact (the demo form). This is confusing and violates the principle that identical labels should lead to identical destinations.

**N-05 Error Prevention:** The demo form uses HubSpot's built-in validation. Cannot fully evaluate without interacting with form fields. The reCAPTCHA presence suggests spam prevention is in place.

**N-06 Recognition Rather Than Recall:** Strong. The page is structured so each section is self-contained. Users don't need to remember prior content to understand current sections. License types are clearly labeled.

**N-07 Flexibility and Efficiency of Use:** Partial gap. The site serves multiple personas (MSBs, Lenders, Crypto, Mortgage, Startups) with dedicated landing pages accessible from the nav dropdown. However, there's no search function and no self-serve path for users who want to explore the product without a demo.

**N-08 Aesthetic and Minimalist Design:** Strong. The page is clean and purposeful. Each section has a clear role. The competitive comparison table is well-structured. No unnecessary visual clutter.

**N-09 Help Users Recognize, Diagnose, and Recover From Errors:** Cannot fully evaluate — no error states were triggered during the audit. The HubSpot form likely provides inline validation, but this could not be confirmed.

**N-10 Help and Documentation:** Partial gap. No FAQ section on the homepage or product pages. The Insights blog serves an educational role but is not surfaced contextually. No tooltips or help text are present on the homepage.

**Score: 7/10 — Adequate**

### 2. Conversion Rate Optimization

**CRO-01 Above-the-Fold Clarity:** Mostly passes. The H1 ("The New Standard of Financial Licensing") is clear but somewhat generic. The subheading begins well ("Brico takes the hassle out of financial licensing...") but is truncated in the rendered page, cutting off the full value proposition. A first-time visitor can understand *what* Brico does within 5 seconds, but *who it's for* requires reading the subhead or scrolling to the persona nav.

**CRO-02 CTA Specificity and Placement:** Mixed. "Get a Demo" is specific and well-placed above the fold. "Request a Demo" is repeated appropriately at the mid-page break and bottom. However, the two "Learn More" links in the product sections are generic and low-converting.

**CRO-03 CTA Redundancy and Dilution:** Minor issue. "Get a Demo" and "Request a Demo" are used interchangeably. This inconsistency is minor but creates a question: are these the same action? Also, one "Login" link goes to the app while another "Login" link goes to the contact page — this is a meaningful CTA labeling error.

**CRO-04 Engagement Path Variety:** Significant gap. Only one conversion path exists (demo request). No low-intent options (newsletter, guide, calculator) and no mid-intent options (recorded demo, product tour).

**CRO-05 Value Proposition Clarity:** Mixed. The stats section ("Save 50-90% on licensing costs", "Use only 10-15% of your team's time") is strong and benefit-led. However, the hero headline is feature-positioning ("The New Standard of Financial Licensing") rather than outcome-led. A headline focused on the buyer's pain point would be stronger.

**CRO-06 Trust Signal Placement:** Adequate. "Trusted by Industry Leaders" logos appear directly below the hero — strong placement. The Forbes Top 50 FinTech badge is in the announcement banner. However, trust signals are not repeated near the demo form at the bottom of the page.

**CRO-07 Social Proof Depth:** Partial gap on homepage. The homepage shows logos only — no named testimonials, no quantified results, no customer quotes. The case studies page has strong proof (1Money, Bilt, Funding Circle, LB Finanzas) with specific outcomes (32% cost reduction, 50% time savings, 90% lower cost), but none of this is surfaced on the homepage.

**CRO-08 Friction in Conversion Flow:** The /contact page is well-designed with clear expectation-setting ("In 30 minutes, we'll show you..."). However, the homepage's embedded form may not render reliably (HubSpot iframe dependency), and the hero CTA routes to the page anchor rather than the dedicated contact page.

**CRO-09 Urgency and Motivation:** No urgency signals present. No social proof momentum indicators (e.g., "200+ companies licensed with Brico"), no scarcity signals. For B2B compliance software, artificial urgency would feel inappropriate, but authentic momentum signals (customer count, growth stats) would be effective given their 600% YoY growth.

**CRO-10 Post-CTA Expectation Setting:** The /contact page sets expectations well ("In 30 minutes..."). The homepage form section ("Schedule a demo to see how Brico can streamline your licensing process") is adequate but less specific about what happens after submission.

**Score: 6/10 — Adequate**

### 3. Information Architecture

**IA-01 Navigation Clarity:** Strong. The three dropdown categories ("Who We Help", "Products", "Company") are intuitive and user-centered. The "Who We Help" dropdown segments by audience type — this mirrors how B2B buyers self-identify. The top-level count (3 dropdowns + Insights + Get a Demo + Login) = 6 items, well within the 5–7 recommended range.

**IA-02 Navigation Consistency:** The navigation appears consistent across checked pages (homepage, /contact, /case-studies). Same structure, same labels, same behavior. However, the DOM contains what appears to be two complete navigation bars (likely one for desktop, one for mobile), which is a code-level concern rather than a user-facing one.

**IA-03 Wayfinding and Orientation:** Adequate. No breadcrumbs are used, but the page titles are descriptive. Active navigation states were not clearly visible in the accessibility tree, which suggests they may be missing or implemented purely visually without ARIA.

**IA-04 Persona Routing:** Strong. The "Who We Help" dropdown provides clear pathways for 5 distinct personas: Money Services Businesses, Lenders, Crypto, Mortgage, and Startups. Each has a dedicated landing page.

**IA-05 Content Grouping Logic:** Strong. Homepage sections follow a logical narrative: hero → trust (logos) → value props (stats) → license types → product features → competitive comparison → demo form. This maps well to the buyer's evaluation journey.

**IA-06 Search and Findability:** No search function present. For the current site size, this is acceptable — key pages are accessible within 1–2 clicks. However, as the Insights blog grows, a search function will become important.

**IA-07 Footer Utility:** Adequate but minimal. Footer includes: Products (2 links), Company (5 links), Contact email, LinkedIn, Privacy Policy. Missing: no Terms of Service link, no security/compliance certifications, no SOC 2 badge or trust mark. For a compliance-focused product, these omissions are notable.

**IA-08 Page Depth and Scannability:** Strong. Clear section headings, short paragraphs, visual breaks between sections. The competitive comparison table is well-structured for scanning.

**IA-09 Mobile Navigation:** Requires manual review. A hamburger menu button is present in the DOM (ref_37 "menu"), suggesting mobile navigation is implemented. Touch target sizes and behavior cannot be evaluated from this audit.

**Score: 8/10 — Strong**

### 4. Visual and Brand Design

**VD-01 First Impression and Credibility:** Strong. The site looks professional, modern, and appropriate for a Series A fintech targeting compliance teams. The Forbes badge in the announcement banner immediately builds credibility.

**VD-02 Visual Hierarchy:** Strong. The H1 is visually dominant, the CTA is prominent, and the stat cards (Less Money, Less Time, More Joyful) create a clear scannable pattern. Primary CTAs ("Get a Demo") are visually distinct from secondary links ("Learn More").

**VD-03 Typography System:** The heading hierarchy is visually consistent even though the HTML structure has issues (see Finding 3). Body text appears legible. Cannot confirm exact character counts per line without rendering data.

**VD-04 Color System Consistency:** The CTA buttons appear to use a consistent accent color reserved for primary actions. The competitive comparison table uses green/red (or equivalent) indicators for Brico vs. competitors, which follows conventional meaning.

**VD-05 Spacing and Layout Rhythm:** Adequate from the DOM structure. Sections are clearly separated with distinct regions.

**VD-06 Imagery and Iconography Quality:** Two product screenshots are present with detailed, descriptive alt text ("Dashboard screen showing Colorado Supervised Lender License new application tasks..." and "Dashboard screen displaying Georgia Money Transmitter License maintenance tasks..."). This is strong — real product screenshots rather than generic illustrations.

**VD-07 Brand Consistency:** The tone, visual language, and copy voice appear consistent across the homepage, /contact, and /case-studies pages.

**VD-08 Industry-Appropriate Trust Signaling:** Adequate. The Forbes badge, customer logos, and product screenshots build credibility. However, the footer lacks security badges, SOC 2 mentions, or compliance certifications — these are standard expectations for enterprise compliance software.

**VD-09 Interactive and Hover States:** Navigation dropdown buttons are interactive. CTA links are clearly styled. Cannot fully evaluate hover states from accessibility tree data alone.

**VD-10 Animation and Motion:** The license type section appears to use a carousel or marquee pattern (content repeated 3 times in the DOM, a common technique for infinite scroll animations). The animation intent seems functional (showing breadth of coverage) rather than decorative. Cannot evaluate reduced-motion preferences without testing.

**Score: 8/10 — Strong**

### 5. Accessibility (WCAG 2.1 AA)

#### 5.1 Perceivable

**ACC-01 Non-text Content:** ✅ Pass. All 85 images have alt text. The two product screenshots have detailed, descriptive alt text. Zero images detected without alt attributes.

**ACC-02 Info and Relationships:** ⚠️ Issues. The heading hierarchy has structural problems (H3 used before H2, see Finding 3). The license type lists are semantically marked up as `<list>` and `<listitem>`, which is correct. The form has at least one input without a programmatic label.

**ACC-03 Meaningful Sequence:** ⚠️ Requires Manual Review. The duplicated navigation and triplicated license type headings in the DOM suggest potential reading order issues if CSS is disabled.

**ACC-04 Sensory Characteristics:** ✅ Pass. No instructions rely on sensory-only descriptions.

**ACC-05 Use of Color:** ⚠️ Partial concern. The competitive comparison table uses "High Functionality" vs. "Low or No Functionality" and "In-App Chat and Live Support" vs. "No In-App Chat or Live Support" — text labels are present alongside what are likely color indicators. Pass if text is always paired with color.

**ACC-06 Contrast (Minimum):** ⚠️ Requires Manual Review. Cannot measure contrast ratios from accessibility tree data alone.

**ACC-07 Resize Text:** ⚠️ Requires Manual Review.

**ACC-08 Images of Text:** ✅ Likely pass. The site appears to use live text throughout. Product screenshots contain text but are representations of the product UI, which is an acceptable use.

**ACC-09 Reflow:** ⚠️ Requires Manual Review.

**ACC-10 Non-text Contrast:** ⚠️ Requires Manual Review.

**ACC-11 Text Spacing:** ⚠️ Requires Manual Review.

**ACC-12 Content on Hover or Focus:** ⚠️ Requires Manual Review. Navigation dropdowns appear on button click, which is appropriate. Tooltip behavior cannot be confirmed.

#### 5.2 Operable

**ACC-13 Keyboard:** ⚠️ Concern. The duplicated navigation (two complete nav bars in the DOM) means keyboard users must tab through approximately 60+ interactive elements before reaching main content. Combined with the absence of a skip link (ACC-16), this creates severe friction.

**ACC-14 No Keyboard Trap:** ⚠️ Requires Manual Review. The reCAPTCHA element (ref_247) could potentially trap keyboard focus. Cannot confirm without testing.

**ACC-15 Three Flashes:** ✅ No flashing content detected.

**ACC-16 Bypass Blocks:** ❌ Fail. No skip navigation link present. This is a critical WCAG 2.1 AA failure.

**ACC-17 Page Titled:** ✅ Pass. Page title is descriptive and unique: "Financial Licensing Software for Money Transmitters, Lenders, and Mortgage Providers | Brico".

**ACC-18 Focus Order:** ⚠️ Requires Manual Review.

**ACC-19 Link Purpose:** ⚠️ Issues. Two "Learn More" links have identical text but different destinations. Two "Login" links have identical text but point to different URLs (one to app.brico.ai/login, one to /contact). This violates link purpose clarity.

**ACC-20 Headings and Labels:** ⚠️ Issues. Heading hierarchy problems (see Finding 3). Duplicate headings (21 repeated license type headings).

**ACC-21 Focus Visible:** ⚠️ Requires Manual Review.

#### 5.3 Understandable

**ACC-22 Language of Page:** ✅ Pass. `lang="en"` is set on the HTML element.

**ACC-23 On Focus:** ✅ No unexpected focus-triggered changes detected.

**ACC-24 On Input:** ✅ No unexpected input-triggered changes detected.

**ACC-25 Error Identification:** ⚠️ Cannot evaluate — form errors were not triggered.

**ACC-26 Labels or Instructions:** ⚠️ Issue. At least 1 form input detected without a programmatic label (no `<label>`, no `aria-label`, no `aria-labelledby`).

#### 5.4 Robust

**ACC-27 Parsing:** ⚠️ Concern. The duplicated navigation structure and triplicated license type content suggest potential parsing issues. Would require HTML validator testing to confirm.

**ACC-28 Name, Role, Value:** Partially met. Navigation buttons, links, and regions have accessible roles. The banner landmark is used for the header. The main landmark wraps the content. The footer uses the contentinfo role. However, the empty "Form" generic element at the bottom of the homepage suggests the HubSpot form may not be communicating its role and contents to assistive technologies.

**ACC-29 Status Messages:** ⚠️ Cannot evaluate — no status messages were triggered.

**Score: 5/10 — Adequate (with Critical failures in ACC-16)**

### 6. Performance & Core Web Vitals

**Cannot Evaluate — requires PageSpeed Insights API call.**

No Lighthouse data was gathered during this audit. All criteria PERF-01 through PERF-09 are flagged for manual evaluation. Given the observations of 85 images on the homepage, duplicated DOM content (navigation rendered twice, license types rendered three times), and a HubSpot form embed loading via external JavaScript, there are potential performance concerns worth investigating — particularly LCP (PERF-02) and CLS (PERF-03) on mobile.

**Score: Cannot Evaluate**

### 7. SEO and Discoverability

**SEO-01 Page Title:** ✅ Pass. "Financial Licensing Software for Money Transmitters, Lenders, and Mortgage Providers | Brico" — descriptive, includes keywords, includes brand. At approximately 85 characters, it exceeds the recommended 50–60 character range, which means it will be truncated in search results.

**SEO-02 Meta Description:** ✅ Pass. "Brico is financial licensing software that automates MTL applications, renewals, and compliance for money transmitters, mortgage, EWA, lending, BitLicense. Save 50-90% vs legacy providers." — benefit-led, includes keywords, appropriate length (~170 characters, slightly over the 150–160 recommended range).

**SEO-03 H1 Tag:** ✅ Pass. One H1 present: "The New Standard of Financial Licensing". It could be more keyword-rich — it doesn't contain "financial licensing software" or "money transmitter", which are likely primary search terms.

**SEO-04 Heading Hierarchy:** ❌ Fail. H3 appears before any H2 (skipped level). Duplicate headings from carousel rendering. See Finding 3.

**SEO-05 Image Alt Text:** ✅ Pass. All 85 images have alt text. Product screenshots have detailed, descriptive alt text.

**SEO-06 Canonical Tag:** ✅ Pass. Canonical tag is present.

**SEO-07 Open Graph Tags:** ⚠️ Partial. og:title and og:description are present and populated. og:image is present. og:url is NOT present — this means social shares may not resolve to the preferred canonical URL.

**SEO-08 Robots Meta Tag:** ✅ Acceptable. No robots meta tag present, which defaults to index/follow (the desired behavior).

**SEO-09 Structured Data:** ✅ Present. One structured data block detected. Type not confirmed but likely Organization.

**SEO-10 URL Structure:** ✅ Pass. URLs are clean and descriptive: /about, /contact, /case-studies, /new-license-applications, /maintenance-and-renewals. However, all nav links contain extensive UTM tracking parameters appended in the href attributes — these should be applied via JavaScript or tag manager, not hardcoded in the HTML.

**SEO-11 Internal Linking:** ✅ Strong. All key pages are accessible from the homepage via descriptive navigation. Product pages, persona pages, case studies, and insights are all linked. Anchor text is meaningful.

**SEO-12 Page Indexability:** ✅ Pass. No noindex signals detected.

**Score: 7/10 — Adequate**

### 8. Content Hierarchy & Copywriting

**COPY-01 5-Second Test:** Mostly passes. "The New Standard of Financial Licensing" + subheading conveys *what Brico does*. *Who it's for* requires reading the subheading or glancing at the nav ("Money Services Businesses", "Lenders", etc.). *What to do next* is clear — "Get a Demo" is prominent.

**COPY-02 Benefit-Led vs. Feature-Led Framing:** Mixed. The stats section is strongly benefit-led ("Save 50-90% on licensing costs", "Use only 10-15% of your team's time"). However, the product sections default to feature descriptions ("Apply for new license applications across all US states at 1/10 the cost" — this is a hybrid). The competitive comparison is feature-led (listing platform capabilities rather than outcomes).

**COPY-03 Headline Specificity:** Partial gap. "The New Standard of Financial Licensing" is vague — it could describe any compliance modernization platform. Compare to what Brico's own data supports: a headline like "Get Licensed in Every State — 5X Faster, 90% Less Cost" would be specific, credible, and differentiated.

**COPY-04 Audience Clarity:** Adequate. The nav structure ("Who We Help" → MSBs, Lenders, Crypto, Mortgage, Startups) makes the audience clear for anyone who explores the navigation. The hero subheading mentions "Financial Institutions and FinTechs" explicitly.

**COPY-05 Narrative Flow and Page Arc:** Strong structure. The page arc follows: problem-awareness (hero) → credibility (logos) → proof of value (stats) → product scope (license types) → product details (features) → competitive differentiation → conversion (demo form). This is a logical, well-sequenced narrative.

**COPY-06 Scannability and Formatting:** Strong. Short sections, clear headings, stat cards, visual breaks. The competitive comparison table is highly scannable. No large blocks of unbroken text.

**COPY-07 Jargon and Readability:** Appropriate for audience. Terms like "MTL", "MSB", "BitLicense", and "DFAL" are industry-standard terminology that the target buyer uses daily. These are features, not bugs, for this audience. The hero copy avoids jargon appropriately.

**COPY-08 Proof and Credibility in Copy:** Mixed. Homepage stats ("Save 50-90%", "5X faster") are specific but unattributed — they're Brico's claims without source citations. The case studies page has strong proof (Funding Circle: 32% cost reduction, 50% time savings; LB Finanzas: 90% lower cost) but none of this is surfaced on the homepage. The competitive comparison table claims "High Functionality" vs. "Low or No Functionality" without naming competitors or citing evidence.

**COPY-09 CTA Copy Quality:** Mixed. "Get a Demo" and "Request a Demo" are specific and action-oriented. However, the inconsistent phrasing between them creates unnecessary ambiguity. "Learn More" (×2) is generic. "Schedule a Demo" at the bottom is a third variation of the same action — three different labels for one conversion goal.

**COPY-10 Tone Consistency:** Strong. Professional, confident, concise throughout. The /contact page's tone ("we'll show you how teams use Brico...") matches the homepage. No jarring shifts.

**COPY-11 Social Proof Copy:** Significant gap on homepage. Customer logos only — no named quotes, no results, no testimonials. The case studies page has strong named customer stories with specific outcomes, but this proof is completely absent from the homepage conversion flow.

**COPY-12 Error and Empty State Messaging:** Cannot evaluate — no error or empty states were triggered.

**Score: 7/10 — Adequate**

---

## Quick Wins

1. **Add a skip navigation link** — one line of HTML, fixes a Critical accessibility failure (ACC-16), and dramatically improves keyboard navigation.

2. **Point hero CTA to /contact instead of #demo** — the /contact page has superior expectation-setting copy and a reliably rendered form. One href change.

3. **Replace "Learn More" with specific CTA labels** — "Explore New Applications" and "See Maintenance & Renewals" improve both conversion and accessibility.

4. **Add `aria-hidden="true"` to inactive carousel slides** — prevents the 21 duplicate headings from polluting the accessibility tree and screen reader navigation.

5. **Add `og:url` meta tag** — ensures social shares resolve to the canonical URL. One line of HTML in the `<head>`.

## Strategic Recommendations

1. **Surface case study proof on the homepage.** The case studies page has specific, named, quantified customer results (Funding Circle, Bilt, 1Money, LB Finanzas) that answer the skeptical buyer's question. Add a "Customer Results" section between the competitive comparison and the demo form — even 2–3 pull quotes with attributed results would significantly strengthen the conversion funnel.

2. **Build a multi-tier engagement funnel.** The current site offers only one path: demo request. For a complex B2B sale with multiple stakeholders and long evaluation cycles, create at least two additional engagement paths: (a) a mid-intent option like a recorded product walkthrough or interactive product tour; (b) a low-intent option like a downloadable licensing requirements guide or email newsletter. This captures the significant percentage of visitors who are researching but not ready to commit to a sales conversation.

3. **Commission a full accessibility audit with manual testing.** This automated audit identified several WCAG failures (skip nav, heading hierarchy, form labels, duplicate link text), but approximately 60% of WCAG criteria require manual/human testing to evaluate. Given that Brico sells to enterprise compliance teams — organizations that increasingly require vendors to meet accessibility standards — a full WCAG 2.1 AA audit would both reduce legal risk and strengthen the sales position.

---

*This report was generated by an automated UX audit pipeline by Sari Sari Design.*
*Evaluation criteria: UX Audit Reference Checklist v1.0 (Feb 2026)*
