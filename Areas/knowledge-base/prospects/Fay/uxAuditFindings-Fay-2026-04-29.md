# UX Audit Report
# Fay
**URL:** https://www.faynutrition.com/ | **Audit Date:** April 29, 2026

---

## Business Model Profile

| Field | Value |
|-------|-------|
| **Industry** | Digital Health / Telehealth Nutrition |
| **Company Stage** | Growth (Series A/B) — 100K+ clients, 4,000+ dietitians, multi-channel B2B |
| **Core Product** | Insurance-covered telehealth dietitian matching marketplace + wellness app |
| **Objective** | Connect consumers with insurance-covered registered dietitians at zero or low out-of-pocket cost; expand employer and insurance partnerships |
| **Primary Conversion Goal** | Signup quiz completion (signup.faynutrition.com/quiz) → dietitian booking |
| **Core Personas** | Adults managing chronic conditions (diabetes, weight, gut health, PCOS); health-conscious consumers seeking insurance-covered nutrition support |
| **Customer Type** | B2C (primary) + B2B employer channel |
| **Business Model** | Marketplace (insurance billing); employer contracts |
| **GTM Motion** | Content/SEO + PLG (zero-friction signup) + B2B sales (employer channel) |
| **Competitors** | Nourish, Culina Health, Teladoc Nutrition, Kaiser Nutrition, Hims & Hers nutrition tier |

### Evaluation Priorities
1. Conversion Rate Optimization (primary conversion goal: quiz signup)
2. Content Hierarchy & Copywriting (B2C trust and differentiation in a competitive market)
3. Information Architecture (multi-persona navigation)
4. SEO & Discoverability (SEO is a core acquisition channel — heavy location/specialty page footprint)
5. Visual & Brand Design
6. QA / Bug Reporting
7. Accessibility (healthcare users; compliance risk)
8. Performance & Core Web Vitals
9. Nielsen Heuristics
10. Competitor Benchmarking
11. Mobile Responsiveness

### Evaluation Lens
Fay is a B2C health marketplace competing on the "insurance-covered" angle in a space where Nourish and Culina Health use near-identical positioning. The audit is framed around conversion efficiency (quiz funnel vs. browse funnel) and trust-building copy that needs to differentiate Fay from look-alike competitors at first contact.

### Why This Matters
In a B2C health marketplace, website friction doesn't just lose a session — it breaks trust at the moment a person is considering changing their relationship with their body. For Fay specifically, where "covered by insurance" is both the headline and the primary objection handler, any gap between what the page promises and what users can verify costs real bookings. With $0/session as the hook and 100K+ clients as social proof, the ceiling is high — but only if the funnel doesn't drop users at the wrong fork.

### Competitor Context
Nourish (nourish.com) uses nearly identical hero positioning: "See a dietitian covered by your insurance." The differentiating factors for Fay — scale (100K+ clients, 4000+ dietitians), the wellness app and rewards layer, and the employer channel — are either buried below the fold or underexplained. Culina Health leans harder into condition-specific landing pages (diabetes, PCOS, eating disorders) which may give it better SEO targeting for high-intent searches.

---

## Methodology
This audit was conducted by an AI-assisted analyst using a structured 11-dimension UX framework covering Nielsen's heuristics, conversion rate optimization, information architecture, QA, visual and brand design, accessibility (WCAG 2.1 AA), mobile responsiveness, performance and Core Web Vitals, SEO, competitor benchmarking, and content hierarchy. Browser automation captured live DOM structure, accessibility violations, form labeling, SEO metadata, heading hierarchy, and page screenshots; all findings were reviewed for accuracy and business relevance. Mobile responsiveness and performance require manual follow-up (see PERF and MOBILE sections).

---

## Friction & Pain Points

---

### 1. Conversion Rate Optimization

**CRO-01: Above-the-Fold Clarity**

#### Finding 1: The hero passes the 5-second test but the call-to-action split immediately creates confusion

- **Description:** The hero communicates what Fay does (find an insurance-covered dietitian) clearly within 5 seconds. The search form with location/insurance/specialty filters and a "Find a dietitian" button is immediately actionable. However, a second CTA — "Get started" — sits in the sticky navigation and routes to a completely different flow (signup.faynutrition.com/quiz). These two CTAs exist simultaneously above the fold and lead to fundamentally different experiences.
- **Why it's a problem:** CRO-02 (CTA Specificity and Placement). The browse path ("Find a dietitian" → search results → book) and the signup path ("Get started" → quiz → matched dietitian) serve different intents. A visitor who doesn't understand the difference may enter the browse path expecting to sign up, hit friction, and abandon. The primary conversion action (the quiz) is buried in the nav while the search form occupies the entire hero.
- **Severity:** Major
- **Recommendation:** Elevate the quiz CTA into the hero body as the primary action, positioned below or adjacent to the search form. Relabel it specifically: "Find my dietitian" or "See if I'm covered" rather than "Get started." Add a short line of microcopy explaining the difference (e.g., "Browse dietitians ↓ or get matched in 2 minutes →").
- **Effort:** Medium | **Impact:** High | **Confidence:** High

---

**CRO-04: Engagement Path Variety**

#### Finding 2: No mid-intent engagement path — visitors must choose between browsing or signing up, nothing else

- **Description:** The site offers exactly two options: browse dietitians (search marketplace) or sign up via quiz. There is no mid-intent path — no "how it works" explainer link, no email capture (e.g., "Get a free insurance coverage guide"), no product tour, no case study. The FAQ section exists at the bottom but is not surfaced for curious visitors earlier in the page.
- **Why it's a problem:** CRO-04 (Engagement Path Variety). In a healthcare marketplace, many visitors are research-mode: they want to understand the model, verify their insurance is covered, and read more before committing to a signup flow. Without a mid-intent path, Fay loses the substantial segment of visitors who are interested but not ready to act. For a PLG brand at growth stage, this leaks significant top-of-funnel volume.
- **Severity:** Critical
- **Recommendation:** Add a secondary CTA beneath the primary hero action targeting mid-intent visitors: e.g., "See how it works" linking to a process explainer, or "Check if your insurance is covered" linking to the insurance estimator page. Consider an email capture offer (e.g., "Get the free guide: How to use your insurance for nutrition care") to build a nurture list from non-converting visits.
- **Effort:** Medium | **Impact:** High | **Confidence:** High

---

**CRO-09: Urgency and Motivation**

#### Finding 3: No reason to act today rather than next week

- **Description:** The "$0/session" and "100,000+ clients" signals are motivating but static. Nothing on the page creates a sense of urgency or forward momentum. The page says "care that starts today" but doesn't provide scheduling context (availability, response time, first session timeline) that would prompt same-session conversion.
- **Why it's a problem:** CRO-09 (Urgency and Motivation). For a marketplace model, slot availability and booking velocity are real signals. The absence of any scheduling context ("Most dietitians have openings this week" or "Average first session within 3 days") leaves money on the table from visitors who are ready but need one more push.
- **Severity:** Minor
- **Recommendation:** Add a genuine scarcity/timing signal near the primary CTA — e.g., "Most clients get their first session within 3 days" — supported by real data. This reduces the procrastination loop without manufacturing false urgency.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

---

**CRO-06: Trust Signal Placement**

#### Finding 4: Insurance logos appear without labeling context — visitors may not know what they signify

- **Description:** A carousel of insurance logos (Humana, Anthem, BlueCross, UHC, Aetna, Cigna, UMR) appears immediately below the hero. These logos are unlabeled — there's no heading, no "Accepted Insurance" label, no explanatory text. The logos scroll/carousel automatically on desktop.
- **Why it's a problem:** CRO-06 (Trust Signal Placement). For users unfamiliar with how insurance-covered telehealth works, a row of logos without a label is ambiguous — they could be partners, sponsors, or something else. Naming this section "Accepted Insurance" or "We work with 700+ plans including:" converts an ambiguous design element into a clear trust signal that addresses the primary objection.
- **Severity:** Minor
- **Recommendation:** Add a short heading above or beside the insurance logos: "Accepted Insurance" or "Works with your plan." This 2-word label converts a decorative element into an active trust signal that directly handles the visitor's top question.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

---

### 2. Content Hierarchy & Copywriting

**COPY-03: Headline Specificity**

#### Finding 5: Section headlines are generic and interchangeable with any competitor

- **Description:** Below the hero, section headings include: "Registered dietitians, ready to support you," "Real people, real results," "Care that starts today," "Success stories." None of these are specific to Fay or competitively differentiated. Every one could appear on Nourish, Culina Health, or any telehealth competitor's page.
- **Why it's a problem:** COPY-03 (Headline Specificity). In a crowded category where Nourish uses near-identical hero positioning, Fay's ability to hold attention past the first scroll depends on demonstrating distinct value at every section. Generic H2s fail this test and reduce the persuasive momentum built by the strong, specific H1. They also miss keyword opportunities for on-page SEO.
- **Severity:** Major
- **Recommendation:** Rewrite section headings to lead with Fay's specific differentiators. Examples: "Registered dietitians, 100% covered by insurance" → clarifies the unique angle immediately; "Weight loss, diabetes, gut health — all in one plan" → addresses the breadth vs. a one-condition tool. Each H2 should contain a Fay-specific claim, not a category descriptor.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

---

**COPY-09: CTA Copy Quality**

#### Finding 6: "Get started" tells users nothing about what they're starting

- **Description:** The primary nav CTA is "Get started" — the most common, least informative call-to-action in SaaS and health apps. It appears in the sticky nav on every scroll position on the page. The quiz it leads to (at signup.faynutrition.com/quiz) is Fay's primary conversion funnel.
- **Why it's a problem:** COPY-09 (CTA Copy Quality). "Get started" communicates zero about what the action entails, what the user will get, or how long it takes. For a healthcare product where the signup involves sharing health conditions and insurance details, this vagueness increases drop-off. Competitors who label this "Check My Coverage" or "Find My Dietitian" get higher click-through rates because users know what they're walking into.
- **Severity:** Major
- **Recommendation:** Replace "Get started" with a specific, outcome-oriented label. Options by intent level: "Check My Coverage" (removes risk), "Find My Dietitian" (action-specific), "Get Matched — Free" (frames the quiz as a matching service, not a sign-up). Test one variant against the current label; even a 5–10% improvement in clicks compounds significantly at scale.
- **Effort:** Low | **Impact:** High | **Confidence:** High

---

**COPY-02: Benefit-Led vs. Feature-Led Framing**

#### Finding 7: The dietitian section leads with credentials, not outcomes

- **Description:** The "Registered dietitians, ready to support you" section subhead reads: "Our nationwide network of board-certified dietitians brings empathy and expertise across weight management, chronic conditions, gut health, and more." This is a feature description of the product (what the dietitians have) rather than a benefit statement (what users gain).
- **Why it's a problem:** COPY-02 (Benefit-Led vs. Feature-Led Framing). For a B2C health audience, the emotional hook is the transformation — not the credentials. Leading with "board-certified" speaks to a clinical buyer, not a consumer who came to the page because they're struggling with a chronic condition and can't afford care. The testimonials section directly below nails this with outcome-first framing; the section setup copy doesn't.
- **Severity:** Minor
- **Recommendation:** Reframe the subhead around the user outcome: "Dietitians who've helped 100,000+ people reverse diabetes, lose weight, and heal their gut — covered by your insurance." Follow the pattern of the testimonials themselves: outcome first, credential as supporting evidence.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

---

### 3. Information Architecture

**IA-01: Navigation Clarity**

#### Finding 8: Key navigation is hidden under a vague "Explore" dropdown

- **Description:** The primary navigation displays only "Explore" (collapsed dropdown) and "Get started." Pages including "Browse dietitians," "Get your estimate," "Refer a patient," "For dietitians," and "For employers" are all hidden under the Explore dropdown. Users who don't interact with the dropdown miss the full site structure, including the insurance estimator (which directly addresses the primary purchase objection).
- **Why it's a problem:** IA-01 (Navigation Clarity). The "Explore" label is maximally vague — it could mean blog content, services, or tool pages. For a B2C marketplace where user confidence depends on being able to find the insurance estimator and browse options freely, hiding navigation under a collapsed dropdown increases friction and reduces trust. The nav pattern mirrors a product that doesn't want users to see what's inside.
- **Severity:** Major
- **Recommendation:** Surface 3–4 key navigation items directly in the navbar: "Browse Dietitians," "Check Coverage," "How It Works" (or "For Employers" if audience is appropriate). Retain the Explore dropdown for secondary items. This reduces the cognitive load of "what does this site even have?" that visitors face on first scroll.
- **Effort:** Medium | **Impact:** Medium | **Confidence:** High

---

**IA-05: Content Grouping Logic**

#### Finding 9: Wellness app features conflict with the insurance-covered dietitian narrative

- **Description:** The hero and first sections establish Fay as "insurance-covered dietitian matching." Then the "Improve nutrition, sleep, and movement - all for $0" section introduces a wellness app with features including sleep tracking, movement goals, and a rewards program ("Earn rewards as you improve"). This is a different product category introduced without transition or context.
- **Why it's a problem:** IA-05 (Content Grouping Logic). Visitors who came to the site for an insurance-covered dietitian encounter unexpected content that reframes Fay as a wellness app. This creates a messaging split: Is Fay a marketplace or an app? Is the dietitian the product, or is it the wellness platform? Without clear labeling (e.g., "Plus: Fay's wellness app, included with your care"), the page creates brand confusion at the point where users should be moving toward conversion.
- **Severity:** Minor
- **Recommendation:** Add a clear contextual transition when introducing the app features — e.g., a heading like "Your plan comes with more than a dietitian" or an explicit "Included with your care:" label. Position the app features as an add-on benefit to the dietitian matching core, not as a parallel product.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

---

### 4. QA / Bug Reporting

**QA-01: Rendering**

#### Finding 10: Large blank section renders at bottom of page

- **Description:** When scrolling to the bottom of the homepage (confirmed with keyboard End key), a large blank white area (~600px+) appears before the page end. The "is-care" section in the DOM has a height of 2,698px with only 435 characters of text content — indicating that the visual content of this section (likely a scroll-triggered animation or Lottie/video component) fails to render on load or under specific conditions.
- **Why it's a problem:** QA dimension. A visible blank section signals a broken page to users and breaks the trust Fay has built through polished hero imagery and social proof. For a B2C health brand where first impressions of credibility matter, a rendering failure at the bottom of the page undermines the "professional, established company" signal. It also means users who scroll to the app features section — a key differentiator — may see nothing.
- **Severity:** Major
- **Recommendation:** Audit the is-care section in Webflow (or the underlying framework) to identify the render trigger. If it's a scroll-triggered animation, ensure it has a fallback static state for environments where the animation fails to initialize. Add a QA test specifically for page-bottom rendering across Chrome, Safari, and Firefox.
- **Effort:** Medium | **Impact:** High | **Confidence:** High

---

**QA-02: Typography**

#### Finding 11: H2 "Registered dietitians,ready to support you" has a missing space after comma

- **Description:** The second heading on the page, "Registered dietitians,ready to support you," is missing a space after the comma. This appears in the live DOM and is visible to sighted users with sufficient reading speed.
- **Why it's a problem:** N-04 (Consistency and Standards). Minor typographic errors signal reduced quality control attention. For a healthcare brand, polish signals professionalism and care — both qualities users are projecting onto the dietitians themselves.
- **Severity:** Minor
- **Recommendation:** Fix the copy to "Registered dietitians, ready to support you."
- **Effort:** Low | **Impact:** Low | **Confidence:** High

---

**QA-03: Social Proof Stats**

#### Finding 12: "App Store Rating" stat block shows stars but no numerical rating

- **Description:** The social proof stats bar shows: 700+ Insurance Plans, 4000+ Registered Dietitians, App Store Rating (with 4 stars icon), 100,000+ Satisfied Clients. The App Store Rating is the only stat without a number — it shows star icons but no score (e.g., "4.8" or "4.96"). The full rating (4.96) appears in the hero area but is separated from this context.
- **Why it's a problem:** VD-02 (Visual Hierarchy); N-06 (Recognition Rather Than Recall). The stats bar works because each cell has a number + label. Breaking this pattern by showing stars without a score makes the App Store stat visually incomplete and less persuasive — a partially completed social proof signal is weaker than either showing or omitting the rating.
- **Severity:** Minor
- **Recommendation:** Add the numerical rating to the App Store cell: "4.8★" or "4.96 / 5 stars." This makes the stat scannable and consistent with the surrounding cells.
- **Effort:** Low | **Impact:** Low | **Confidence:** High

---

### 5. SEO & Discoverability

**SEO-07: Open Graph Tags**

#### Finding 13: No Open Graph metadata — every shared link shows a blank preview

- **Description:** The homepage returns NOT FOUND for og:title, og:description, and og:image. This was confirmed via JavaScript DOM query against all `meta[property^="og:"]` tags. Twitter Card tags were also not present.
- **Why it's a problem:** SEO-07 (Open Graph Tags). Fay's B2C growth depends heavily on word-of-mouth referrals and social sharing — both direct (patients sharing their dietitian profile with friends) and indirect (HR teams sharing the employer product, dietitians sharing the practitioner page). Without Open Graph tags, every link shared on LinkedIn, Slack, iMessage, WhatsApp, or Facebook shows an empty or broken preview. For a brand that has invested heavily in photography and visual credibility, this means every social share strips away the brand identity entirely.
- **Severity:** Critical
- **Recommendation:** Add og:title, og:description, og:image, and og:url to every page. For the homepage: og:title = "Fay — Insurance-Covered Dietitian Matching," og:description = "Find a registered dietitian covered by your insurance. 100,000+ clients, $0 sessions available." og:image = the hero's dietitian photography asset (1200×630px). Add Twitter Card equivalents simultaneously.
- **Effort:** Low | **Impact:** High | **Confidence:** High

---

**SEO-02: Meta Description**

#### Finding 14: Meta description is 182 characters — Google will truncate it

- **Description:** The meta description reads: "Find dietitians and nutritionists near you who accept insurance. We'll help you find the right dietitian nutritionist for your needs and make it affordable. Book your session today." At 182 characters, this is 22+ characters over the recommended 150–160 limit.
- **Why it's a problem:** SEO-02 (Meta Description). Google truncates meta descriptions at approximately 155–160 characters, cutting the copy mid-sentence. In this case, "Book your session today" — the actual call to action — is likely being cut. Users see the description in Google results before clicking; a truncated description wastes a high-value real estate opportunity.
- **Severity:** Minor
- **Recommendation:** Trim to 155 characters while preserving the CTA: "Find registered dietitians near you covered by insurance. Book sessions as low as $0. 100,000+ clients, 4,000+ dietitians nationwide." (136 chars)
- **Effort:** Low | **Impact:** Low | **Confidence:** High

---

### 6. Accessibility (WCAG 2.1 AA)

**ACC-16: Bypass Blocks**

#### Finding 15: No skip navigation link — keyboard users must tab through the entire nav before reaching content

- **Description:** The page contains no skip navigation link (confirmed via DOM query for `a[href="#main-content"]`, `.skip-link`, and `[class*="skip"]`). Keyboard and screen reader users must tab through all navigation items before reaching the main content on every page load.
- **Why it's a problem:** ACC-16 (WCAG 2.4.1 Bypass Blocks, AA). This is a WCAG AA violation. For a healthcare product with a user base that includes elderly and disabled individuals — the populations most likely to need dietitian care for chronic conditions — the absence of skip navigation is both an accessibility failure and a legal compliance risk (ADA, Section 508). The nav contains multiple interactive elements (Explore dropdown, form inputs, CTAs), making the tab distance to main content substantial.
- **Severity:** Critical
- **Recommendation:** Add a visually hidden skip navigation link as the first focusable element on the page: `<a class="skip-link" href="#main-content">Skip to main content</a>`. Make it visible on focus. Add `id="main-content"` to the main content wrapper. This is a 20-minute implementation task.
- **Effort:** Low | **Impact:** High | **Confidence:** High

---

**ACC-26: Labels or Instructions**

#### Finding 16: 9 form fields use placeholder text as the only label — including the hero's primary search input

- **Description:** The JavaScript accessibility audit identified 9 form fields with `fieldsWithPlaceholderOnly` — fields that have placeholder text but no associated `<label>`, `aria-label`, or `aria-labelledby`. The most prominent is the hero location field (id="locationInputNav") with placeholder "City, state or zip*," which has no label element and no aria-label attribute.
- **Why it's a problem:** ACC-26 (WCAG 3.3.2 Labels or Instructions, AA). Placeholder text disappears as soon as users begin typing. If a user pauses mid-entry, switches tasks, or returns to the field, the label context is gone — they cannot verify what the field expects. For screen reader users, a field with no label is announced without context. The asterisk in "City, state or zip*" is unexplained (required field vs. footnote), adding another layer of ambiguity. This is the primary search input on the page — a critical path failure.
- **Severity:** Major
- **Recommendation:** Add `aria-label` attributes to all 9 unlabeled fields as an immediate fix. For the location input: `aria-label="Enter city, state or zip code (required)"`. Long-term, add visible labels above each input or use a floating label pattern. Remove the asterisk from placeholder text — required status should be communicated separately.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

---

**ACC-19: Link Purpose**

#### Finding 17: Nav contains a "click here" link — WCAG 2.4.4 violation

- **Description:** The navigation DOM includes a link with text "click here" (href pointing to signup.faynutrition.com/quiz). This appears to be from an alert banner or notification in the nav that was visible on page load.
- **Why it's a problem:** ACC-19 (WCAG 2.4.4 Link Purpose, AA). "Click here" provides zero context for screen reader users navigating by link list. WCAG requires that link text be descriptive of the destination or purpose, either alone or in context. A screen reader user encountering this link mid-navigation has no way to understand where it leads.
- **Severity:** Major
- **Recommendation:** Replace "click here" with descriptive text that includes the destination or action — e.g., "Get started with Fay" or "Start your free insurance check." This applies to the "get an estimate here" link in the same nav context, which should similarly be rewritten to "Get your insurance estimate."
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

---

### 7. Visual & Brand Design

**VD-02: Visual Hierarchy**

#### Finding 18: Two blue CTA buttons appear simultaneously above the fold

- **Description:** On initial page load, the hero contains a purple/blue "Find a dietitian" button inside the search form, and the nav contains a purple "Get started" button. Both are the same color, similar size, and both visible simultaneously. There is no clear primary/secondary hierarchy between them.
- **Why it's a problem:** VD-02 (Visual Hierarchy). Two equally styled CTAs competing for attention split user focus and dilute click-through rate on both. For a conversion-focused page, there should be a single dominant CTA with all other actions subordinate. Currently users must decide which button to click without any visual guidance about which matters more.
- **Severity:** Minor
- **Recommendation:** Differentiate the CTAs visually: if "Get started" (quiz) is the primary conversion path, make it the dominant button. Style the hero's "Find a dietitian" (browse) as a secondary action using an outlined or ghost button style. Alternatively, consolidate into a single CTA in the hero that routes to the quiz.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

---

**VD-10: Animation and Motion**

#### Finding 19: Hero background video auto-plays with no visible pause control

- **Description:** The hero section uses a background video of a woman in a home setting. The video appears to auto-play and loop on page load with no visible pause button, play/stop controls, or reduced-motion fallback.
- **Why it's a problem:** VD-10 (Animation and Motion); ACC-15 (WCAG 2.3.1). Users with vestibular disorders, motion sensitivity, or attention conditions are negatively affected by auto-playing video. WCAG 2.3.1 requires that motion playing for more than 5 seconds either stops automatically, can be paused, or can be hidden. Additionally, background video can significantly increase LCP (Largest Contentful Paint) and is a common cause of mobile performance degradation.
- **Severity:** Minor
- **Recommendation:** Add a visible pause/play control to the hero video. Implement `prefers-reduced-motion` CSS/JS detection to serve a static image fallback when the user's OS has motion reduction enabled. This handles both accessibility compliance and helps LCP on mobile.
- **Effort:** Low | **Impact:** Medium | **Confidence:** High

---

### 8. Performance & Core Web Vitals

#### Finding 20: Performance data unavailable — requires manual testing

- **Description:** The PageSpeed Insights API returned HTTP 000 after 3 attempts, and the browser-based PageSpeed analysis was still loading when the session ended.
- **Why it's a problem:** The homepage contains 150 images, a background video in the hero (likely the LCP element), a large hidden DOM section (~18,000 characters of hidden insurance/specialty option content loaded on page load), and multiple carousels. Each of these is a known CWV risk factor. Mobile performance is a high-risk area for this class of site.
- **Severity:** Cannot Evaluate
- **Recommendation:** Run manual PageSpeed audit at https://pagespeed.web.dev/analysis?url=https://www.faynutrition.com/&form_factor=mobile. Key areas to audit: LCP (likely the hero video/image), CLS (carousel layout shifts during load), image optimization (150 images on page), and the hidden content section DOM weight.
- **Effort:** N/A | **Impact:** High | **Confidence:** Cannot Evaluate

---

### 9. Nielsen's 10 Usability Heuristics

**N-04: Consistency and Standards**

#### Finding 21: "Get started" and "Find a dietitian" route to different flows without distinction

- **Description:** (See CRO Finding 1 — same root issue documented under CRO-02 with Nielsen's N-04 lens.) The pattern violation here is specifically that two equivalently styled CTAs exist on the same page with no visual, contextual, or copy differentiation to signal that they lead to different destinations.
- **Why it's a problem:** N-04 (Consistency and Standards). Web convention is that visually identical buttons perform similar actions. Breaking this with two buttons that look alike but do entirely different things violates user expectations and creates unpredictable navigation outcomes.
- **Severity:** Major (co-documented with CRO-02)
- **Recommendation:** See CRO Finding 1.
- **Effort:** Medium | **Impact:** High | **Confidence:** High

---

**N-07: Flexibility and Efficiency of Use**

#### Finding 22: No fast path for returning users or high-intent visitors

- **Description:** Every visitor to the homepage gets the same experience — the full page from hero to FAQ. There is no "returning user" recognition (e.g., a login-forward state for known users), no "I already have an account" shortcut in a visible location, and no fast path for someone who already knows they want to book a specific dietitian.
- **Why it's a problem:** N-07 (Flexibility and Efficiency of Use). For a marketplace with 100,000+ clients who will return to the homepage, the absence of any returning-user UX means repeat visitors experience the same acquisition-focused landing page. The "Log in" link is visible in the Explore dropdown only — it does not appear prominently for users who want to access their account.
- **Severity:** Minor
- **Recommendation:** Surface the "Log in" link directly in the nav (not behind the Explore dropdown). This is a 1-item nav change that removes friction for all existing clients returning to the site.
- **Effort:** Low | **Impact:** Low | **Confidence:** High

---

### 10. Competitor Benchmarking

#### Finding 23: Fay's differentiators (scale, app, employer channel) are not front-loaded vs. Nourish

- **Description:** Nourish (nourish.com) leads with nearly identical messaging: "Covered by insurance. Expert dietitian care." The primary differentiation factors for Fay — 100K+ clients (vs. Nourish's implied smaller scale), the wellness app and rewards feature, and the employer channel — do not appear until mid-page or are absent from the hero entirely.
- **Why it's a problem:** COPY-05 (Value Proposition Clarity). In a search result or comparison context, a visitor who has already seen Nourish's homepage will not find a clear reason to choose Fay from the first screen. The stat bar (700+ insurance plans, 4000+ dietitians, 100K+ clients) is the strongest differentiator and appears at the right scroll position, but it's not reinforced in the hero headline or subhead.
- **Severity:** Minor
- **Recommendation:** Incorporate a scale differentiator into the hero: "Your personal dietitian, covered by insurance — trusted by 100,000+ clients." Or make the sub-headline: "The largest insurance-covered dietitian network in the US." This creates immediate differentiation from smaller competitors.
- **Effort:** Low | **Impact:** Medium | **Confidence:** Medium

---

### 11. Mobile Responsiveness

#### Finding 24: Mobile responsiveness requires manual review

- **Description:** The site uses a responsive layout framework (Webflow). Key concerns for mobile: the hero search form with three dropdowns + button may stack awkwardly on narrow screens; the dietitian carousel is horizontally scrolling on desktop and may not translate clearly; the blank rendering issue in the "is-care" section may be more pronounced on mobile where scroll-triggered animations are more likely to fail.
- **Severity:** Cannot Evaluate — flag for manual review
- **Recommendation:** Test on physical iOS and Android devices (not just browser emulation). Specifically check: hero form usability, carousel navigation discoverability, bottom-of-page rendering of the is-care section, and the cookie consent banner's behavior at 375px viewport.

---

## Summary of All Findings

| # | Dimension | Finding | Severity |
|---|-----------|---------|----------|
| 1 | CRO | Dual CTA confusion: Find a dietitian vs. Get started | Major |
| 2 | CRO | No mid-intent engagement path | Critical |
| 3 | CRO | No urgency or timing signals | Minor |
| 4 | CRO | Unlabeled insurance logo section | Minor |
| 5 | Copy | Generic section headlines, no differentiation | Major |
| 6 | Copy | "Get started" CTA is too vague | Major |
| 7 | Copy | Dietitian section leads with credentials, not outcomes | Minor |
| 8 | IA | Key navigation hidden behind vague Explore dropdown | Major |
| 9 | IA | App features introduced without narrative bridge | Minor |
| 10 | QA | Large blank section rendering failure at bottom of page | Major |
| 11 | QA | Typography typo: missing space after comma in H2 | Minor |
| 12 | QA | App Store Rating stat missing numerical score | Minor |
| 13 | SEO | No Open Graph tags — every shared link shows blank | Critical |
| 14 | SEO | Meta description 22+ chars over limit, CTA truncated | Minor |
| 15 | Accessibility | No skip navigation link (WCAG 2.4.1) | Critical |
| 16 | Accessibility | 9 form fields with placeholder-only labels (WCAG 3.3.2) | Major |
| 17 | Accessibility | "Click here" link text in nav (WCAG 2.4.4) | Major |
| 18 | Visual Design | Two equally styled CTAs with no visual hierarchy | Minor |
| 19 | Visual Design | Hero video auto-plays without pause control | Minor |
| 20 | Performance | Cannot evaluate — requires manual PageSpeed test | Cannot Evaluate |
| 21 | Nielsen | Inconsistent CTA pattern violates user expectation | Major |
| 22 | Nielsen | No fast path for returning users; Log In buried | Minor |
| 23 | Competitor | Scale differentiators not front-loaded vs. Nourish | Minor |
| 24 | Mobile | Cannot evaluate — requires device testing | Cannot Evaluate |

**Total findings: 24** (2 Critical, 8 Major, 12 Minor, 2 Cannot Evaluate)

---

*UX Audit by Sari Sari Design — admin@sarisari.design*
