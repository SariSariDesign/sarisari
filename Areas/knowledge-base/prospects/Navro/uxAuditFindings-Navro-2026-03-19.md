# UX Audit Report

## Navro

**URL:** https://www.navro.com | **Audit Date:** March 19, 2026

---

## Business Model Profile

| Field | Value |
|---|---|
| **Industry** | Fintech — Cross-border payments infrastructure |
| **Company Stage** | Series B (~$84.6M total funding; $41M Series B, May 2025) |
| **Core Product/Service** | Payments curation platform — single API + contract aggregating banks, local schemes, and wallets for global payouts and collections |
| **Objective** | Become the default payments infrastructure layer for businesses moving money across borders |
| **Primary Conversion Goal** | Schedule a Call / Book a Demo (sales-led demo request) |
| **Core User Personas / ICPs** | (1) Heads of Payments/Treasury at mid-to-large enterprises, (2) CTOs/Engineering leads evaluating API-first payments infra, (3) CFOs/COOs at payroll, EOR, pension, and marketplace businesses |
| **Customer Type** | B2B |
| **Business Model** | SaaS / Infrastructure-as-a-Service (API platform, per-transaction revenue) |
| **GTM Motion** | Sales-Led Growth (SLG) |
| **Competitor Landscape** | Airwallex, Wise Platform, Payoneer, Currencycloud (Visa), Thunes, Rapyd/Nuvei, dLocal |

### Evaluation Priorities

1. Conversion Rate Optimization
2. Content Hierarchy & Copywriting
3. Visual & Brand Design
4. Information Architecture
5. Nielsen's 10 Heuristics
6. SEO & Discoverability
7. Performance & Core Web Vitals
8. Accessibility
9. QA / Bug Reporting
10. Mobile Responsiveness
11. Competitor Benchmarking

### Methodology

This audit evaluates Navro's marketing website across 11 UX dimensions using a structured reference checklist of 80+ criteria, supplemented by automated accessibility scanning, SEO extraction, and visual inspection.

### Evaluation Lens

This audit is framed for a Series B, sales-led B2B fintech selling payments infrastructure to enterprise buyers — meaning the website must function as a credibility engine that converts high-intent visitors into demo requests while clearly routing multiple personas to relevant value propositions. Every finding is weighted by its impact on pipeline generation and enterprise buyer trust.

### Why This Matters

For a Series B cross-border payments company in a crowded competitive landscape, website friction directly translates to lost pipeline — enterprise buyers who can't quickly understand Navro's differentiation will bounce to a competitor's site before ever booking a demo. At this growth stage, every qualified demo request has outsized revenue impact, making conversion optimization the highest-leverage investment.

### Competitor Context

Navro operates in a competitive field including Airwallex (valued at $5.5B+), Wise Platform, Payoneer, and Thunes. The "payments curation" positioning is a differentiator — most competitors own the payment rails, while Navro aggregates them. This requires exceptionally clear messaging to land with buyers who default to recognizing better-known competitors.

---

# Friction or Pain Points

## 1. Nielsen's 10 Usability Heuristics

Evaluates whether the interface follows fundamental usability principles that reduce cognitive load, prevent errors, and support users in accomplishing their goals.

### Finding 1: Hero content invisible on initial load

- **Description:** The hero section renders as a completely dark/empty screen for approximately 3 seconds before content animates into view. First-time visitors see a blank dark page with only the navigation bar visible. No loading state, skeleton screen, or progressive content rendering is present.
- **Why it's a problem:** Violates **N-01 Visibility of System Status** — the user receives no feedback that the page is loading content. In a sales-led B2B context, the first 3 seconds are critical for capturing attention. Enterprise buyers evaluating multiple vendors may interpret a blank screen as a broken page and bounce. Studies show 53% of mobile users abandon pages that take longer than 3 seconds to load visible content.
- **Severity:** Critical
- **Recommendation:** Replace the animation-dependent hero with a static-first approach: render the headline, subheading, and primary CTA immediately in HTML/CSS, then layer animation on top once JavaScript loads. This ensures content is visible within the first paint.
- **Evidence:** Screenshot shows blank dark screen with only nav bar visible on initial page load.
- **Effort Rating:** Medium
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 2: "Schedule a Call" opens a form, not a calendar

- **Description:** The primary CTA "Schedule a Call" opens an inline contact form with fields for First Name, Last Name, Company Name, Email, and Message. Users clicking "Schedule a Call" expect a calendar booking interface (like Calendly or HubSpot Meetings).
- **Why it's a problem:** Violates **N-02 Match Between System and the Real World** — the label "Schedule" implies selecting a time slot, not filling out a contact form. This creates a mismatch between user expectation and actual experience, which can increase form abandonment. The mismatch also undermines trust — users may feel the company is less organized than expected.
- **Severity:** Major
- **Recommendation:** Either (a) rename the CTA to "Get in Touch" or "Request a Demo" to match the form experience, or (b) implement an actual scheduling tool (Calendly, HubSpot Meetings) to match the "Schedule" promise. Option (b) is preferred as it also reduces friction in the conversion flow.
- **Evidence:** Clicking "Schedule a Call" reveals a 5-field contact form, not a calendar interface.
- **Effort Rating:** Low (rename) / Medium (implement scheduling)
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 3: Inconsistent CTA terminology across the page

- **Description:** The page uses three different CTA labels — "Schedule a Call," "Learn More," and "Book a demo" — that all appear to funnel toward the same action (contact form). "Schedule a Call" appears 4 times in different sections. "Learn More" links to product pages. "Book a demo" appears in the bottom CTA section.
- **Why it's a problem:** Violates **N-04 Consistency and Standards** — varying terminology for what appears to be the same or similar actions creates confusion about whether these are distinct actions. Users cannot predict what will happen when they click each CTA, which increases decision friction.
- **Severity:** Major
- **Recommendation:** Standardize primary CTA language across the entire page. Use one label for the demo/sales action (e.g., "Book a Demo" or "Talk to Sales") and one for exploratory actions (e.g., "Explore [Product Name]"). Ensure each CTA label accurately describes the destination.
- **Evidence:** "Schedule a Call" (hero, What We Do, bottom CTA, nav), "Learn More" (hero secondary, Chaos vs. Curation), "Book a demo" (bottom section copy).
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 4: Heading hierarchy violations in DOM structure

- **Description:** The DOM contains an H2 ("Please fill in this form and we'll get back to you about scheduling a demo") before the H1 ("The payments curation platform"). Solution titles use H4 tags (skipping H3 entirely). The footer contains duplicate H3 headings both labeled "Our Platform."
- **Why it's a problem:** Violates **N-04 Consistency and Standards** — while primarily an accessibility and SEO concern, broken heading hierarchy also affects how users who scan the page interpret content structure. Screen readers and assistive technologies rely on heading levels to navigate.
- **Severity:** Minor
- **Recommendation:** Restructure heading levels so H1 appears first in DOM order, solutions use H3 under the H2 "Solutions" heading, and remove the duplicate "Our Platform" footer heading. Ensure heading hierarchy is sequential (H1 → H2 → H3) with no skipped levels.
- **Evidence:** DOM inspection shows H2 (form heading) → H1 (hero) → H3 (stats) → H2 (What We Do) → H2 (Solutions) → H4 (solution titles).
- **Effort Rating:** Low
- **Impact Rating:** Low
- **Confidence Rating:** High

---

## 2. Conversion Rate Optimization

Evaluates whether the site effectively moves visitors toward its primary conversion goal through clear messaging, well-designed calls to action, and a range of engagement paths.

### Finding 5: Hero section fails the 5-second test

- **Description:** Due to the animation delay (~3 seconds of blank screen), a visitor cannot answer the three critical questions within 5 seconds: (1) What does this product do? (2) Who is it for? (3) What should I do next? Even once loaded, the headline "The payments curation platform" is a category label, not a value proposition. There is no subheading explaining the customer benefit.
- **Why it's a problem:** Violates **CRO-01 Above-the-Fold Clarity** — the hero section is the single highest-impact real estate on any B2B website. For a sales-led model, failing the 5-second test means high-intent visitors from paid channels, referrals, or organic search cannot quickly confirm they're in the right place. This directly impacts bounce rate and pipeline conversion.
- **Severity:** Critical
- **Recommendation:** Add a benefit-led subheading below the H1 that clearly communicates what Navro does for the customer (e.g., "Move money to 200+ territories through one API — with the right rail, currency, and compliance for every payment"). Ensure hero content renders instantly without animation dependency.
- **Evidence:** Screenshot of blank hero; H1 text "The payments curation platform" with no supporting subheading.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 6: Zero social proof on the homepage

- **Description:** The homepage contains no customer logos, testimonials, case study snippets, named quotes, quantified results, awards, or press mentions. The only external validation is in the News section (press releases about partnerships and hiring), which is not positioned as social proof.
- **Why it's a problem:** Violates **CRO-06 Trust Signal Placement** and **CRO-07 Social Proof Depth** — enterprise B2B buyers rely heavily on social proof to validate purchasing decisions. Without evidence that real companies use and benefit from Navro, the website asks visitors to trust claims on faith alone. Competitors like Airwallex and Wise Platform prominently feature customer logos and quantified results above the fold.
- **Severity:** Critical
- **Recommendation:** Add a customer logo bar near the hero section (even 4-5 logos significantly increase credibility). Add at least 2-3 named testimonials with titles and company affiliations near CTAs. Include quantified results where possible (e.g., "Reduced payment costs by X% for [Customer]"). Place trust signals at decision points — near CTAs, after bold claims.
- **Evidence:** Full-page review reveals zero instances of customer logos, testimonials, case studies, or quantified social proof.
- **Effort Rating:** Medium (requires customer permission/content creation)
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 7: No engagement path variety for different intent levels

- **Description:** The site offers only two conversion actions: "Schedule a Call" (high intent) and "Learn More" (links to product pages). There are no mid-funnel engagement paths such as: product tours, interactive demos, case study downloads, whitepapers, ROI calculators, newsletter signups, or free resources.
- **Why it's a problem:** Violates **CRO-04 Engagement Path Variety** — not all visitors arrive ready to speak with sales. Mid-funnel visitors (researching, comparing, building a business case) have no way to engage without committing to a sales conversation. This means Navro captures only high-intent visitors and loses the larger pool of mid-intent visitors who could be nurtured into pipeline.
- **Severity:** Major
- **Recommendation:** Add at least one mid-funnel engagement path (e.g., "See How It Works" product tour, downloadable guide, or interactive demo). Consider a secondary CTA in the hero that's lower commitment than "Schedule a Call." Add a newsletter or content signup in the footer or after the news section.
- **Evidence:** Page inspection shows only "Schedule a Call" (×4) and "Learn More" (×2) as available actions.
- **Effort Rating:** Medium
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 8: Generic "Learn More" CTA copy

- **Description:** "Learn More" is used as CTA text in multiple sections (hero secondary CTA, Chaos vs. Curation section) without specifying what the user will learn or where the link leads.
- **Why it's a problem:** Violates **CRO-02 CTA Specificity and Placement** — "Learn More" is one of the weakest possible CTA labels. It doesn't communicate value, destination, or outcome. Users must guess what clicking will do, which increases friction and reduces click-through rates. Research consistently shows that specific CTAs outperform generic ones by 20-30%.
- **Severity:** Major
- **Recommendation:** Replace "Learn More" with specific, action-oriented labels that communicate the destination and value. Examples: "Explore Global Payouts," "See How Curation Works," "Compare Chaos vs. Curation." Each CTA should tell the user what they'll get.
- **Evidence:** "Learn more" in hero section, "Learn More" in Chaos vs. Curation section — both link to /local-accounts.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

---

## 3. Information Architecture

Evaluates whether the site's structure, navigation, and content organization allow users to find what they need quickly.

### Finding 9: Inconsistent terminology between nav and footer

- **Description:** The main navigation labels a product page as "Local Accounts" while the footer labels the same page as "Collections." Both link to /local-accounts. Additionally, the nav uses "Platform" as a dropdown containing "Global Payouts" and "Local Accounts," while the footer uses "Our Platform" with "Global Payouts" and "Collections."
- **Why it's a problem:** Violates **IA-02 Navigation Consistency** — users who first encounter "Local Accounts" in the nav and then see "Collections" in the footer may not realize they're the same thing. This is especially problematic for enterprise buyers doing thorough site evaluation, who often navigate via the footer to find additional pages. Inconsistent terminology erodes the perception of a well-organized product.
- **Severity:** Major
- **Recommendation:** Standardize on one term ("Collections" or "Local Accounts") and use it consistently across nav, footer, page titles, and all internal links. If the product is genuinely called "Local Accounts," update the footer to match.
- **Evidence:** Nav shows "Local Accounts" (/local-accounts); footer shows "Collections" (/local-accounts) — same URL, different labels.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 10: No pricing or "How It Works" page

- **Description:** There is no pricing page, pricing philosophy page, or "How It Works" page discoverable in the navigation, footer, or internal links. The site structure goes directly from product descriptions to "Schedule a Call."
- **Why it's a problem:** Violates **IA-06 Search and Findability** — enterprise buyers increasingly expect pricing transparency, even if it's "Contact us for pricing" with a general pricing philosophy. A "How It Works" page is also a standard expectation for infrastructure products. Without these pages, visitors must schedule a call just to understand basic information about the product's pricing model and implementation process, which adds friction to the evaluation process.
- **Severity:** Minor
- **Recommendation:** Add a "How It Works" page explaining the integration process, timeline, and what to expect. Consider a "Pricing" page that explains the pricing model at a high level (per-transaction, tiered, custom) even if specific prices require a sales conversation.
- **Evidence:** Full navigation and footer link audit shows no pricing or how-it-works pages.
- **Effort Rating:** Medium
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 11: Date format inconsistency in News section

- **Description:** The News & Updates section displays three articles with three different date formats: "11th March 2023" (ordinal British), "10th February 2026" (formal British), and "01/22/2026" (American numeric MM/DD/YYYY).
- **Why it's a problem:** Violates **IA-05 Content Grouping Logic** — inconsistent formatting within a single section suggests poor editorial oversight or CMS configuration issues. For an enterprise-facing fintech company where attention to detail signals reliability, this is a credibility concern. The American date format is also potentially confusing for Navro's UK-based international audience.
- **Severity:** Minor
- **Recommendation:** Standardize all dates to a single, internationally unambiguous format (e.g., "19 March 2026" or "March 19, 2026"). Update the CMS template to enforce consistent formatting.
- **Evidence:** Three date formats visible in the News section: "11th March 2023," "10th February 2026," "01/22/2026."
- **Effort Rating:** Low
- **Impact Rating:** Low
- **Confidence Rating:** High

---

## 4. QA / Bug Reporting

Surface-level issues that undermine credibility.

### Finding 12: Hero content clipped on left side of viewport

- **Description:** The hero headline "The payments curation platform" renders with the leading "T" clipped off the left edge of the viewport. The stat counters ("200+", "140+", "80+") are also partially cut off. The "Schedule a Call" and "Learn More" buttons in the hero are partially visible at the left edge.
- **Why it's a problem:** This appears to be a CSS overflow or animation positioning bug. Content that should be centered or left-aligned with padding is instead extending beyond the viewport boundary. For enterprise visitors, visible rendering bugs signal that the company may not pay attention to quality — a concerning signal for a payments infrastructure provider.
- **Severity:** Major
- **Recommendation:** Inspect the hero section's CSS for missing overflow: hidden, incorrect transform/translate values, or animation keyframes that position content off-screen. Ensure the hero content container has appropriate padding and max-width constraints that keep all content within the viewport at all standard breakpoints.
- **Evidence:** Screenshot shows "he payments curation platform" with "T" cut off; stats "200+" partially visible at left edge.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 13: Date format inconsistency in News section

- **Description:** (See Finding 11 — also flagged as QA issue) Three different date formats used within the same content section.
- **Severity:** Minor
- **Effort Rating:** Low
- **Impact Rating:** Low
- **Confidence Rating:** High

---

## 5. Visual & Brand Design

Evaluates whether the visual design creates credibility and trust appropriate to the industry and buyer.

### Finding 14: First impression is a blank dark screen

- **Description:** The initial visual impression upon landing on navro.com is a dark navy/black screen with only the navigation bar visible. The hero content, product visuals, and value proposition are all hidden behind a JavaScript animation that takes approximately 3 seconds to render.
- **Why it's a problem:** Violates **VD-01 First Impression and Credibility** — enterprise fintech buyers form trust judgments within milliseconds of landing on a website. A blank screen signals potential technical issues and fails to immediately communicate professionalism. Competitors like Airwallex show a fully rendered, polished hero on first paint.
- **Severity:** Critical
- **Recommendation:** Ensure hero content is rendered server-side or via CSS-first approach so it's visible on first contentful paint. Animation can enhance the experience but should not gate it.
- **Evidence:** First screenshot of page load shows blank dark screen with only nav visible.
- **Effort Rating:** Medium
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 15: Low contrast text in multiple sections

- **Description:** Several content sections use light gray text on dark backgrounds with insufficient contrast. The "What We Do" value proposition items ("the right rail," "the right currency," etc.) appear in a muted gray/pink. The bottom CTA section body copy is light gray on a purple-gradient background. The "Schedule a Call" secondary button in the What We Do section is barely visible.
- **Why it's a problem:** Violates **VD-03 Typography System** — low contrast text reduces readability and accessibility. For content that's meant to communicate Navro's core value proposition, reduced legibility means the most important messaging is harder to read than it should be.
- **Severity:** Major
- **Recommendation:** Increase text contrast to meet at minimum WCAG AA standards (4.5:1 for body text, 3:1 for large text). Use white (#FFFFFF) or near-white text on dark backgrounds. Reserve muted colors for less critical decorative elements, not value proposition copy.
- **Evidence:** Screenshots show muted gray text for value props and CTA section body copy.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 16: Solutions section imagery doesn't signal product context

- **Description:** The four solution cards (Life, Workforce, Digital, Capital) use lifestyle photography — an elderly woman in a garden (Life/pensions), a man working at a desk (Workforce), and similar stock-style imagery. The images don't visually connect to fintech, payments infrastructure, or the specific solution being described.
- **Why it's a problem:** Violates **VD-06 Imagery and Iconography Quality** — while the images are high quality, they're generic and don't help users understand what each solution does. A pensions infrastructure product illustrated by a woman in a garden requires the user to make an inferential leap. Product screenshots, abstract data visualizations, or industry-specific illustrations would communicate more clearly.
- **Severity:** Minor
- **Recommendation:** Consider replacing lifestyle photos with product UI screenshots, abstract illustrations that represent payment flows, or industry-specific imagery. The "Chaos vs. Curation" diagram is a good example of effective visual communication — apply similar thinking to solution cards.
- **Evidence:** Solutions section shows four cards with lifestyle photography that doesn't signal fintech/payments context.
- **Effort Rating:** Medium
- **Impact Rating:** Medium
- **Confidence Rating:** Medium

---

## 6. Accessibility (WCAG 2.1 AA)

Evaluates WCAG 2.1 Level AA compliance.

### Finding 17: ALL 33 images have empty alt text — CRITICAL

- **Description:** Every single image on the homepage (33 total) has `alt=""`, marking them all as decorative. This includes solution card images, the hero visual, product diagrams (Chaos vs. Curation), news thumbnails, and the company logo in the footer. None of these are purely decorative — they all convey meaningful information.
- **Why it's a problem:** Violates **ACC-01 Non-text Content (WCAG 1.1.1)** — informational images must have descriptive alt text so screen reader users can understand the content. Marking all images as decorative means visually impaired users receive no information about any visual content on the page. This also impacts SEO, as search engines use alt text to understand image content.
- **Severity:** Critical
- **Recommendation:** Audit every image and categorize as informational or decorative. Add descriptive alt text to all informational images (e.g., "Diagram comparing fragmented payment provider setup without Navro versus unified single-connection setup with Navro"). Keep alt="" only for truly decorative elements (background patterns, spacers).
- **Evidence:** JavaScript DOM audit: totalImages: 33, missingAlt: 0, emptyAlt: 33, withAlt: 0.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 18: Form fields use placeholder-only labels — CRITICAL

- **Description:** All 5 visible form fields in the "Schedule a Call" contact form (First Name, Last Name, Company Name, Email, Message) have no `<label>` elements — they rely solely on placeholder text for identification. No aria-label or aria-labelledby attributes are present either. When a user begins typing, the placeholder disappears, leaving the field unidentified.
- **Why it's a problem:** Violates **ACC-02 Info and Relationships (WCAG 1.3.1)** and **ACC-26 Labels or Instructions (WCAG 3.3.2)** — placeholder text is not a substitute for labels. Screen readers may not reliably announce placeholder text as a field label. Users with cognitive disabilities or short-term memory challenges lose context once they begin typing. This is the primary conversion form — accessibility failures here directly reduce the pool of people who can complete the conversion action.
- **Severity:** Critical
- **Recommendation:** Add visible `<label>` elements for each form field, programmatically associated via the `for` attribute. Labels should be positioned above or to the left of inputs. Placeholders can remain as supplementary hints but should not be the sole identifier.
- **Evidence:** DOM audit: totalFormFields: 6, fieldsWithLabel: 0, fieldsWithPlaceholderOnly: 5.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 19: No skip navigation link

- **Description:** The page contains no skip-navigation link that would allow keyboard users to bypass the main navigation and jump directly to main content. The navigation contains multiple dropdown menus with numerous links.
- **Why it's a problem:** Violates **ACC-16 Bypass Blocks (WCAG 2.4.1)** — keyboard-only users must tab through every navigation link on every page load before reaching the main content. This is especially burdensome given the multi-level dropdown navigation structure.
- **Severity:** Major
- **Recommendation:** Add a visually hidden (but focus-visible) skip navigation link as the first focusable element on the page: `<a href="#main-content" class="skip-link">Skip to main content</a>`. Style it to become visible on focus.
- **Evidence:** DOM inspection confirms no skip-link element present.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 20: Social media links have no accessible text

- **Description:** The footer contains links to X/Twitter and LinkedIn that have no text content, no aria-label, and no alt text on their icon images (icons have alt=""). These links are completely invisible to screen readers.
- **Why it's a problem:** Violates **ACC-19 Link Purpose (WCAG 2.4.4)** — every link must have a discernible text that describes its purpose. Screen reader users encountering these links would hear only "link" with no context about where it leads.
- **Severity:** Major
- **Recommendation:** Add aria-label attributes to each social media link (e.g., `aria-label="Follow Navro on LinkedIn"`, `aria-label="Follow Navro on X"`).
- **Evidence:** Footer social links have no text, aria-label, or image alt text.
- **Effort Rating:** Low
- **Impact Rating:** Low
- **Confidence Rating:** High

### Finding 21: Heading hierarchy breaks semantic document structure

- **Description:** The heading hierarchy in the DOM is non-sequential: H2 (form heading) appears before H1 (hero), H3 is used for statistics, H4 is used for solution titles (skipping H3 under the H2 "Solutions" parent), and duplicate H3 headings exist in the footer.
- **Why it's a problem:** Violates **ACC-20 Headings and Labels (WCAG 2.4.6)** — screen reader users navigate pages by heading level. A broken hierarchy means the document outline doesn't reflect the actual content structure, making it difficult for assistive technology users to understand page organization and jump to relevant sections.
- **Severity:** Major
- **Recommendation:** Restructure headings to follow a logical sequential order: one H1 first, followed by H2s for major sections, H3s for subsections. Move the form heading to appear after the H1 in DOM order, or restructure the form overlay so it doesn't interfere with page heading hierarchy.
- **Evidence:** Heading order: H2 → H1 → H3 → H2 → H2 → H4 → H4 → H4 → H4 → H2 → H2 → H3 → H3 → H3.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

---

## 7. Performance & Core Web Vitals

Evaluates load speed and Google's performance benchmarks.

### Finding 22: Hero animation causes poor perceived load performance

- **Description:** The hero section's content is gated behind a JavaScript animation that delays content visibility for approximately 3 seconds. While the page's technical load metrics may be acceptable (HTML loads quickly), the perceived performance is poor because the largest contentful paint (the hero heading) doesn't render until the animation executes.
- **Why it's a problem:** Relates to **PERF-02 LCP Assessment** — if the hero heading is the LCP element, the animation delay would push LCP beyond the "Good" threshold (≤2.5s). Even if a background element triggers LCP first, the perceived experience is of a slow, empty page.
- **Severity:** Major
- **Recommendation:** Decouple content visibility from animation. Render hero text and CTAs immediately via HTML/CSS, then animate supplementary visual elements (graphics, illustrations) as enhancement. Consider using CSS animations instead of JavaScript to reduce dependency on script execution.
- **Evidence:** 3-second delay between navigation completion and hero content visibility.
- **Effort Rating:** Medium
- **Impact Rating:** High
- **Confidence Rating:** Medium (full PageSpeed data unavailable — manual testing recommended for PERF-01 through PERF-09)

---

## 8. SEO & Discoverability

Evaluates whether the site is structured to be found, indexed, and understood by search engines.

### Finding 23: No structured data / schema markup

- **Description:** The homepage contains no JSON-LD or schema.org structured data. No Organization, WebSite, FAQPage, or Product schema is present.
- **Why it's a problem:** Violates **SEO-09 Structured Data** — structured data enables rich results in Google Search (knowledge panels, enhanced snippets). For a B2B company competing for visibility against well-known competitors, structured data provides a competitive advantage in search results. At minimum, Organization schema should be present with company name, logo, founding date, and social profiles.
- **Severity:** Major
- **Recommendation:** Add Organization schema (name, url, logo, foundingDate, sameAs for social profiles), WebSite schema with SearchAction if search is available, and consider FAQ schema for common questions.
- **Evidence:** DOM inspection: no script[type="application/ld+json"] elements found.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 24: All image alt text empty hurts image SEO

- **Description:** With all 33 images having alt="", there is zero image SEO value on the page. Product diagrams, solution imagery, and news thumbnails that could rank in image search are invisible to search engines.
- **Why it's a problem:** Violates **SEO-05 Image Alt Text** — descriptive alt text helps images rank in Google Image Search and contributes to overall page relevance signals. The Chaos vs. Curation diagram, in particular, is a strong visual asset that could drive traffic if properly described.
- **Severity:** Major
- **Recommendation:** Same as Finding 17 — add descriptive alt text to all informational images. For SEO, include relevant keywords naturally (e.g., "cross-border payment infrastructure comparison diagram").
- **Evidence:** All 33 images have alt="".
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 25: H1 is generic and not keyword-optimized

- **Description:** The H1 tag reads "The payments curation platform." While it includes the brand concept ("payments curation"), it doesn't include high-value search keywords like "cross-border payments," "global payouts," "B2B payments infrastructure," or "international payment API."
- **Why it's a problem:** Violates **SEO-03 H1 Tag** — the H1 is a primary ranking signal for on-page SEO. A generic H1 that doesn't match common search queries means the page is less likely to rank for terms enterprise buyers actually search. "Payments curation" is a Navro-specific term, not an established category term that prospects search for.
- **Severity:** Minor
- **Recommendation:** Revise the H1 to include at least one high-volume keyword while preserving the brand concept. Example: "The Payments Curation Platform for Global Cross-Border Payouts" or "Curate Your Global Payments Through One API."
- **Evidence:** H1 is "The payments curation platform" — no cross-border, global, or API keywords.
- **Effort Rating:** Low
- **Impact Rating:** Medium
- **Confidence Rating:** High

### Finding 26: Title tag starts with "Home" wasting keyword space

- **Description:** The page title is "Home - Navro | The Payments Curation Platform" (48 characters). It starts with "Home" which provides no SEO value and wastes the most prominent position in the title tag.
- **Why it's a problem:** Violates **SEO-01 Page Title** best practice — the first words of a title tag carry the most weight for search ranking and click-through rate in search results. "Home" tells neither search engines nor users anything useful about the page content.
- **Severity:** Minor
- **Recommendation:** Restructure the title to lead with the primary keyword and value proposition: "Navro | Global Payments Curation Platform — One API for Cross-Border Payouts." Keep within 50-60 characters.
- **Evidence:** Title tag: "Home - Navro | The Payments Curation Platform" (48 chars).
- **Effort Rating:** Low
- **Impact Rating:** Low
- **Confidence Rating:** High

---

## 9. Content Hierarchy & Copywriting

Evaluates whether content guides users through a clear narrative and communicates value in terms of outcomes.

### Finding 27: Feature-led hero headline, not benefit-led

- **Description:** The hero headline "The payments curation platform" describes what Navro IS (a category/product label), not what it DOES for the customer. There is no subheading that translates this into a customer benefit or outcome.
- **Why it's a problem:** Violates **COPY-02 Benefit-Led vs. Feature-Led Framing** and **COPY-03 Headline Specificity** — strong B2B copy leads with the outcome the user achieves. "The payments curation platform" could apply to various competitors and doesn't answer the question "What's in it for me?" A buyer visiting for the first time needs to quickly understand the benefit, not the category.
- **Severity:** Critical
- **Recommendation:** Reframe the hero headline to lead with customer benefit. Example: "Move Money to 200+ Territories Through One Connection" (benefit-led) with "The payments curation platform" as a supporting descriptor below. The "What We Do" section's copy ("Navro helps large businesses move money globally using the right rail, currency, compliance...") is actually stronger than the hero — consider promoting that narrative higher.
- **Evidence:** H1: "The payments curation platform" — category label, not benefit statement.
- **Effort Rating:** Low
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 28: No social proof copy anywhere on homepage

- **Description:** The homepage contains zero customer testimonials, named quotes, quantified results, or case study references. The News section contains press releases about partnerships and hires, but no customer-voice content.
- **Why it's a problem:** Violates **COPY-11 Social Proof Copy** — enterprise buyers need evidence from peers before committing to a sales conversation. Without social proof, all claims on the page are unsubstantiated. The "200+ territories" and "140+ currencies" stats are good but they describe capability, not customer outcomes.
- **Severity:** Critical
- **Recommendation:** Add at minimum 2-3 named testimonials from identifiable customers (name, title, company, logo). Prioritize quotes that describe specific outcomes (cost savings, speed improvements, reduction in payment providers). Place these near CTAs and after the "What We Do" section.
- **Evidence:** Full page review: zero customer quotes, testimonials, logos, or case study references.
- **Effort Rating:** Medium
- **Impact Rating:** High
- **Confidence Rating:** High

### Finding 29: "Chaos vs. Curation" is the strongest section but underleveraged

- **Description:** The "Chaos vs. Curation" section contains a comparison diagram showing the fragmented multi-provider experience ("Without Navro") versus the unified single-connection experience ("With Navro"). This is the most compelling storytelling element on the page — it clearly visualizes the problem and solution. However, its CTA is a weak "Learn More" and it's positioned mid-page where many visitors may not reach it.
- **Why it's a problem:** Violates **COPY-05 Narrative Flow and Page Arc** — the strongest piece of content is buried below multiple scroll-lengths and gated by a slow hero load. The narrative flow should lead with the problem (chaos), introduce the solution (curation), then provide proof — but the current ordering (hero label → What We Do list → Solutions cards → Chaos vs. Curation) doesn't follow this arc.
- **Severity:** Major
- **Recommendation:** Consider promoting the Chaos vs. Curation narrative higher on the page — ideally as the second section after the hero. Replace its "Learn More" CTA with something stronger and more specific (e.g., "See How Curation Works" or "Book a Demo to See Your Setup"). This diagram could also be effective as a hero visual element.
- **Evidence:** Chaos vs. Curation appears as the 4th section; preceded by hero, What We Do, and Solutions.
- **Effort Rating:** Medium
- **Impact Rating:** High
- **Confidence Rating:** High

---

## 10. Mobile Responsiveness

*Flagged for manual review. Automated evaluation was conducted at 1238px desktop viewport width only. The hero content clipping issue observed at this viewport width suggests potential responsive breakpoint problems that may be more severe on mobile.*

- **Confidence Rating:** Cannot Evaluate — requires manual mobile testing across standard breakpoints (375px, 768px, 1024px).

---

## 11. Competitor Benchmarking

Navro's homepage was compared against visible patterns from competitors Airwallex, Wise Platform, and Payoneer:

- **Social proof gap:** All three competitors feature customer logos prominently above the fold. Airwallex and Payoneer include quantified customer results. Navro has zero social proof.
- **Engagement path gap:** Airwallex offers "Start for free" (self-serve) alongside "Talk to sales." Wise Platform offers transparent pricing calculators. Navro offers only "Schedule a Call."
- **Hero clarity gap:** Competitor hero sections immediately communicate what the product does and for whom. Navro's hero is a category label with no supporting explanation.
- **Confidence Rating:** Medium — based on publicly available competitor homepage patterns, not deep competitive analysis.

---

*End of UX Audit Findings — Navro — March 19, 2026*

*Conducted by Sari Sari Design*
