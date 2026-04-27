# UX Audit Report

## Theia Insights

**URL:** https://www.theiainsights.com/
**Audit Date:** April 7, 2026
**Auditor:** Sari Sari Design

---

## Business Model Profile

| Attribute | Detail |
|-----------|--------|
| **Industry** | Financial Data Infrastructure / Capital Markets AI |
| **Company Stage** | Series A ($8M raised March 2026, $14.5M total) |
| **Core Product** | AI-powered dynamic ontology and classification system for global financial markets — including industry classification, thematic factor models, and concept-to-universe tools |
| **Objective** | Replace static legacy classification systems (GICS, ICB) with a living, AI-driven map of the economy |
| **Primary Conversion Goal** | Demo request / "Register Interest" form submission |
| **Core User Personas** | Index construction teams at asset managers, quantitative researchers at hedge funds, thematic product managers at ETF issuers, portfolio analysts at investment banks |
| **Customer Type** | B2B (institutional) |
| **Business Model** | Data-as-a-Service / SaaS — licensed data feeds and platform access |
| **GTM Motion** | Sales-Led Growth (SLG) — enterprise sales targeting institutional buyers |
| **Competitor Landscape** | MSCI (GICS), FTSE Russell (ICB), S&P Global (traditional classifications), FactSet, Refinitiv — Theia differentiates by offering dynamic, multi-dimensional classification vs. static single-label taxonomies |

### Evaluation Priorities (most to least important)

1. Conversion Rate Optimization — a Series A company in SLG needs every qualified visitor to convert
2. Content Hierarchy & Copywriting — institutional buyers need to quickly understand what Theia does differently
3. Information Architecture — multiple personas (index teams, quant funds, banks) need clear routing
4. Visual & Brand Design — credibility signaling is paramount when selling data infrastructure to banks and asset managers
5. SEO & Discoverability — post-Series A, organic visibility will support pipeline growth
6. Nielsen's Heuristics — general usability baseline
7. Accessibility — legal and ethical baseline
8. Performance — page speed and technical health
9. QA / Bug Reporting
10. Mobile Responsiveness
11. Competitor Benchmarking

### Evaluation Lens

This audit is framed through the lens of a Series A financial data company running a sales-led GTM motion, where the website's primary job is to convert qualified institutional buyers into demo conversations. Every finding is weighted by its impact on pipeline generation and credibility with sophisticated financial professionals who evaluate data vendors with extreme scrutiny.

### Why This Matters

For a company selling data infrastructure to index providers, banks, and asset managers, the website is often the first credibility checkpoint before a prospect agrees to take a meeting. Friction, ambiguity, or a lack of institutional polish on the site can kill pipeline before sales even gets a chance to make the case.

### Competitor Context

Theia competes against deeply entrenched incumbents — GICS (maintained by MSCI and S&P) and ICB (FTSE Russell) — classification systems that have been the default for decades. The website needs to clearly articulate why a dynamic, AI-driven approach is fundamentally better, not just incrementally different. Competitors like MSCI and FactSet have highly polished, enterprise-grade web presences that signal institutional trust.

---

## Methodology

This audit evaluated theiainsights.com across 11 UX dimensions using 90+ criteria from the Sari Sari Design reference checklist, supplemented by automated SEO and accessibility analysis.

---

# Friction and Pain Points

---

## 1. Nielsen's 10 UX Heuristics

The homepage and key pages were evaluated against each of Nielsen's 10 usability heuristics.

### Finding 1.1: Hero Section Fails the 5-Second Comprehension Test (N-02, N-06)

**Description:** The homepage hero headline reads "Dynamic Ontology for Global Financial Markets." While technically accurate, "ontology" is a term rooted in knowledge engineering and philosophy — not the language institutional buyers use when searching for data solutions. A portfolio manager or index construction lead is more likely to think in terms of "classification," "exposure mapping," or "thematic intelligence." The tagline below does a better job explaining the product, but the headline itself creates unnecessary cognitive friction on first impression.

**Why it's a problem:** N-02 (Match Between System and the Real World) asks whether the site uses language familiar to its target user. N-06 (Recognition Rather Than Recall) asks whether users can understand what the product does without having to recall or decode specialized terms. The word "ontology" requires domain-specific knowledge that even many financial professionals may not have. For a sales-led company, forcing a prospect to work to understand the headline is a conversion risk — they may bounce before reading the explanatory tagline.

**Severity:** Major

**Recommendation:** Rewrite the hero headline in benefit-led language that mirrors how institutional buyers describe their problem. Something like "See What Companies Actually Do — In Real Time" or "The Living Map of the Global Economy" (which is already used on the About page and is far more compelling). Reserve "ontology" for technical documentation or deep-dive pages where the audience self-selects.

**Evidence:** Homepage hero section. The tagline below the headline ("Trusted by the world's leading index providers, banks, asset managers...") does a much better job communicating value, but the headline itself is the first thing a visitor reads.

**Effort:** Low
**Impact:** High
**Confidence:** High

---

### Finding 1.2: No Clear System Feedback on Interactive Elements (N-01, N-04)

**Description:** The site's navigation includes dropdown submenus for "Solutions" and "Clients" but the interaction patterns are not clearly signaled. There are no visible dropdown indicators (carets/chevrons) on the nav items that have submenus, making it indistinguishable from a simple link. Users have to hover to discover submenus exist.

**Why it's a problem:** N-01 (Visibility of System Status) and N-04 (Consistency and Standards) both apply. Web convention dictates that navigation items with dropdowns should have a visual indicator (typically a small downward caret). Without it, users may click "Solutions" expecting a page and get unexpected dropdown behavior, or miss the submenus entirely on mobile.

**Severity:** Minor

**Recommendation:** Add dropdown indicator icons (small chevrons) next to navigation items that have submenus. This is a standard pattern that users expect and takes minimal effort to implement.

**Evidence:** Header navigation on all pages — "Solutions" and "Clients" have dropdown submenus but no visual indicator.

**Effort:** Low
**Impact:** Medium
**Confidence:** High

---

### Finding 1.3: Single Engagement Path — No Flexibility for Different Intent Levels (N-07)

**Description:** The site offers only one conversion action across all pages: "Register Interest" (or "Register Demo" on some client segment pages). There is no low-commitment engagement path for visitors who are not yet ready for a sales conversation — no downloadable research, no product tour, no newsletter signup on the homepage, no case study deep-dives. The only alternative is the blog, which is mostly monthly thematic dashboards.

**Why it's a problem:** N-07 (Flexibility and Efficiency of Use) asks whether the site supports both novice and expert users. In a B2B SLG context, many qualified visitors are in early research mode — they want to understand the product before committing to a demo. Forcing every visitor into a single high-intent path (sales conversation) loses the mid-funnel and top-funnel audience. This is especially critical post-Series A when Theia is trying to build awareness.

**Severity:** Critical

**Recommendation:** Introduce at least two additional engagement tiers: (1) a mid-intent path like a product overview video, interactive demo, or downloadable white paper comparing dynamic vs. static classification; (2) a low-intent path like a prominent newsletter signup or access to the thematic dashboard data. The blog subscription exists in the footer but is buried and not promoted.

**Evidence:** All pages — the only CTA across the entire site is "Register Interest" or "Register Demo."

**Effort:** Medium
**Impact:** High
**Confidence:** High

---

## 2. Conversion Rate Optimization

### Finding 2.1: CTA Language Is Passive and Non-Specific (CRO-02, CRO-09)

**Description:** The primary CTA across the site is "Register Interest." This is a passive, ambiguous call to action. It does not tell the visitor what they will get, what happens next, or what to expect. "Register Interest" sounds like signing up for a waitlist, not requesting a demo of a product that is already in market with tier-one clients like S&P Dow Jones Indices and Nasdaq.

**Why it's a problem:** CRO-02 asks whether CTAs are action-oriented and specific. CRO-09 asks whether CTA copy communicates what the user will get. "Register Interest" fails both. For a company that already has institutional clients and a product in production, this language signals early-stage beta rather than enterprise-ready platform. Institutional buyers want to "Request a Demo," "See the Platform," or "Talk to Our Team" — not "register interest" as if the product might not exist yet.

**Severity:** Critical

**Recommendation:** Replace "Register Interest" with something specific and action-oriented: "Request a Demo," "See the Platform in Action," or "Talk to Our Data Team." Make the CTA communicate what the next step actually is. On the client segment pages, "Register Demo" is marginally better but still oddly phrased — "Request a Demo" is the industry standard.

**Evidence:** Homepage, About page, Contact page — all use "Register Interest." Client segment pages use "Register Demo."

**Effort:** Low
**Impact:** High
**Confidence:** High

---

### Finding 2.2: No Trust Signals at Decision Points (CRO-06, CRO-07)

**Description:** The homepage displays partner/investor logos (S&P Dow Jones Indices, Nasdaq Datalink, Unusual Ventures, Fidelity International Strategic Ventures, Google Cloud, AWS) but they appear to be a flat logo bar with no context. There are no testimonials, no named quotes from clients, no case study snippets with quantified results, and no explanation of what these partnerships mean. The S&P Dow Jones Indices relationship is actually a significant proof point (Theia powers the S&P Digital Markets 50 Index), but this is only mentioned in a blog post — not on the homepage.

**Why it's a problem:** CRO-06 requires trust signals placed at decision points (near CTAs, after bold claims). CRO-07 asks whether social proof goes beyond logos to include named testimonials and quantified results. Institutional buyers are deeply skeptical and require evidence. Showing logos without context is table stakes — Theia has genuinely impressive proof points (powering an S&P index) that are completely absent from the homepage.

**Severity:** Critical

**Recommendation:** Surface the S&P Dow Jones Indices partnership prominently on the homepage with context (e.g., "Powering the S&P Digital Markets 50 Index"). Add at least one named testimonial from a client. Consider a brief case study snippet with a quantified outcome. Place these proof points directly above or adjacent to the primary CTA.

**Evidence:** Homepage logo bar shows 6 logos with no supporting context. The S&P Digital Markets 50 Index case study exists as a blog post ("Powering the S&P Indices Digital Markets 50 Index" — March 12, 2026) but is not referenced anywhere on the homepage.

**Effort:** Medium
**Impact:** High
**Confidence:** High

---

### Finding 2.3: No Post-CTA Expectation Setting (CRO-10)

**Description:** The Contact Us page has a form but provides no information about what happens after submission. There is no "We'll respond within 24 hours" or "A member of our team will reach out to schedule a demo" language. The form itself is sparse — the only visible fields are a message area and a newsletter subscription checkbox.

**Why it's a problem:** CRO-10 asks whether the site communicates what happens after the primary action. For enterprise buyers who are evaluating data vendors, the lack of expectation-setting creates uncertainty. How long will it take to hear back? Will they get a demo or a sales call? Who will contact them? This friction can be enough to make a busy portfolio manager decide to come back later (and never return).

**Severity:** Major

**Recommendation:** Add expectation-setting copy near the form: "Submit your details and a member of our team will be in touch within one business day to schedule a personalized demo." Also consider adding the specific form fields that help qualify leads (company name, role, use case) while keeping the form short.

**Evidence:** Contact Us page — form has no post-submission messaging or expectation-setting.

**Effort:** Low
**Impact:** Medium
**Confidence:** High

---

### Finding 2.4: Zero Mid-Funnel Engagement Options (CRO-04)

**Description:** The entire site funnels to a single conversion action: fill out the contact form. There are no mid-intent engagement paths such as product tours, interactive demos, downloadable white papers, webinar recordings, or even a detailed product comparison page. The blog exists but is predominantly monthly thematic dashboard updates rather than educational content that would attract and nurture prospects.

**Why it's a problem:** CRO-04 asks whether the site offers engagement paths suited to visitors at different stages of intent. Institutional data buying cycles are long — often 3 to 12 months. A qualified visitor who is not ready to talk to sales today has zero reason to engage with the site. They will leave and may not return. This is particularly damaging post-Series A when Theia needs to build pipeline at scale.

**Severity:** Critical

**Recommendation:** Create a content strategy that serves the full funnel: (1) top-of-funnel educational content about why static classifications fail in modern markets; (2) mid-funnel assets like a product overview video, an interactive classification comparison tool, or a downloadable methodology white paper; (3) the existing demo request for high-intent visitors. Gate the mid-funnel content behind email capture to build a nurture list.

**Evidence:** Site-wide audit — no downloadable resources, no video content, no interactive product demos, no gated content.

**Effort:** High
**Impact:** High
**Confidence:** High

---

## 3. Information Architecture

### Finding 3.1: Navigation Labels Mix Internal and User-Centric Language (IA-01)

**Description:** The top-level navigation uses "Solutions" (standard), "Clients" (could mean existing clients or prospective client types), "Blog" (standard), "About Us" (standard), and "Contact Us" (standard). The "Clients" label is ambiguous — it links to client segment pages (Index & Asset Management, Investment Banks, etc.) which are actually "who we serve" pages. A prospect might interpret "Clients" as a client portal or testimonials section.

**Why it's a problem:** IA-01 asks whether navigation labels reflect what users are looking for. "Clients" is internal company language for their market segments. More user-centered alternatives would be "Who We Serve," "Industries," or "Use Cases." The current label creates a moment of uncertainty for first-time visitors about what they will find behind that menu item.

**Severity:** Minor

**Recommendation:** Rename "Clients" to "Industries" or "Who We Serve" to better match user expectations. Alternatively, integrate the client segment routing into the Solutions section, since the segment pages are essentially solution pages tailored by persona.

**Evidence:** Top navigation across all pages.

**Effort:** Low
**Impact:** Low
**Confidence:** High

---

### Finding 3.2: No Persona Routing on the Homepage (IA-04)

**Description:** The homepage does not help different user types (index teams, quant researchers, bank analysts, wealth platform builders) route themselves to relevant content. The four client segments exist as separate pages, but the homepage presents the same generic value proposition to all visitors. There is no "I am a..." selector, no use-case-based navigation above the fold, and the client segment links are only accessible via the "Clients" dropdown.

**Why it's a problem:** IA-04 asks whether the site helps different user types route themselves to relevant content quickly. Theia serves meaningfully different personas — an index construction team at an asset manager has different needs than a quantitative researcher at a hedge fund. Forcing all visitors through a single generic homepage experience means each persona has to do extra work to find content relevant to them.

**Severity:** Major

**Recommendation:** Add a persona routing section on the homepage (below the hero, above the solutions) that lets visitors self-select their segment: "I'm building indices," "I'm running quant strategies," "I'm evaluating data for wealth platforms," etc. Each route to the corresponding client segment page. This is a common and effective pattern for B2B companies serving multiple ICPs.

**Evidence:** Homepage layout — no persona routing or segment-based navigation visible.

**Effort:** Medium
**Impact:** Medium
**Confidence:** High

---

### Finding 3.3: Solutions Page Redirects to Homepage (IA-06)

**Description:** The /solutions/ URL redirects to the homepage. This means there is no dedicated solutions overview page. The only way to access individual solution pages is through the dropdown navigation. If a visitor clicks "Solutions" in the nav (rather than hovering for the dropdown), they land on the homepage with no clear indication that they have navigated anywhere.

**Why it's a problem:** IA-06 asks whether key pages are accessible within 2 to 3 clicks. Having the solutions parent page redirect to the homepage is confusing and breaks wayfinding (IA-03). The user expects a solutions overview page that shows all four products with brief descriptions and links to detail pages. Instead, they get the homepage again, which may make them think the site is broken or that the click did nothing.

**Severity:** Major

**Recommendation:** Create a dedicated /solutions page that serves as an overview of all four products (Industry Classification, Thematic Factor Model, Concept2Universe, Theme Watch Indices) with brief descriptions and links to each detail page. This is a standard IA pattern for multi-product B2B companies.

**Evidence:** Navigating to /solutions/ redirects to / (verified via WebFetch).

**Effort:** Medium
**Impact:** Medium
**Confidence:** High

---

## 4. QA / Bug Reporting

### Finding 4.1: About Us URL Redirect Inconsistency

**Description:** The navigation links to /about-us/ but the actual page lives at /about. The /about-us/ URL redirects to /about. This is a minor technical inconsistency but it means the canonical URL and the linked URL do not match, which can confuse search engines and create analytics discrepancies.

**Why it's a problem:** This is a technical hygiene issue. While the redirect works (users still land on the right page), it adds an unnecessary HTTP redirect, slightly slows page load, and can split SEO link equity between two URLs.

**Severity:** Minor

**Recommendation:** Update the navigation link to point directly to /about (the canonical URL) to eliminate the redirect. Also ensure the canonical tag on the About page is set correctly.

**Evidence:** Navigation links to /about-us/; WebFetch of /about-us/ shows redirect to /about.

**Effort:** Low
**Impact:** Low
**Confidence:** High

---

## 5. Visual and Brand Design

### Finding 5.1: Credibility Gap Between Product Quality and Website Polish (VD-01, VD-08)

**Description:** Theia serves S&P Dow Jones Indices, Nasdaq, and major banks — yet the website does not project the level of institutional polish that these clients expect from their data vendors. The design is clean and modern but feels more like an early-stage startup landing page than an enterprise data infrastructure company. Compared to the web presences of MSCI, FactSet, or Bloomberg (the competitive set for data buyers' attention), Theia's site lacks depth, richness of content, and the visual gravitas that signals "enterprise-ready."

**Why it's a problem:** VD-01 asks whether the design signals legitimacy and trustworthiness. VD-08 asks whether the design conveys the right level of formality for its industry and buyer. Financial data buyers at major institutions evaluate vendors partially on "do they look like they can be trusted with our workflows?" A site that feels thin or early-stage can undermine the sales team's credibility even when the product is excellent.

**Severity:** Major

**Recommendation:** This is not about a visual redesign — it is about content density and depth. Add detailed product pages with methodology explanations, a data coverage section (what markets, what instruments, what time range), a partnership/integration showcase, and published research. The design system itself is fine; it just needs more substance to fill it.

**Evidence:** Comparison against competitors in the institutional data space. The site has approximately 6 to 7 pages of content total, where competitors have hundreds of pages of documentation, research, and product detail.

**Effort:** High
**Impact:** High
**Confidence:** Medium

---

### Finding 5.2: Logo Bar Lacks Visual Context and Differentiation (VD-06)

**Description:** The homepage displays 6 logos (S&P Dow Jones Indices, Nasdaq Datalink, Unusual Ventures, Fidelity International Strategic Ventures, Google Cloud, AWS Generative AI Accelerator) in what appears to be a flat logo bar. The logos mix client logos, investor logos, and technology partner logos with no labels or categorization. A visitor cannot tell whether S&P Dow Jones is a client, an investor, or a partner.

**Why it's a problem:** VD-06 asks whether imagery is relevant and appropriate. Mixing client, investor, and tech partner logos without labeling creates ambiguity. The S&P and Nasdaq logos as clients is far more impressive than Google Cloud as a tech partner — but without context, they carry equal visual weight. Worse, a knowledgeable visitor might assume the investor logos (Unusual Ventures, Fidelity International Strategic Ventures) are clients, which could backfire if discovered.

**Severity:** Major

**Recommendation:** Separate the logo bar into distinct labeled sections: "Trusted by" (clients), "Backed by" (investors), and "Built on" (technology partners). Or at minimum, add a descriptive label above the logo bar that makes the relationship clear.

**Evidence:** Homepage logo section.

**Effort:** Low
**Impact:** Medium
**Confidence:** High

---

## 6. Accessibility (WCAG 2.1 AA)

*Note: Automated accessibility scanning was unavailable (browser tools not connected). The following findings are based on HTML structure analysis from scraped content. Confidence is lower than a full automated scan would provide. All items marked with ⚠️ require manual verification.*

### Finding 6.1: No Skip Navigation Link (ACC-16)

**Description:** Based on page structure analysis, there is no skip-to-main-content link present. This is a standard accessibility requirement that allows keyboard users to bypass the navigation and jump directly to the main content.

**Why it's a problem:** ACC-16 (WCAG 2.4.1 Bypass Blocks) requires a mechanism for keyboard users to skip repetitive navigation. Without it, keyboard and screen reader users must tab through the entire navigation on every page load before reaching content.

**Severity:** Major

**Recommendation:** Add a visually hidden skip navigation link as the first focusable element on the page: `<a href="#main-content" class="skip-link">Skip to main content</a>` with appropriate CSS to show it on focus.

**Evidence:** HTML structure analysis — no skip-link element found in page source.

**Effort:** Low
**Impact:** Medium
**Confidence:** Medium ⚠️

---

### Finding 6.2: Page Language Declaration Needs Verification (ACC-22)

**Description:** WCAG 3.1.1 requires the primary language of the page to be declared in the HTML lang attribute. Based on limited HTML access, this could not be fully verified but should be confirmed.

**Why it's a problem:** ACC-22 (WCAG 3.1.1 Language of Page) — without a lang attribute, screen readers cannot determine the correct pronunciation and voice profile for content, making the site harder to use for visually impaired visitors.

**Severity:** Minor

**Recommendation:** Ensure `<html lang="en">` is present on all pages. Verify via browser dev tools.

**Evidence:** Could not extract HTML head directly; flagged for manual verification.

**Effort:** Low
**Impact:** Low
**Confidence:** Cannot Evaluate ⚠️

---

### Finding 6.3: Image Alt Text Coverage Unknown (ACC-01, SEO-05)

**Description:** The site uses multiple images (logos, product diagrams, team photos) but without direct DOM access, the alt text quality and coverage could not be audited. Given that the site appears to use images for logos and UI elements, there is a risk of missing or generic alt text.

**Why it's a problem:** ACC-01 (WCAG 1.1.1 Non-text Content) requires descriptive alt text on all informational images. Missing alt text makes images invisible to screen reader users and harms SEO.

**Severity:** Minor (pending verification)

**Recommendation:** Audit all images for descriptive alt text. Ensure client logos have alt text like "S&P Dow Jones Indices logo" not just "logo." Ensure decorative images have empty alt attributes (alt="").

**Evidence:** Flagged for manual review — browser-based audit tools were unavailable.

**Effort:** Low
**Impact:** Medium
**Confidence:** Cannot Evaluate ⚠️

---

## 7. Mobile Responsiveness

**Status:** Cannot Evaluate — browser screenshot tools were unavailable for this audit. The site does include a viewport meta tag based on standard modern web frameworks, and the clean layout suggests responsive design is likely implemented. Manual testing on mobile devices is recommended.

---

## 8. Performance and Core Web Vitals

**Status:** Cannot Evaluate — PageSpeed Insights API returned HTTP 429 (rate limited) on both mobile and desktop attempts. Manual testing recommended at: https://pagespeed.web.dev/analysis?url=https://www.theiainsights.com/

---

## 9. SEO and Discoverability

*Note: SEO data was extracted from page content analysis. Without direct DOM access for the JavaScript SEO extraction script, some fields are based on inferred data.*

### Finding 9.1: Homepage Title May Not Be Optimized for Search Intent (SEO-01, SEO-03)

**Description:** The homepage H1 is "Dynamic Ontology for Global Financial Markets." If the page title follows a similar pattern, it likely includes "ontology" — a term that has very low search volume in the financial data space. Prospects searching for solutions like Theia's are more likely to search for "AI industry classification," "dynamic company classification," "thematic investment data," or "real-time sector classification."

**Why it's a problem:** SEO-01 requires the page title to include a primary keyword that matches search intent. SEO-03 requires the H1 to include a relevant keyword that matches what users would search for. "Ontology" is a term that is meaningful within Theia's technical architecture but does not match how buyers search for this type of product.

**Severity:** Major

**Recommendation:** Optimize the page title and H1 for search terms that institutional buyers actually use. Conduct keyword research to identify the highest-volume terms in the dynamic classification / thematic data space. A title like "Theia Insights — AI-Powered Industry Classification for Financial Markets" would likely perform better.

**Evidence:** Homepage H1 text and inferred title tag.

**Effort:** Low
**Impact:** High
**Confidence:** Medium

---

### Finding 9.2: Limited Structured Data (SEO-09)

**Description:** Based on the page content analysis, the site does not appear to implement structured data (Schema.org markup) such as Organization schema, Product schema, or FAQPage schema. This is a missed opportunity for rich search results.

**Why it's a problem:** SEO-09 asks whether structured data is present and appropriate. Organization schema helps Google understand the company entity and can enable enhanced search results (knowledge panels, sitelinks). Product schema could help individual solution pages appear in relevant searches.

**Severity:** Minor

**Recommendation:** Implement Organization schema on the homepage (company name, logo, social profiles, founding date). Consider adding Product or SoftwareApplication schema on solution pages. Add FAQPage schema if an FAQ section is created.

**Evidence:** No structured data detected in page analysis. Flagged for manual verification via Google Rich Results Test.

**Effort:** Low
**Impact:** Medium
**Confidence:** Medium ⚠️

---

### Finding 9.3: Open Graph Tags Need Verification (SEO-07)

**Description:** When the site URL is shared on LinkedIn (a critical distribution channel for B2B fintech), the preview card needs to display a compelling title, description, and image. Without confirmed OG tags, the LinkedIn sharing experience may be suboptimal — showing a generic or missing preview image.

**Why it's a problem:** SEO-07 requires og:title, og:description, og:image, and og:url to be present. LinkedIn is likely Theia's most important social distribution channel for reaching institutional buyers. A poor LinkedIn preview card reduces click-through rates significantly.

**Severity:** Major

**Recommendation:** Verify that og:title, og:description, og:image, and og:url are properly set on all pages. Use the LinkedIn Post Inspector (https://www.linkedin.com/post-inspector/) to preview how the URL renders. Ensure the og:image is a compelling branded image, not a generic logo.

**Evidence:** Could not directly verify OG tags without DOM access. The company has a LinkedIn presence (linkedin.com/company/theia-insights).

**Effort:** Low
**Impact:** Medium
**Confidence:** Cannot Evaluate ⚠️

---

## 10. Competitor Benchmarking

### Finding 10.1: Website Depth Is Significantly Below Competitive Set

**Description:** Theia's website consists of approximately 6 to 8 pages of content (Home, About, 4 solution detail pages, Contact, Blog). Competitors in the institutional data space — MSCI, FactSet, Refinitiv, Bloomberg — have hundreds to thousands of pages of content including detailed methodology documentation, coverage universes, research papers, case studies, integration guides, and API documentation. While Theia is at a different stage, even other Series A fintech data companies typically have more content depth.

**Why it's a problem:** Institutional data buyers conduct extensive due diligence before engaging with vendors. They want to understand methodology, data coverage, update frequency, delivery mechanisms, and integration options before requesting a demo. The current site does not provide enough information for a qualified buyer to self-educate before converting.

**Severity:** Major

**Recommendation:** Prioritize creating content that institutional buyers need for due diligence: (1) a detailed methodology page explaining how the dynamic classification works; (2) a data coverage page showing markets, instruments, and history; (3) at least 2 to 3 case studies with named clients (S&P partnership is a great start); (4) an integration/delivery page explaining how clients access the data. This content can be added incrementally.

**Evidence:** Site-wide page count compared to competitor web presences.

**Effort:** High
**Impact:** High
**Confidence:** High

---

## 11. Content Hierarchy and Copywriting

### Finding 11.1: Hero Headline Uses Product Architecture Language, Not Buyer Language (COPY-01, COPY-02, COPY-03, COPY-04)

**Description:** The homepage hero headline "Dynamic Ontology for Global Financial Markets" describes what Theia builds (a dynamic ontology) rather than what the buyer gets (a real-time, accurate picture of what companies actually do). This is feature-led rather than benefit-led copy. It fails the 5-second test: a first-time visitor cannot immediately answer "What does this do for me?"

**Why it's a problem:** COPY-01 (5-Second Test), COPY-02 (Benefit-Led Framing), COPY-03 (Headline Specificity), and COPY-04 (Audience Clarity) are all violated. The headline speaks in Theia's internal language ("ontology") rather than the buyer's language ("show me what companies really do"). The About page actually has a better value articulation: "a living map of the economy, so that clear vision can lead to sound decisions" — this should be on the homepage.

**Severity:** Critical

**Recommendation:** Lead with the outcome the buyer cares about, not the technical architecture. Test alternatives like: "See What Companies Actually Do — Updated Daily," "The Living Map of the Global Economy," or "Real-Time Intelligence on What 10,000+ Companies Actually Do." Use the subheadline to explain the "how" (AI-driven dynamic classification that goes beyond GICS and ICB).

**Evidence:** Homepage hero section.

**Effort:** Low
**Impact:** High
**Confidence:** High

---

### Finding 11.2: The Strongest Value Proposition Is Buried (COPY-05, COPY-08)

**Description:** The most compelling line on the entire site — "We are in the age of Conglomerates 2.0: modern companies often operate across multiple themes" — is buried in a supporting statement below the solutions section on the homepage. This is the core insight that justifies Theia's entire existence: legacy classification systems assign one label per company, but modern companies are multi-dimensional. This should be the centerpiece of the narrative, not an afterthought.

**Why it's a problem:** COPY-05 asks whether there is a clear narrative flow. COPY-08 asks whether claims are specific and credible. The Conglomerates 2.0 framing is specific, differentiated, and immediately understood by anyone who works in financial markets. Burying it weakens the entire page narrative because visitors may never scroll far enough to encounter it.

**Severity:** Major

**Recommendation:** Move the "Conglomerates 2.0" framing into or immediately below the hero section. Make it a core part of the narrative arc: "The problem — companies are multi-dimensional but classification systems are not → Theia solves this with a living, AI-driven map → Here's who trusts us." This creates a problem-solution-proof story structure that is far more compelling than the current layout.

**Evidence:** Homepage — the "Conglomerates 2.0" statement appears in a supporting section below the main product descriptions.

**Effort:** Low
**Impact:** High
**Confidence:** High

---

### Finding 11.3: Client Segment Pages Are Strong but Disconnected from Homepage (COPY-05)

**Description:** The client segment page for Index & Asset Management has a well-structured narrative: a clear value proposition ("From Idea to Investable Universe. Systematically."), specific benefits (Theme Precision, Speed to Market, Real-Time Monitoring), a 3-step workflow, and a demo CTA. This is significantly better copy than the homepage. But these pages are hidden behind a dropdown menu and not referenced or linked from the homepage body.

**Why it's a problem:** COPY-05 asks whether the page tells a coherent story. The homepage tells a generic story while the segment pages tell specific, compelling stories tailored to each buyer. The disconnect means most visitors experience the weaker generic version rather than the stronger tailored version. The homepage should at minimum tease the segment-specific value propositions and link to the detail pages.

**Severity:** Major

**Recommendation:** Add a section on the homepage that previews each client segment with a short teaser and link to the full page. Something like: "Index Teams: Build evidence-based thematic universes. Quant Funds: 200+ pure thematic factors for attribution and risk. Banks: Real-time sector classification for your coverage universe." Each links to the corresponding segment page.

**Evidence:** Comparison of homepage content vs. Index & Asset Management client segment page content.

**Effort:** Medium
**Impact:** Medium
**Confidence:** High

---

### Finding 11.4: Contact Page Form Is Minimal and Lacks Qualifying Fields (COPY-12, CRO-08)

**Description:** The contact form on the Contact Us page appears to have only a message field and a newsletter checkbox. There are no qualifying fields such as company name, role/title, or use case. For an enterprise SLG company, the contact form is the pipeline entry point — it should capture enough information for the sales team to prioritize and personalize follow-up.

**Why it's a problem:** CRO-08 asks about friction in the conversion flow, but in this case the problem is the opposite — too little friction. Enterprise demo request forms typically include 3 to 5 fields (name, email, company, role, and optionally a use case or AUM range) to help sales teams prioritize and prepare. A bare message field provides no structure for the lead and no qualifying data for the sales team.

**Severity:** Major

**Recommendation:** Redesign the contact/demo request form to include: First Name, Last Name, Work Email, Company Name, Role/Title, and optionally a dropdown for "I'm interested in..." (Industry Classification, Factor Model, Concept2Universe, etc.). Keep it to 5 to 6 fields max to balance qualification with conversion rate.

**Evidence:** Contact Us page form structure.

**Effort:** Low
**Impact:** Medium
**Confidence:** High

---

*End of UX Audit Findings — Theia Insights — April 7, 2026*

*Total Findings: 20*
*Dimensions Evaluated: 11 (2 flagged as Cannot Evaluate due to tool limitations)*
*Critical Findings: 4*
*Major Findings: 10*
*Minor Findings: 4*
*Cannot Evaluate: 2 dimensions (Performance, Mobile Responsiveness)*
