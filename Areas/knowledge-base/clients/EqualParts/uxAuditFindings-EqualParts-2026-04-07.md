# UX Audit Report

## Equal Parts

**URL:** https://www.equalparts.ai/
**Audit Date:** April 7, 2026
**Auditor:** Sari Sari Design

---

## Business Model Profile

| Attribute | Value |
|---|---|
| Industry | InsurTech (Insurance Technology) |
| Company Stage | Series A ($23M raised Feb 2026; $50M total capital) |
| Core Product | AI-enhanced independent insurance agency platform — acquires agencies and equips them with AI tools |
| Objective | Become a top-5 insurance distributor within the next decade |
| Primary Conversion Goal | Book a Consultation / Start a Quote |
| Core Personas | (1) Insurance agency owners considering acquisition/partnership; (2) Business owners and founders seeking commercial insurance |
| Customer Type | B2B (agency acquisition) + B2B2C (insurance buyers through acquired agencies) |
| Business Model | Acquisition-driven platform — acquire agencies, integrate onto shared operating platform, equip with AI |
| GTM Motion | Sales-led growth (SLG) + acquisition-led growth |
| Competitor Landscape | Hub International, Acrisure, Newfront, Embroker, and other insurance aggregators/platforms |

### Evaluation Priorities (most to least relevant)

1. Conversion Rate Optimization — the site must convert two distinct audiences (agency owners + insurance buyers)
2. Content Hierarchy and Copywriting — message clarity is critical for a dual-audience site post-Series A
3. Information Architecture — routing two personas through one homepage requires clear IA
4. Visual and Brand Design — credibility signaling for enterprise insurance buyers
5. SEO and Discoverability — organic discovery matters for a company building brand post-Series A
6. Accessibility — WCAG compliance carries legal weight in financial services
7. Performance and Core Web Vitals — table stakes for search ranking
8. Nielsen's Usability Heuristics — general UX foundation

### Evaluation Lens

This audit is framed through the lens of a Series A InsurTech company with a dual-audience homepage — one side targeting agency owners for acquisition, the other targeting business owners seeking insurance. At this stage, the website is the company's primary credibility signal for both audiences, and every conversion path needs to be clear enough that visitors self-route without friction.

### Why This Matters

For a company whose growth model depends on acquiring insurance agencies and winning insurance buyers simultaneously, website friction directly costs pipeline on both fronts. Agency owners evaluating an acquisition partner will scrutinize the site's professionalism and clarity; insurance buyers comparing options will bounce if the value proposition isn't immediately obvious.

---

## Methodology

This audit evaluated equalparts.ai across 8 standardized UX dimensions using Sari Sari Design's reference checklist, supplemented by automated accessibility scanning, SEO metadata extraction, and visual inspection of scroll behavior and layout rendering.

---

# Friction and Pain Points

## 1. Nielsen's 10 Usability Heuristics

### Finding 1: Scroll-Triggered Animations Create Invisible Content Sections

**Description:** The homepage relies heavily on Webflow scroll-triggered animations (via `data-w-id` attributes) to reveal content sections. When these animations fail to trigger — due to disabled JavaScript, slow network conditions, assistive technology, or reduced-motion user preferences — the page displays enormous blank gaps between content sections. Multiple full-viewport-height empty areas were observed between the hero (0–800px) and subsequent content sections. Some sections had content with `opacity: 0` that never resolved to visible.

**Why it's a problem:** Violates N-01 (Visibility of System Status) and N-08 (Aesthetic and Minimalist Design). Users who land on this page and scroll past the hero are met with a blank screen — there is no feedback indicating more content exists or is loading. This is especially problematic for users on slower connections or those with reduced-motion preferences enabled in their OS. The business impact is severe: visitors may assume the page is broken and abandon it entirely.

**Severity:** Critical

**Recommendation:** Implement a graceful fallback so that all content sections are visible by default and animations enhance the experience rather than gate it. Set initial CSS states to visible (`opacity: 1; transform: none`) and let Webflow interactions override them progressively. Test the page with JavaScript disabled and with `prefers-reduced-motion: reduce` to confirm all content is accessible.

**Evidence:** Multiple screenshots show entirely blank viewport at scroll positions 800px through 3500px on a 7907px-tall page. DOM inspection confirmed two H1 elements with `opacity: 0` that never resolved, and massive layout containers with no visible content.

**Effort:** Medium | **Impact:** High | **Confidence:** High

---

### Finding 2: Sticky Navigation Floats Over Content

**Description:** The navigation bar is positioned as a sticky element that floats mid-page rather than anchoring to the top of the viewport on initial load. The navbar container appears at `top: 2516px` in the DOM, suggesting it is placed within the page flow rather than fixed to the viewport from the start. When scrolling, it detaches and overlaps content sections.

**Why it's a problem:** Violates N-04 (Consistency and Standards). Users expect persistent navigation to be at the top of the page at all times. A navbar that appears mid-scroll or floats unpredictably breaks the established web convention and can obstruct content it overlaps.

**Severity:** Minor

**Recommendation:** Anchor the navigation to the top of the viewport with `position: fixed` or `position: sticky` at `top: 0` from initial page load. Ensure it does not obstruct content by adding appropriate padding to the body or first content section.

**Effort:** Low | **Impact:** Medium | **Confidence:** Medium

---

## 2. Conversion Rate Optimization

### Finding 3: Hero Headline Fails the 5-Second Test

**Description:** The hero headline reads "We believe AI should enhance, not replace, the power of human connection in insurance." This is a belief statement — a philosophical position — not a value proposition. A first-time visitor cannot answer the three essential questions within 5 seconds: (1) What does this company do? (2) Who is it for? (3) What should I do next? The subtext "Introducing Equal Parts" above the headline further suggests a company announcement rather than a solution to a visitor's problem.

**Why it's a problem:** Violates CRO-01 (Above-the-Fold Clarity) and COPY-01 (5-Second Test). For a Series A company that needs to win trust quickly from both agency owners and insurance buyers, opening with an internal belief rather than a clear value proposition wastes the most valuable real estate on the site. Insurance buyers comparing providers will bounce before scrolling if they can't immediately tell what Equal Parts does differently for them.

**Severity:** Critical

**Recommendation:** Replace the belief statement with a benefit-led headline that answers "what" and "who" immediately. For example: "Better insurance for growing companies — powered by AI, delivered by people who know your industry." Reserve the philosophy for a supporting subheadline or an About page. The hero should sell the outcome, not the worldview.

**Effort:** Low | **Impact:** High | **Confidence:** High

---

### Finding 4: Three Competing CTAs With No Clear Hierarchy

**Description:** The hero section presents "Book a Consultation" and "Start a Quote" side by side with nearly identical visual weight (both are outlined buttons in muted colors against a dark background). Meanwhile, the sticky navigation features "Get Started" as a prominent blue button. All three CTAs go to different URLs: `/schedule`, `/quote`, and `get.equalparts.ai/`. There is no clear visual or informational hierarchy between them.

**Why it's a problem:** Violates CRO-02 (CTA Specificity and Placement) and CRO-03 (CTA Redundancy and Dilution). When visitors see three different actions with no obvious primary, they experience decision paralysis. The choice between "Book a Consultation," "Start a Quote," and "Get Started" requires the visitor to already understand the company's process — which they don't on a first visit. This splits attention and reduces conversion on all three paths.

**Severity:** Major

**Recommendation:** Establish a single primary CTA that serves the majority conversion goal (likely "Start a Quote" for insurance buyers or "Book a Consultation" for agency partners — pick one). Make it visually dominant (solid fill, larger, contrasting color). Demote the secondary action to a text link or ghost button. Align the nav CTA with the primary hero CTA to reinforce a single path. Consider using the page to qualify intent first (e.g., "I need insurance" vs. "I own an agency") before presenting the relevant CTA.

**Effort:** Low | **Impact:** High | **Confidence:** High

---

### Finding 5: No Engagement Paths for Mid-Funnel Visitors

**Description:** The site offers only high-commitment conversion actions: Book a Consultation, Start a Quote, or Get Started. There are no mid-funnel engagement paths — no downloadable resource, no product tour, no case study deep-dive, no newsletter signup, no "see how it works" demo. Blog posts exist but are buried below the fold with no contextual links near decision points.

**Why it's a problem:** Violates CRO-04 (Engagement Path Variety). Not every visitor is ready to start a quote or book a call on their first visit. Agency owners considering selling their agency need time to evaluate; business owners comparing insurance providers need education. Without a lower-commitment option, these visitors leave with no way for Equal Parts to follow up.

**Severity:** Major

**Recommendation:** Add at least one mid-funnel engagement path near the hero or after the value proposition section. Options include: a downloadable guide ("What to look for in an insurance partner"), a short product walkthrough video, or a simple email capture with a relevant hook ("Get our monthly InsurTech briefing"). This gives visitors who aren't ready to convert a reason to stay connected.

**Effort:** Medium | **Impact:** High | **Confidence:** High

---

### Finding 6: Social Proof Lacks Quantified Results

**Description:** The site includes six testimonials from named individuals with titles (Tracy H., Michael S., Darren F., James D., Ben P., Jonathon C.). However, none include quantified outcomes, company names, or measurable results. The quotes are qualitative endorsements ("powerhouse advocate," "always there to answer") rather than evidence-backed proof points.

**Why it's a problem:** Violates CRO-07 (Social Proof Depth) and COPY-11 (Social Proof Copy). For a Series A InsurTech company asking businesses to trust them with their insurance portfolio — or asking agency owners to sell their life's work — vague testimonials are insufficient. Decision-makers want to see: company names, outcomes ("saved us 30% on premiums"), and context that maps to their own situation.

**Severity:** Major

**Recommendation:** Upgrade at least 3 testimonials to include: full name, title, company name, and a specific result or outcome. Where possible, add logos. Position the strongest proof near the primary CTA. Consider adding a "Results" or "Case Studies" section with 2–3 brief quantified outcomes (e.g., "Helped a Series B startup reduce coverage gaps by 40% in 60 days").

**Effort:** Medium | **Impact:** High | **Confidence:** High

---

## 3. Information Architecture

### Finding 7: Homepage Serves Two Audiences With No Routing

**Description:** The homepage attempts to serve two fundamentally different audiences — agency owners considering acquisition and business owners seeking insurance — through a single linear page with no persona routing. There is no mechanism for visitors to self-identify (e.g., "I need insurance" vs. "I own an agency") and be directed to the content most relevant to them.

**Why it's a problem:** Violates IA-04 (Persona Routing). An agency owner evaluating an acquisition offer has completely different questions, concerns, and decision criteria than a startup founder shopping for liability coverage. Forcing both through the same content stream means neither audience gets a tailored experience, and both must wade through irrelevant content to find what matters to them.

**Severity:** Major

**Recommendation:** Add a persona-routing element near the top of the homepage — either a clear two-path split ("I'm looking for insurance" / "I own an agency") or separate navigation items that map to each audience. Ensure the subsequent content, CTAs, and proof points are tailored to each path.

**Effort:** Medium | **Impact:** High | **Confidence:** High

---

### Finding 8: Navigation Labels Are Company-Centric

**Description:** The navigation uses labels like "Insurance Solutions," "Industries Served," and "Agency Partners" — all framed from the company's perspective. A business owner looking for insurance doesn't think "I need an insurance solution" — they think "I need coverage for my startup" or "What kind of insurance do I need?"

**Why it's a problem:** Violates IA-01 (Navigation Clarity) and N-02 (Match Between System and Real World). Company-centric navigation forces visitors to translate internal language into their own needs. This adds cognitive load and makes it harder for visitors to find the right content quickly.

**Severity:** Minor

**Recommendation:** Rewrite navigation labels in user-centric language. For example: "Insurance Solutions" → "Coverage Types" or "What We Cover"; "Industries Served" → "Who We Work With"; "Agency Partners" → "For Agency Owners." Test with 3–5 target users to validate the labels make sense.

**Effort:** Low | **Impact:** Medium | **Confidence:** Medium

---

## 4. Visual and Brand Design

### Finding 9: Value Proposition Framing Is Belief-Led, Not Benefit-Led

**Description:** The page's key headings are framed around what Equal Parts believes rather than what the customer gains. "We believe AI should enhance, not replace..." and "The future of insurance demands equal parts strong relationships and cutting-edge innovation" are company philosophy statements. The copy consistently leads with the company's worldview rather than the buyer's outcome.

**Why it's a problem:** Violates CRO-05 (Value Proposition Clarity) and COPY-02 (Benefit-Led Framing). Philosophy-first messaging signals thought leadership but doesn't answer the buyer's core question: "What will this do for me?" In a competitive insurance landscape, buyers compare based on outcomes (cost savings, coverage quality, speed of service), not on which company has the best philosophy.

**Severity:** Major

**Recommendation:** Restructure the page copy to lead with outcomes. The hero should answer "what's in it for me?" The company philosophy can support the narrative in a secondary position (e.g., an "Our Approach" section), but the lead messaging should be benefit-first: faster quotes, broader coverage, dedicated advisor, cost savings — whatever the most compelling differentiator is.

**Effort:** Low | **Impact:** High | **Confidence:** High

---

## 5. Accessibility (WCAG 2.1 AA)

### Finding 10: 56 of 62 Images Have Empty Alt Text

**Description:** Automated scanning found 62 images on the homepage. Only 6 have meaningful alt text. The remaining 56 have empty `alt=""` attributes. While empty alt is correct for purely decorative images, it is unlikely that 90% of images on the page are decorative — team headshots, product imagery, and informational graphics almost certainly require descriptive alt text.

**Why it's a problem:** Violates ACC-01 (1.1.1 Non-text Content) and SEO-05 (Image Alt Text). Screen reader users will have no context for the vast majority of images on the page. Search engines also cannot index or understand images without alt text, reducing discoverability for image search and reducing overall page relevance signals.

**Severity:** Major

**Recommendation:** Audit all 62 images and add descriptive alt text to every image that conveys meaning (team photos, product screenshots, icons representing services, etc.). Reserve `alt=""` only for truly decorative images (background textures, spacing elements). Team photos should include the person's name and title.

**Effort:** Low | **Impact:** High | **Confidence:** High

---

### Finding 11: No Skip Navigation Link

**Description:** No skip navigation link (`<a href="#main-content">`) was detected. Keyboard users must tab through the entire navigation bar (logo, 4 nav items, Get Started button, plus any dropdown items) before reaching the main page content.

**Why it's a problem:** Violates ACC-16 (2.4.1 Bypass Blocks). This is a baseline WCAG 2.1 AA requirement. For keyboard-only users and screen reader users, the absence of a skip link creates unnecessary friction on every page visit. In financial services and insurance, accessibility compliance carries additional legal weight.

**Severity:** Major

**Recommendation:** Add a visually-hidden skip navigation link as the first focusable element in the page. It should become visible on keyboard focus and link to `#main-content` (with a corresponding `id` on the main content container). This is a 15-minute fix.

**Effort:** Low | **Impact:** Medium | **Confidence:** High

---

### Finding 12: 6 of 9 Form Fields Rely on Placeholder-Only Labels

**Description:** The contact form at the bottom of the homepage has 9 input fields. Only 2 have programmatically associated labels. The remaining 6 rely solely on placeholder text as their label — meaning the label disappears as soon as the user begins typing.

**Why it's a problem:** Violates ACC-26 (3.3.2 Labels or Instructions) and ACC-02 (1.3.1 Info and Relationships). Placeholder-only labels are a well-documented usability and accessibility failure: users with cognitive disabilities may forget what field they're filling in, screen readers may not announce the field's purpose, and the disappearing text creates a poor experience for all users — especially on multi-field forms.

**Severity:** Major

**Recommendation:** Add persistent, visible labels above each form field. Keep placeholder text as supplementary hints if needed (e.g., "e.g., jane@company.com") but never as the sole label. Ensure each label is programmatically associated with its input via `for`/`id` or `aria-label`.

**Effort:** Low | **Impact:** Medium | **Confidence:** High

---

## 6. Performance and Core Web Vitals

### Finding 13: PageSpeed Data Unavailable — Manual Check Required

**Description:** The PageSpeed Insights API returned HTTP 429 (rate limited) after 3 attempts. Browser-based fallback could not complete the test in this session.

**Why it's a problem:** Cannot evaluate PERF-01 through PERF-09 without performance data. Given the page's heavy reliance on scroll-triggered animations, large image count (62 images), and Webflow hosting, performance is likely a concern — but this needs manual verification.

**Severity:** Cannot Evaluate

**Recommendation:** Run a manual PageSpeed test at https://pagespeed.web.dev/analysis?url=https://www.equalparts.ai/ and evaluate Core Web Vitals. Pay particular attention to LCP (likely affected by hero image), CLS (likely affected by scroll animations), and Total Blocking Time (likely affected by Webflow interaction scripts).

**Effort:** Low | **Impact:** Unknown | **Confidence:** Cannot Evaluate

---

## 7. SEO and Discoverability

### Finding 14: Five H1 Tags on a Single Page

**Description:** The homepage contains five H1 elements:
1. "We believe AI should enhance, not replace, the power of human connection in insurance"
2. "The future of insurance demands equal parts strong relationships and cutting-edge innovation"
3. "Innovative Technology That Propels Agents Into the Future"
4. "Seasoned builders leveraging AI and automation to scale people-centric businesses"
5. "We're on a mission to become a top-5 insurance distributor within the next decade..."

**Why it's a problem:** Violates SEO-03 (H1 Tag — one H1 per page) and SEO-04 (Heading Hierarchy). Multiple H1s dilute the page's primary keyword signal and confuse search engines about the page's core topic. Google's crawlers use heading structure to understand content hierarchy — five competing H1s suggest five different pages worth of content jammed into one, none of which gets prioritized.

**Severity:** Critical

**Recommendation:** Designate a single H1 that includes the primary keyword (e.g., "AI-Powered Insurance for Growing Companies"). Demote the remaining headings to H2 or H3 based on their hierarchical relationship to the primary topic. Ensure the heading structure follows a logical H1 → H2 → H3 progression throughout the page.

**Effort:** Low | **Impact:** High | **Confidence:** High

---

### Finding 15: No Structured Data / Schema Markup

**Description:** Zero `application/ld+json` scripts were found on the page. There is no Organization, LocalBusiness, InsuranceAgency, or FAQPage schema present.

**Why it's a problem:** Violates SEO-09 (Structured Data). Without structured data, Equal Parts cannot appear in Google's rich results (knowledge panels, FAQ carousels, etc.). For a company that just raised a Series A and is actively building brand awareness, missing structured data means missed organic visibility at exactly the moment they need it most.

**Severity:** Major

**Recommendation:** Add Organization schema with company name, logo, founding date, social profiles, and contact information. Consider adding LocalBusiness or InsuranceAgency schema with service area and license details. If FAQ content is added to the site, implement FAQPage schema. Use Google's Rich Results Test to validate.

**Effort:** Low | **Impact:** Medium | **Confidence:** High

---

### Finding 16: Page Title Exceeds Recommended Length

**Description:** The page title is "Equal Parts — Reshaping Insurance with AI and Human Relationships" (68 characters). The recommended range is 50–60 characters. The title will be truncated in Google search results.

**Why it's a problem:** Violates SEO-01 (Page Title). A truncated title in search results reduces click-through rate and may cut off the most meaningful part of the description.

**Severity:** Minor

**Recommendation:** Shorten to under 60 characters. For example: "Equal Parts | AI-Powered Insurance for Growing Companies" (55 characters). Lead with the brand name and include the primary keyword.

**Effort:** Low | **Impact:** Low | **Confidence:** High

---

## 8. Content Hierarchy and Copywriting

### Finding 17: Headline Specificity Is Low Across the Page

**Description:** The page's major headlines are generic enough to apply to any InsurTech competitor: "Innovative Technology That Propels Agents Into the Future," "The future of insurance demands equal parts strong relationships and cutting-edge innovation." None of these headlines contain a specific claim, a quantified result, or a differentiator that could only belong to Equal Parts.

**Why it's a problem:** Violates COPY-03 (Headline Specificity). Generic headlines fail to differentiate. In a market where multiple companies claim to combine AI with human touch (Newfront, Embroker, etc.), Equal Parts needs copy that is specific to their model — the acquisition strategy, the agency-owner partnership, the AI tools that make agents more effective. Without specificity, the site reads like a category description, not a company pitch.

**Severity:** Major

**Recommendation:** Make headlines specific and ownable. Replace "Innovative Technology That Propels Agents Into the Future" with something like "Our AI handles the back office so your agents can handle relationships." Each headline should pass the "could a competitor say this?" test — if yes, it's not specific enough.

**Effort:** Low | **Impact:** High | **Confidence:** High

---

### Finding 18: Page Narrative Arc Is Company-Out, Not User-In

**Description:** The page follows a company-centric narrative: company philosophy → company approach → company technology → company team → company mission → contact form. The user's problem, pain, or desired outcome is never explicitly stated. There is no "problem" section that mirrors what the target buyer is experiencing before presenting the solution.

**Why it's a problem:** Violates COPY-05 (Narrative Flow and Page Arc). Effective landing pages follow a problem → solution → proof → action arc. Equal Parts skips the problem entirely and goes straight to "here's what we believe and here's our team." This assumes the visitor already understands why they should care — which is a dangerous assumption for a company most people haven't heard of yet.

**Severity:** Major

**Recommendation:** Restructure the page to open with the buyer's pain point (e.g., "Insurance shouldn't be this hard for growing companies"), then present Equal Parts as the solution, then prove it with results and testimonials, then close with a clear CTA. This user-in narrative gives visitors a reason to care before asking them to act.

**Effort:** Medium | **Impact:** High | **Confidence:** High

---

*End of findings. 18 total findings across 8 dimensions. 3 Critical, 10 Major, 3 Minor, 1 Cannot Evaluate, 1 informational.*
