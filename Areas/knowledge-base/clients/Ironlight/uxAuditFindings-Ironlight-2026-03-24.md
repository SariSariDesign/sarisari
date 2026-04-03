# UX Audit Report

## Ironlight

**URL:** https://ironlight.io | **Audit Date:** March 24, 2026

---

## Business Model Profile

| Field | Value |
|---|---|
| **Industry** | Fintech — Tokenized Securities Infrastructure |
| **Company Stage** | Series A ($21M, March 2026) |
| **Core Product/Service** | Regulated marketplace and technology platform for tokenizing, distributing, and trading real-world assets as digital securities |
| **Objective** | Become the regulated infrastructure layer for tokenized securities — bridging traditional finance workflows with blockchain-based settlement |
| **Primary Conversion Goal** | Contact form / "Get in Touch" (sales-led engagement request) |
| **Core User Personas / ICPs** | (1) Broker-Dealers seeking to modernize systems and reduce reconciliation costs, (2) Wealth Advisors / RIAs looking for liquid access to alternative investments, (3) Issuers (PE funds, real estate, structured products) seeking broader distribution and liquidity |
| **Customer Type** | B2B |
| **Business Model** | Infrastructure platform (per-transaction revenue + technology licensing) |
| **GTM Motion** | Sales-Led Growth (SLG) |
| **Competitor Landscape** | Securitize, tZERO, INX, R3, Ondo Finance, Backed Finance (xStocks), Dinari, Remora Markets. Ondo controls ~58% of the tokenized equity market; Ironlight ranks 36th among 228 active competitors. |

### Evaluation Priorities

1. Conversion Rate Optimization
2. Content Hierarchy & Copywriting
3. Visual & Brand Design
4. Information Architecture
5. Nielsen's 10 Heuristics
6. SEO & Discoverability
7. Accessibility
8. Performance & Core Web Vitals
9. QA / Bug Reporting
10. Mobile Responsiveness
11. Competitor Benchmarking

### Methodology

This audit evaluates Ironlight's marketing website across 11 UX dimensions using a structured reference checklist of 80+ criteria, supplemented by SEO metadata extraction, competitive analysis, and visual inspection of all publicly accessible pages.

### Evaluation Lens

This audit is framed for a Series A, sales-led B2B fintech selling regulated tokenization infrastructure to institutional buyers — meaning the website must establish credibility with compliance-conscious financial institutions while clearly differentiating from 228+ competitors in a rapidly expanding market. Every finding is weighted by its impact on institutional trust and pipeline generation.

### Why This Matters

For a freshly funded Series A company in the tokenized securities space, the website is the first credibility checkpoint for broker-dealers and issuers evaluating whether to trust Ironlight with regulated financial transactions. Unclear messaging or missing trust signals don't just cost page views — they cost enterprise deals where individual contracts represent six- and seven-figure revenue.

### Competitor Context

The tokenized securities market has crossed $1B in total on-chain value, with Ondo Finance and xStocks forming an early duopoly controlling ~82% of the tokenized equity market. Ironlight's differentiator is its FINRA-regulated ATS with on-chain settlement — a compliance-first positioning that competitors like Securitize also claim. The website must make this regulatory advantage unmistakably clear to institutional buyers who prioritize compliance above all else.

---

# Friction or Pain Points

## 1. Nielsen's 10 Usability Heuristics

Evaluates whether the interface follows fundamental usability principles that reduce cognitive load, prevent errors, and support users in accomplishing their goals.

### Finding 1: "DeFi to TradFi" framing alienates the primary buyer

- **Description:** The first descriptive text on the homepage reads: "Ironlight is bringing DeFi to TradFi by integrating with existing TradFi systems, while providing the benefits of DeFi technologies." This frames the product from a crypto-native perspective — DeFi as the protagonist being brought into TradFi — rather than framing it from the buyer's perspective (TradFi professionals gaining new capabilities).
- **Why it's a problem:** Violates **N-02 Match Between System and the Real World**. Ironlight's ICPs are broker-dealers, wealth advisors, and issuers — TradFi professionals who think in terms of settlement, compliance, and custody. Framing the value proposition as "DeFi coming to you" centers the crypto narrative rather than the institutional buyer's language and mental model. This creates cognitive dissonance for compliance-conscious buyers who may associate "DeFi" with regulatory risk, not operational improvement.
- **Severity:** Major
- **Recommendation:** Reframe the description to center the institutional buyer's perspective: e.g., "Ironlight gives financial institutions the efficiency of blockchain-based settlement without leaving existing workflows." Remove "DeFi" from customer-facing homepage copy entirely — it's a technology layer, not a value proposition for TradFi buyers.
- **Evidence:** Homepage "What We Do" section, first descriptive paragraph.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 2: Heading hierarchy violations across the homepage

- **Description:** The homepage has no H1 tag. The heading hierarchy begins with H3 ("What We Do"), jumps to H2 ("Trusted by top financial institutions"), then back to H3 for customer segments. H4 tags are used for value propositions ("Liquidity," "Open Access Model," "Institutional-Grade Technology") without a parent H3. The heading levels skip and repeat without logical nesting.
- **Why it's a problem:** Violates **N-04 Consistency and Standards**. Broken heading hierarchy undermines semantic page structure, impacting both how users scan the page and how assistive technologies interpret content relationships. For a page that needs to communicate a complex, multi-product offering clearly, the lack of structural hierarchy makes content feel disconnected rather than narrative.
- **Severity:** Minor
- **Recommendation:** Restructure headings: H1 for the hero headline ("Tokenization for Traditional Finance"), H2 for major sections ("What We Do," "Why Ironlight," "Who Do We Work With"), H3 for subsections. Ensure heading levels are sequential with no skipped levels.
- **Evidence:** DOM inspection shows H3 before H2, no H1 present, H4 without parent H3.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 3: No visible system feedback on navigation interactions

- **Description:** The navigation menu items ("Platform," "Solutions") contain dropdown sub-menus, but there is no visual indicator (chevron, arrow, or other affordance) signaling that these items expand into sub-menus. The active page state in the navigation is not visually distinguished from inactive states.
- **Why it's a problem:** Violates **N-01 Visibility of System Status** and **N-06 Recognition Rather Than Recall**. Users cannot tell which page they're on or which navigation items have sub-pages without hovering/clicking. For institutional buyers evaluating a complex multi-product platform, clear wayfinding reduces cognitive load and supports self-directed exploration.
- **Severity:** Minor
- **Recommendation:** Add dropdown indicator icons (chevrons) to nav items with sub-menus. Implement active state styling (underline, bold, or accent color) for the current page's nav item.
- **Evidence:** Homepage navigation inspection.
- **Effort Rating:** Low
- **Impact Rating:** Low
- **Confidence Rating:** Medium

---

## 2. Conversion Rate Optimization

Evaluates whether the site effectively moves visitors toward its primary conversion goal through clear messaging, calls to action, and engagement paths suited to visitors at different intent levels.

### Finding 4: Single, generic CTA with no intent segmentation

- **Description:** The entire website relies on a single conversion action: "GET IN TOUCH" / "Let's chat!" contact form. Every page, every section, every decision point funnels to the same generic contact form. There are no product tours, downloadable whitepapers, case study pages, ROI calculators, webinar recordings, or newsletter signups.
- **Why it's a problem:** Violates **CRO-04 Engagement Path Variety**. Not all visitors arrive ready for a sales conversation. Broker-dealers conducting vendor due diligence, compliance officers evaluating regulatory posture, or wealth advisors comparing platforms need mid-funnel content to build conviction before engaging sales. A single binary "contact us or leave" choice means Ironlight captures only the highest-intent visitors and loses the larger pool of evaluators who need more information before committing.
- **Severity:** Critical
- **Recommendation:** Add at least 2-3 engagement paths for different intent levels: (1) High intent: "Request a Demo" or "Talk to Our Team"; (2) Mid intent: downloadable one-pager, product tour video, or case study; (3) Low intent: newsletter signup or "Subscribe to Updates." The Calendly booking link exists on the contact page — promote it more prominently as a direct scheduling option for high-intent visitors.
- **Evidence:** All pages funnel to /contact form. No downloadable content, no product demos, no mid-funnel paths exist anywhere on the site.
- **Effort Rating:** Medium
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 5: "GET IN TOUCH" CTA lacks specificity

- **Description:** The primary CTA across the site is "GET IN TOUCH" — a generic, passive label that doesn't communicate what the visitor will get or what happens next. It appears in the navigation bar and at the bottom of most page sections.
- **Why it's a problem:** Violates **CRO-02 CTA Specificity and Placement**. "Get in touch" is one of the least effective CTA labels in B2B — it doesn't set expectations, create urgency, or communicate value. For a Series A company competing against established platforms like Securitize, the CTA should signal the specific next step (e.g., "See a Demo," "Explore the Platform," "Talk to a Tokenization Expert"). Generic CTAs reduce click-through rates by failing to answer "what will I get by clicking this?"
- **Severity:** Major
- **Recommendation:** Replace "GET IN TOUCH" with action-specific CTAs: primary CTA "Request a Demo" or "See the Platform in Action," secondary CTA "Talk to a Tokenization Expert." On the contact page, the Calendly booking link should be the primary action, not buried as an alternative.
- **Evidence:** "GET IN TOUCH" used in nav bar and throughout all pages.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 6: Trust signals lack depth — unnamed logos, no testimonials

- **Description:** The homepage contains a section titled "Trusted by top financial institutions and asset managers globally" with partner logos displayed. However, the logos are not identified by name (no hover-over tooltips, no captions). There are no customer testimonials, case study snippets, named quotes, quantified results, or any other form of social proof beyond unnamed logos.
- **Why it's a problem:** Violates **CRO-06 Trust Signal Placement** and **CRO-07 Social Proof Depth**. For institutional B2B buyers — especially in regulated financial services — anonymous logos are the weakest form of social proof. Broker-dealers and issuers need to see named institutions, specific outcomes, and regulatory validation to build trust. The claim "top financial institutions" without evidence reads as aspirational rather than credible, which is particularly damaging for a Series A company that must overcome the "are they established enough?" objection.
- **Severity:** Critical
- **Recommendation:** Name all partner logos with visible captions. Add 2-3 named testimonials from institutional clients with titles and company affiliations. Include quantified results where available (e.g., "settled $X in tokenized securities" or "reduced settlement time from T+2 to T+0"). Place proof points near CTAs and after credibility claims.
- **Evidence:** Homepage "Trusted by" section — logos displayed without names. Zero testimonials, case studies, or named quotes anywhere on the site.
- **Effort Rating:** Medium
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 7: No urgency or momentum signals

- **Description:** The website contains no signals of market momentum, recent activity, or urgency. There is no mention of the $21M Series A (closed March 16, 2026), no customer growth metrics, no transaction volume figures, no press mentions, and no indication of market timing or urgency.
- **Why it's a problem:** Violates **CRO-09 Urgency and Motivation**. For a company that just closed a $21M Series A with coverage from Axios, The Block, and CryptoBriefing, the absence of momentum signals is a missed opportunity. Institutional buyers evaluating tokenization infrastructure want evidence that a platform is gaining traction, not that it's static. Press mentions and funding announcements also function as third-party validation.
- **Severity:** Major
- **Recommendation:** Add a "News" or "In the Press" section featuring the Series A announcement and major press coverage. Include a transaction volume or AUM figure if available. Consider a banner highlighting the recent funding round — this is a credibility accelerator for Series A companies.
- **Evidence:** No press mentions, no funding announcement, no growth metrics found on any page. Recent $21M Series A widely covered but absent from website.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 8: No post-CTA expectation setting

- **Description:** After submitting the contact form, there is no clear indication of what happens next — no confirmation message describing response time, next steps, or what the sales process looks like.
- **Why it's a problem:** Violates **CRO-10 Post-CTA Expectation Setting**. Enterprise buyers who commit to filling out a contact form expect to know when they'll hear back and what the engagement process looks like. Lack of post-submission expectation setting increases anxiety and reduces perceived professionalism.
- **Severity:** Minor
- **Recommendation:** Add a confirmation state after form submission that communicates: (1) "Thank you — we'll be in touch within 24 hours," (2) what to expect (a brief call, a demo walkthrough, etc.), and (3) a direct Calendly link as a fallback for immediate scheduling.
- **Evidence:** Contact page form submission behavior.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** Medium — requires form submission testing to fully verify.

---

## 3. Information Architecture

Evaluates whether the site's structure, navigation, and content organization allow users to find what they need and move efficiently toward their goal.

### Finding 9: Footer is minimal to the point of being unhelpful

- **Description:** The footer contains only three links (Team, Privacy Policy, Website Terms of Use), the company address, and email. There are no links to product pages, no solutions overview, no careers link, no press/news section, no social media links (except LinkedIn on the Team page), and no secondary navigation.
- **Why it's a problem:** Violates **IA-07 Footer Utility**. The footer is the last touchpoint for visitors who've scrolled the full page — these are engaged users who want to explore further. A minimal footer fails to capture this intent and forces users to scroll back to the top navigation. For a multi-product platform (ATS, Investor Portal, Settlement, Tokenization, Secondary Trading, Placement Agent), the footer should serve as a comprehensive secondary navigation layer.
- **Severity:** Major
- **Recommendation:** Expand the footer to include: (1) Product links (ATS, Investor Portal, Settlement), (2) Solutions links (Tokenization, Secondary Trading, Placement Agent), (3) Company links (Team, Careers, Press/News), (4) Social media links, (5) Contact information with direct Calendly booking link. Reference the navigation structure for grouping.
- **Evidence:** Footer contains only 3 links. Compare to competitors like Securitize with comprehensive footer navigation.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 10: Persona routing exists but lacks clear pathways

- **Description:** The homepage includes a "Who Do We Work With" section identifying three personas (Broker Dealers, Wealth Advisors, Issuers) with brief descriptions. However, these sections do not link to dedicated persona-specific pages or content — they function as static text blocks rather than navigation pathways.
- **Why it's a problem:** Violates **IA-04 Persona Routing**. Identifying persona segments without providing dedicated pathways is a half-measure. A broker-dealer evaluating Ironlight's ATS has fundamentally different questions than an issuer exploring tokenization for a real estate fund. Without persona-specific landing pages, both visitors must navigate the same generic product pages and self-filter relevant information, increasing cognitive load and bounce probability.
- **Severity:** Major
- **Recommendation:** Convert each persona card into a clickable pathway that leads to a dedicated page (or filtered view) addressing that persona's specific concerns, use cases, and relevant products. At minimum, link each persona to the most relevant product page (e.g., Broker Dealers → ATS, Issuers → Tokenization).
- **Evidence:** "Who Do We Work With" section on homepage — three persona cards with no click-through behavior.
- **Effort Rating:** Medium
- **Impact Rating:** High
- **Confidence Rating:** High

---

## 4. QA / Bug Reporting

Evaluates broken elements, rendering errors, staging artifacts, and inconsistencies.

### Finding 11: Multiple sub-page URL patterns return 404 errors

- **Description:** Several URL patterns that would logically exist based on the navigation structure return 404 errors: /tokenization, /secondary-trading, /placement-agent, /ats, /investor-portal, /automatic-settlement. The actual sub-page URLs appear to follow a different pattern (e.g., /platform contains ATS, Investor Portal, and Settlement content on a single page; /solutions similarly aggregates content).
- **Why it's a problem:** Users or search engines attempting to access logical URL paths receive 404 errors. If any marketing materials, social posts, or external links reference these intuitive URL patterns, visitors will hit dead ends. Additionally, the Squarespace platform's URL routing may not match the navigation labels, creating a disconnect.
- **Severity:** Minor
- **Recommendation:** Verify all URL patterns and implement 301 redirects from common variants (e.g., /ats → /platform#ats) to prevent dead ends. Ensure sitemap.xml accurately reflects the actual URL structure. Consider whether individual product pages would improve SEO targeting for product-specific keywords.
- **Evidence:** HTTP 404 responses on /tokenization, /secondary-trading, /placement-agent, /ats, /investor-portal, /automatic-settlement.
- **Effort Rating:** Low
- **Impact Rating:** Low
- **Confidence Rating:** High

---

## 5. Visual & Brand Design

Evaluates whether the visual design creates an appropriate first impression, communicates credibility, and maintains consistency.

### Finding 12: Visual design is polished but lacks institutional gravitas

- **Description:** The site uses a dark theme with accent colors, grid-based layout, and icon-driven value propositions. The overall aesthetic leans toward crypto/Web3 startup rather than institutional finance infrastructure. The design is clean and professional but doesn't visually differentiate from dozens of similar tokenization platforms.
- **Why it's a problem:** Violates **VD-08 Industry-Appropriate Trust Signaling**. Ironlight's competitive advantage is regulatory compliance (FINRA-regulated ATS, SEC Reg ATS). The visual design should reinforce this institutional positioning. Broker-dealers and wealth advisors evaluating infrastructure providers expect a visual language that signals stability, regulatory rigor, and enterprise-grade reliability — closer to Bloomberg or ICE than to a DeFi protocol. The current dark-theme aesthetic, while competently executed, may unconsciously signal "crypto startup" rather than "regulated financial infrastructure."
- **Severity:** Major
- **Recommendation:** Consider introducing visual elements that reinforce institutional credibility: regulatory badges or certifications prominently displayed, more formal typography for key headings, lighter/more professional color tones for content sections (dark theme can remain for the hero). Study how Securitize and traditional financial infrastructure companies (Broadridge, DTCC) present themselves visually and identify opportunities to signal institutional maturity.
- **Evidence:** Overall site design compared to competitor positioning. Dark theme with crypto-adjacent aesthetic vs. institutional finance visual language.
- **Effort Rating:** High
- **Impact Rating:** Medium
- **Confidence Rating:** Medium

### Finding 13: Partner logos section has no identifiable context

- **Description:** The "Trusted by" section displays partner logos but they are not labeled, captioned, or identified in any way. Without hovering or clicking (which yields no additional information), visitors cannot identify which institutions are represented.
- **Why it's a problem:** Violates **VD-06 Imagery and Iconography Quality**. Institutional buyers recognize specific firms — seeing "Goldman Sachs" or "Fidelity" named explicitly carries infinitely more weight than an unidentifiable logo mark. Logos that can't be identified provide almost zero trust value and may even create suspicion that the partnerships are overstated.
- **Severity:** Major
- **Recommendation:** Add visible company names below each logo. If NDA or partnership agreements prevent naming, replace unnamed logos with other trust signals (regulatory certifications, transaction volume, press logos).
- **Evidence:** Homepage "Trusted by" section.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

---

## 6. Accessibility (WCAG 2.1 AA)

Evaluates whether the site meets WCAG 2.1 Level AA accessibility standards.

### Finding 14: Images lack descriptive alt text

- **Description:** Based on the HTML inspection, most images on the site lack explicit alt attributes. This includes product diagrams, platform screenshots, icon graphics, and partner logos.
- **Why it's a problem:** Violates **ACC-01 Non-text Content (WCAG 1.1.1)**. All informational images require descriptive alt text for screen reader users. Beyond accessibility, alt text is also critical for image SEO. Enterprise procurement teams increasingly include accessibility compliance in vendor evaluation criteria — particularly in financial services where regulatory scrutiny on digital accessibility is increasing.
- **Severity:** Major
- **Recommendation:** Audit every image and add descriptive alt text. Product screenshots should describe what the interface shows (e.g., "Ironlight ATS marketplace interface showing order book for tokenized real estate fund"). Partner logos should use alt="[Company Name] logo". Decorative images only should use alt="".
- **Evidence:** HTML source inspection — most images lack alt attributes.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 15: No H1 tag violates heading structure requirements

- **Description:** The homepage has no H1 element. The heading hierarchy begins with H3 and H2 tags, with no primary heading to anchor the page structure.
- **Why it's a problem:** Violates **ACC-02 Info and Relationships (WCAG 1.3.1)** and **ACC-20 Headings and Labels (WCAG 2.4.6)**. Screen readers rely on heading hierarchy to enable users to navigate page structure. Without an H1, the page lacks a programmatically determinable primary heading, making keyboard navigation disorienting for assistive technology users.
- **Severity:** Major
- **Recommendation:** Add an H1 tag to the hero headline "Tokenization for Traditional Finance" and restructure all subsequent headings in sequential order (H1 → H2 → H3).
- **Evidence:** DOM inspection — no H1 element present.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 16: No skip navigation link

- **Description:** The site does not include a "Skip to main content" link, which is a standard accessibility feature allowing keyboard users to bypass the navigation and jump directly to page content.
- **Why it's a problem:** Violates **ACC-16 Bypass Blocks (WCAG 2.4.1)**. Keyboard users must tab through all navigation links on every page load before reaching main content. This is a common and easily fixable accessibility gap.
- **Severity:** Minor
- **Recommendation:** Add a visually hidden "Skip to main content" link as the first focusable element in the DOM, targeting the main content area. This is a standard implementation with minimal effort.
- **Evidence:** No skip link found in DOM.
- **Effort Rating:** Low
- **Impact Rating:** Low
- **Confidence Rating:** High

### Finding 17: Color contrast concerns on dark backgrounds

- **Description:** The site uses light gray text (appearing as secondary/muted text) on dark backgrounds throughout. Based on the color scheme observed, several text elements may fall below the 4.5:1 contrast ratio required for WCAG AA compliance, particularly the muted/secondary text used for descriptions and labels.
- **Why it's a problem:** Violates **ACC-06 Contrast (Minimum) (WCAG 1.4.3)**. Low contrast text is difficult to read for users with low vision, color blindness, or in bright ambient lighting conditions. For a site targeting financial professionals who may be viewing the page on office monitors in varied lighting, readability is a functional requirement.
- **Severity:** Minor
- **Recommendation:** Run an automated contrast check (e.g., axe-core or WAVE) against the live site. Ensure all body text meets 4.5:1 ratio and large text meets 3:1 ratio. Adjust muted text colors to increase contrast while maintaining design intent.
- **Evidence:** Visual inspection of text contrast on dark backgrounds. Automated verification recommended.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** Low — requires automated contrast ratio measurement for precise verification.

---

## 7. Performance & Core Web Vitals

Evaluates whether the site loads fast enough to retain visitors and meet Google's performance benchmarks.

### Finding 18: Performance data unavailable — flagged for manual review

- **Description:** The Google PageSpeed Insights API quota was exceeded during this audit, preventing automated collection of Core Web Vitals data (LCP, INP, CLS, FCP, TTFB, Speed Index) for both mobile and desktop.
- **Why it's a problem:** Cannot evaluate **PERF-01** through **PERF-09**. Performance is a critical factor for B2B websites, particularly for enterprise buyers who may be accessing the site from corporate networks with stricter bandwidth. The site is built on Squarespace, which typically delivers acceptable but not optimal performance.
- **Severity:** Cannot Evaluate
- **Recommendation:** Run a manual PageSpeed Insights test at pagespeed.web.dev for both mobile and desktop. Key thresholds: LCP ≤ 2.5s, CLS ≤ 0.1, INP ≤ 200ms. Squarespace sites commonly underperform on image optimization (PERF-05) and render-blocking resources (PERF-06) — prioritize these diagnostics.
- **Evidence:** N/A — API quota exceeded.
- **Effort Rating:** N/A
- **Impact Rating:** N/A
- **Confidence Rating:** Cannot Evaluate — requires PageSpeed Insights API data.

---

## 8. SEO & Discoverability

Evaluates whether the site is structured to be found, indexed, and understood by search engines.

### Finding 19: Missing meta description

- **Description:** The homepage does not have a meta description tag. The title tag "Ironlight | Tokenization Infrastructure for Traditional Finance" is present and within the recommended 50-60 character range (when considering the core phrase).
- **Why it's a problem:** Violates **SEO-02 Meta Description**. Without a meta description, Google will auto-generate a snippet from page content, which may not be the most compelling or relevant text. For branded search queries ("Ironlight"), the search result snippet is effectively the first impression for many enterprise buyers — leaving it to Google's algorithm is a missed control opportunity.
- **Severity:** Major
- **Recommendation:** Add a meta description of 150-160 characters that communicates the value proposition and includes a soft CTA. Example: "Ironlight provides SEC-regulated infrastructure for tokenizing and trading real-world assets. Trusted by broker-dealers and institutions. Request a demo."
- **Evidence:** HTML source — no meta description tag present.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 20: No H1 tag — critical SEO heading missing

- **Description:** The homepage has no H1 tag. The page title "Tokenization for Traditional Finance" appears to be the intended H1 but is rendered as a different element or heading level in the DOM.
- **Why it's a problem:** Violates **SEO-03 H1 Tag** and **SEO-04 Heading Hierarchy**. The H1 is the most important on-page SEO signal after the title tag. Without it, search engines have a weaker signal for the page's primary topic. The heading hierarchy (H3 → H2 → H3 → H4) is also non-sequential, which further dilutes semantic structure.
- **Severity:** Major
- **Recommendation:** Add a single H1 tag containing the primary keyword-rich headline. "Tokenization Infrastructure for Traditional Finance" would align with the title tag and target relevant search queries. Restructure all headings sequentially.
- **Evidence:** DOM inspection — no H1 element; headings begin at H3.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 21: No canonical tag specified

- **Description:** The homepage does not include an explicit canonical tag in the HTML head, though the canonical domain is set to "https://ironlight.io" in Squarespace settings.
- **Why it's a problem:** Violates **SEO-06 Canonical Tag**. Without an explicit self-referencing canonical tag, search engines may index duplicate versions of the page (www vs. non-www, http vs. https, trailing slash variants). This can dilute page authority across multiple URLs.
- **Severity:** Minor
- **Recommendation:** Add a self-referencing canonical tag: `<link rel="canonical" href="https://ironlight.io/" />` to the homepage and all sub-pages. Squarespace typically handles this automatically, but verify it's present in the rendered HTML.
- **Evidence:** HTML source inspection — no explicit canonical tag found.
- **Effort Rating:** Low
- **Impact Rating:** Low
- **Confidence Rating:** Medium — Squarespace may inject this at render time; requires live DOM verification.

### Finding 22: Open Graph tags present but incomplete

- **Description:** OG tags are present (og:url, og:type, og:name, og:image) but og:description is missing, and og:image points to the company logo rather than a branded social sharing image.
- **Why it's a problem:** Violates **SEO-07 Open Graph Tags**. When the Ironlight website is shared on LinkedIn, Slack, or other platforms (common for B2B enterprise evaluations), the preview will show a generic logo with no description — missing an opportunity to present a polished, informative preview that supports sharing and referral traffic.
- **Severity:** Minor
- **Recommendation:** Add og:description with a compelling summary. Create a branded OG image (1200x630px) that includes the company name, tagline, and visual identity — not just the logo. This significantly improves share-through rates on LinkedIn, which is Ironlight's most relevant social channel.
- **Evidence:** HTML source — og:description missing, og:image is the company logo.
- **Effort Rating:** Low
- **Impact Rating:** Low
- **Confidence Rating:** High

### Finding 23: Image alt text missing across the site

- **Description:** Most images across the site lack descriptive alt text, including product diagrams, platform screenshots, and partner logos.
- **Why it's a problem:** Violates **SEO-05 Image Alt Text**. Beyond accessibility (covered in Finding 14), missing alt text eliminates all image SEO value. For a platform with rich visual content (ATS interface, settlement flow diagrams, platform architecture), image search could drive incremental discovery traffic from buyers researching tokenization infrastructure.
- **Severity:** Major
- **Recommendation:** Add keyword-relevant, descriptive alt text to all informational images. Prioritize product screenshots and diagrams that could rank in Google Image Search for relevant queries.
- **Evidence:** HTML source — most images lack alt attributes.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

---

## 9. Content Hierarchy & Copywriting

Evaluates whether the site's content is structured to guide users through a clear narrative and communicates value in terms of outcomes rather than features.

### Finding 24: Hero headline is a category label, not a value proposition

- **Description:** The hero headline "Tokenization for Traditional Finance" describes the product category, not the benefit to the buyer. There is no subheading that expands on what the buyer gains, what problem is solved, or what outcome to expect.
- **Why it's a problem:** Violates **COPY-01 5-Second Test**, **COPY-02 Benefit-Led vs. Feature-Led Framing**, and **COPY-03 Headline Specificity**. A first-time visitor can answer "what category is this?" but cannot answer "what does this do for me?" or "who is this for?" within 5 seconds. The headline could apply to any of the 228+ competitors in the tokenization space — it provides zero differentiation. For a Series A company needing to stand out, the hero must do the heaviest lifting on the page.
- **Severity:** Critical
- **Recommendation:** Reframe the hero to lead with the buyer's outcome: e.g., "Trade Tokenized Securities on a FINRA-Regulated Marketplace" or "The Institutional-Grade Platform for Tokenized Asset Trading." Add a benefit-led subheading: "Integrated issuance, distribution, and atomic settlement — built for broker-dealers, advisors, and issuers." The regulatory angle (FINRA-regulated) is Ironlight's sharpest differentiator and should appear in the hero.
- **Evidence:** Hero section — "Tokenization for Traditional Finance" with no subheading.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 25: Copy is feature-led throughout, not benefit-led

- **Description:** The homepage and product pages consistently describe what the platform does rather than what the buyer gains. Examples: "Handles millions of transactions per second" (feature), "Blockchain-agnostic design allowing rapid chain adoption" (feature), "Four-step settlement process complying with SEC guidance" (feature). The "Why Ironlight?" section lists "Liquidity," "Open Access Model," and "Institutional-Grade Technology" — all feature/capability labels.
- **Why it's a problem:** Violates **COPY-02 Benefit-Led vs. Feature-Led Framing**. Institutional buyers don't buy features — they buy outcomes. A broker-dealer doesn't want "millions of transactions per second" — they want "settlement speed that matches public equities exchanges." An issuer doesn't want "open access model" — they want "reach every investor in the US financial system." Feature-led copy forces the buyer to translate capabilities into personal value, which increases cognitive load and reduces conversion.
- **Severity:** Critical
- **Recommendation:** For each feature, apply the "So what?" test: "Handles millions of transactions per second" → "Settle tokenized trades at the speed of public equities." "Open Access Model" → "Reach investors through any broker, bank, or RIA in the US." "Blockchain-agnostic design" → "Deploy on any chain without rebuilding your integration." Rewrite the "Why Ironlight?" section with these benefit-led framings.
- **Evidence:** Homepage "Why Ironlight?" section; Solutions page feature descriptions; Platform page technical specifications.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 26: "Trusted by top financial institutions" is unsubstantiated

- **Description:** The homepage claims "Trusted by top financial institutions and asset managers globally" above a section of unnamed partner logos. There is no supporting evidence — no named institutions, no transaction volume, no AUM, no specific partnership descriptions.
- **Why it's a problem:** Violates **COPY-08 Proof and Credibility in Copy**. Vague, unsubstantiated claims actively damage credibility with sophisticated institutional buyers. A compliance officer at a broker-dealer reading "top financial institutions" without evidence will interpret it as marketing puffery, not social proof. This is particularly damaging in financial services where precision and verifiability are core expectations.
- **Severity:** Critical
- **Recommendation:** Either (a) name the institutions and provide specific partnership context, or (b) replace the vague claim with a verifiable, specific statement: "Infrastructure trusted by X broker-dealers managing $Y in tokenized assets" or "Regulated under SEC Reg ATS and FINRA oversight." If naming restrictions apply, lead with the regulatory credentials — those are publicly verifiable and carry more weight than unnamed logos.
- **Evidence:** Homepage "Trusted by" section.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 27: Solutions page copy is repetitive across asset classes

- **Description:** The Solutions page lists four tokenization offerings (Funds, Private Equity, Real Estate, Structured Products) with nearly identical one-line descriptions that all follow the same template: "[Verb] [asset type] with tokenization for [generic benefit]." The descriptions don't differentiate how the platform addresses the unique challenges of each asset class.
- **Why it's a problem:** Violates **COPY-05 Narrative Flow and Page Arc** and **COPY-03 Headline Specificity**. An issuer evaluating tokenization for a real estate fund has different concerns (fractional ownership, rental income distribution, property valuation) than one tokenizing private equity (capital calls, distribution waterfalls, investor accreditation). Generic copy across asset classes signals shallow product understanding and misses the opportunity to demonstrate domain expertise that institutional buyers expect.
- **Severity:** Major
- **Recommendation:** Develop asset-class-specific messaging that addresses the unique pain points and opportunities for each: Funds (compliance with fund structures, NAV reporting), PE (capital call automation, liquidity for LPs), Real Estate (fractional ownership, rental yield distribution), Structured Products (lifecycle management, tranche structuring). Even 2-3 sentences of specific copy per asset class signals expertise.
- **Evidence:** Solutions page — four tokenization offerings with template-identical descriptions.
- **Effort Rating:** Medium
- **Impact Rating:** Medium
- **Confidence Rating:** High

---

## 10. Mobile Responsiveness

Evaluates mobile experience quality.

### Finding 28: Mobile rendering requires manual review

- **Description:** Mobile rendering data was not available during this automated audit. The site is built on Squarespace, which provides baseline responsive design, and the CSS includes a mobile breakpoint at 640px.
- **Why it's a problem:** Cannot fully evaluate mobile experience. Given that Ironlight's buyers are financial professionals who may review the site on mobile devices during travel or between meetings, mobile usability is important though likely secondary to desktop for this B2B audience.
- **Severity:** Cannot Evaluate
- **Recommendation:** Test the site on mobile devices (iPhone 14/15, Samsung Galaxy S24) and verify: (1) navigation collapses to hamburger menu, (2) touch targets are ≥44px, (3) content is readable without zooming, (4) forms are usable on mobile. Flag any issues found.
- **Evidence:** CSS includes @media (max-width: 640px) breakpoint. Manual testing needed.
- **Effort Rating:** N/A
- **Impact Rating:** N/A
- **Confidence Rating:** Cannot Evaluate — requires mobile device testing.

---

## 11. Competitor Benchmarking

Evaluates Ironlight's positioning relative to competitors.

### Finding 29: FINRA/SEC regulatory advantage is buried, not led with

- **Description:** Ironlight's ATS operates under SEC Regulation ATS with FINRA oversight — a significant competitive differentiator in a market where many tokenization platforms operate in regulatory gray areas. However, this regulatory status is not mentioned on the homepage at all. It appears only deep in the Platform and Solutions pages under descriptions like "regulator-first approach" and "compliance-led."
- **Why it's a problem:** In the competitive landscape, regulatory credibility is Ironlight's most defensible moat. Securitize and tZERO have similar regulatory positioning but are further established. For a Series A company, the FINRA-regulated ATS status should be the lead differentiator — it answers the institutional buyer's #1 concern: "Is this safe and compliant?" Burying it in sub-pages means most visitors never see it.
- **Severity:** Critical
- **Recommendation:** Feature FINRA and SEC regulatory status prominently on the homepage — in the hero subheading, as a trust badge near the CTA, and in the "Why Ironlight?" section. Example: "The Only FINRA-Regulated ATS with On-Chain Atomic Settlement" would be a significantly stronger hero headline than "Tokenization for Traditional Finance." Regulatory positioning should be the first thing an institutional buyer sees, not something they discover three clicks deep.
- **Evidence:** FINRA/SEC status absent from homepage; mentioned only on sub-pages. Competitor analysis shows this is Ironlight's key differentiator.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High
