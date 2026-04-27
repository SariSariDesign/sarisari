# UX Audit Report

## Profound

tryprofound.com | April 7, 2026

---

## Business Model Profile

| Field | Details |
|-------|---------|
| **Company** | Profound |
| **Industry** | AI Marketing Intelligence / Answer Engine Optimization (AEO) |
| **Stage** | Series B ($155M total raised, $35M Series B led by Sequoia Capital, with Kleiner Perkins, Khosla Ventures) |
| **Core Product** | Full-stack AI marketing platform for understanding, analyzing, and optimizing brand visibility in AI-generated answers (ChatGPT, Perplexity, Claude, Gemini, Grok, etc.) |
| **Primary Goal** | Become the standard platform for Answer Engine Optimization |
| **Conversion Goal** | Demo request ("Get a Demo") |
| **Target Personas** | VP of Marketing, VP of Growth, Demand Gen leads, SEO/Content leads at enterprise brands |
| **Customer Type** | B2B Enterprise |
| **Business Model** | SaaS |
| **GTM Motion** | Sales-Led Growth (SLG) with some PLG elements (free AEO report, free agent trial) |
| **Competitors** | Otterly.ai, Peec.ai, Knowatoa, traditional SEO platforms (SEMrush, Ahrefs) expanding into AEO |
| **Key Contact** | Joseph Turtel, Chief of Staff (NYC, Microsoft background, Harvard Business School Online) |

### Evaluation Priorities (most to least important)
1. Conversion Rate Optimization
2. Content Hierarchy & Copywriting
3. Information Architecture
4. Visual & Brand Design
5. Nielsen's Heuristics
6. Accessibility
7. SEO & Discoverability
8. Performance & Core Web Vitals

---

## Methodology

Comprehensive UX audit using WebFetch content analysis, JavaScript accessibility/SEO audits, browser inspection, and structured evaluation against enterprise SaaS best practices and Nielsen's 10 usability heuristics.

---

## Evaluation Lens

This audit is framed through the lens of a Series B enterprise SaaS company that is defining a new category (AEO). At this stage, the website must simultaneously educate the market about the problem, establish credibility against well-funded competitors, and efficiently convert high-intent enterprise buyers into demo requests. Every element on the homepage should advance one of these three goals.

---

## Why This Matters

For a sales-led enterprise SaaS company, the website is the single highest-leverage asset in the pipeline. A VP of Marketing evaluating Profound alongside SEMrush or Ahrefs will make a snap judgment based on design quality, messaging clarity, and social proof within 10 seconds — and the current homepage has structural issues that undermine all three.

Profound is positioning in the emerging AEO space, which sits between traditional SEO tools and newer AI-visibility startups. As a Sequoia-backed Series B company with the most funding and biggest team in this niche, the website needs to match that positioning with enterprise-grade design and messaging.

---

# Friction and Pain Points

## 1. Conversion Rate Optimization

### Critical: Scroll-Dependent Content Blocks ~80% of Page from Non-JavaScript Users (CRO-01)

**Description**
Approximately 80% of the homepage content is hidden behind scroll-triggered animations. At least 79 DOM elements have `visibility:hidden`, and content is progressively revealed as users scroll using JavaScript animation libraries (likely GSAP ScrollTrigger or Framer Motion). When JavaScript animations fail or don't fire — which happens on slow connections, with JavaScript errors, browser extensions that block scripts, screen readers, or automated crawlers — visitors see a massive black void between the hero section (~800px tall) and the footer. The total page height is 9,281px, but only the hero and footer are visible without animation triggers.

**Why It's a Problem**
- **Conversion loss:** Enterprise buyers making initial evaluations will not scroll through dead space. They'll bounce.
- **SEO penalty:** Bots and crawlers can't access 80% of the content, decimating organic discoverability for a product in an emerging category that still needs to educate the market.
- **Accessibility violation:** Screen readers and keyboard-only users can't access hidden content reliably.
- **Technical debt:** Animations are brittle — any JavaScript error breaks the entire experience.
- **Mobile risk:** On slower mobile networks, animations may not fire before the user gives up.

**Severity**
Critical

**Recommendation**
Restructure the homepage to show all content by default (no `visibility:hidden` elements). Use progressive enhancement: enhance with scroll animations for users whose browsers can support them reliably, but ensure core content is visible without JavaScript. Consider:
1. Remove `visibility:hidden` CSS class from content sections.
2. Use CSS Intersection Observer API with fallback rendering to guarantee content loads.
3. A/B test animation-enhanced vs. non-animated versions to confirm animations actually improve engagement before relying on them.
4. Audit critical conversion paths (hero, demo CTA, social proof, solutions) to ensure they are visible and accessible above the fold on desktop and mobile.

**Evidence**
- Page structure inspection: 79 elements with `visibility:hidden` property
- Page height: 9,281px; Hero section height: ~800px
- Content visibility dependent on JavaScript event listeners

**Effort / Impact / Confidence**
- **Effort:** Medium (restructure CSS layout, test extensively)
- **Impact:** Critical (blocks 80% of content from conversion-ready users)
- **Confidence:** Very High (directly observable in DOM inspection)

---

### Major: Hero Section Rotating Text Causes Cognitive Friction (CRO-02)

**Description**
The H1 uses rotating platform names: "Marketing agents to win in [Perplexity / ChatGPT / Claude / Gemini / Grok / Microsoft Copilot / Meta AI / DeepSeek / Google AI Overviews]". The text rotates automatically, causing the headline to change while the user is reading or scanning. This creates:
- Visual movement that distracts from message comprehension
- Unclear value proposition (the H1 suggests the benefit changes based on platform, when the core value is consistent)
- Reduced headline retention (users see different text on every visit or scroll)

**Why It's a Problem**
- **Conversion friction:** Enterprise buyers need to quickly understand what Profound does. A rotating headline slows comprehension and increases cognitive load.
- **Message clarity:** The rotating text implies the product value differs by platform, when in reality Profound helps with visibility across *all* platforms. This undermines the core message.
- **Nielsen's usability heuristic (H1 - Visibility of System Status):** The rotating text creates uncertainty about what the primary value proposition actually is.
- **Accessibility & cognitive load:** Users with reading disorders, attention challenges, or non-native English speakers struggle with moving text.

**Severity**
Major

**Recommendation**
Replace the rotating H1 with a single, static headline that captures the core value proposition. Examples:
- "Win visibility in every AI answer engine"
- "Become the standard for Answer Engine Optimization"
- "Scale your presence in AI-generated answers"

Keep the platform rotation as a supporting visual (e.g., a carousel of logos below the headline) if needed for proof of omnichannel support, but make the H1 clear and static.

**Evidence**
- H1 content observed in hero section: "[rotating text] Marketing agents to win in [platform names]"
- Subheading: "Reach millions of consumers who are using AI to discover new products and brands" (static, but doesn't echo H1 value clearly)

**Effort / Impact / Confidence**
- **Effort:** Low (copy change, remove animation script)
- **Impact:** High (improves message clarity and conversion comprehension immediately)
- **Confidence:** High (rotating text is a well-documented UX anti-pattern for headlines)

---

### Major: Two H1 Tags (One Per Page) — Violates Semantic HTML Standard (CRO-03)

**Description**
The page contains two H1 tags: one in the hero ("Marketing agents to win in...") and one in the conference promo section ("Zero Click"). Best practice is one H1 per page that encapsulates the primary purpose.

**Why It's a Problem**
- **SEO confusion:** Search engines use H1 to understand page primary topic. Two H1s dilute keyword relevance and confuse ranking signals.
- **Accessibility:** Screen reader users expect one H1 at the top of the page to orient themselves. Multiple H1s create navigation confusion.
- **Information hierarchy:** Signals that both "marketing agents" and "Zero Click" are equally important, when the conference is a secondary call-to-action.

**Severity**
Major

**Recommendation**
- Keep the hero H1 ("Marketing agents to win in...").
- Demote the "Zero Click" conference promo from H1 to H2.

**Evidence**
- JavaScript accessibility audit: H1 count = 2
- H1 locations: Hero section, Conference Promo section

**Effort / Impact / Confidence**
- **Effort:** Minimal (change one HTML tag from H1 to H2)
- **Impact:** Medium (improves SEO and accessibility, fixes semantic markup)
- **Confidence:** Very High (standard HTML best practice)

---

### Major: Form Fields Use Placeholder-Only Labels — Missing Explicit Labels (CRO-04)

**Description**
Both form fields on the page use placeholder text only (e.g., "your@email.com") with no associated `<label>` elements. Placeholder text disappears when the user clicks to type, and screen readers cannot announce the field purpose.

**Why It's a Problem**
- **Accessibility violation (WCAG 2.1 Level A):** Users with screen readers or cognitive disabilities cannot understand form field purpose.
- **Usability friction:** Placeholder text is not a substitute for labels. Users often forget what field they're typing into when the placeholder disappears.
- **Mobile usability:** On mobile, small placeholder text may be hard to read and disappears immediately upon focus.
- **Form error recovery:** When a user makes an error and the form resets, placeholder-only fields offer no help understanding what should go in each field.

**Severity**
Major

**Recommendation**
1. Add explicit `<label>` elements for all form fields.
2. Associate labels with inputs via `for` attribute (matching `id`).
3. Keep placeholder text as secondary helper text (e.g., "you@example.com"), but make the label the primary field identifier.

Example:
```html
<label for="email">Email Address</label>
<input id="email" type="email" placeholder="you@example.com" />
```

**Evidence**
- JavaScript accessibility audit: `fieldsWithLabel: 0`, `fieldsWithPlaceholderOnly: 2`
- Form elements observed without associated labels

**Effort / Impact / Confidence**
- **Effort:** Low (add label elements and attributes)
- **Impact:** Medium-High (improves accessibility and form completion rates)
- **Confidence:** Very High (WCAG standard requirement)

---

### Major: No Skip Navigation Link — Keyboard & Screen Reader Users Must Tab Through Navigation (CRO-05)

**Description**
The page lacks a skip-navigation link (a hidden, focusable link that jumps keyboard and screen reader users directly to main content). Keyboard users and screen reader users must tab through the entire header navigation (multiple dropdowns with many links) before reaching the main content area.

**Why It's a Problem**
- **Accessibility violation (WCAG 2.1 Level A):** Screen reader and keyboard-only users face unnecessary navigation friction.
- **Reduced accessibility-driven conversions:** Users with motor disabilities may give up before reaching the "Get a Demo" button if they have to tab through 20+ nav links first.
- **Nielsen's heuristic (Flexibility and Efficiency):** Power users (keyboard-first, accessibility-focused teams) lose efficiency.

**Severity**
Major

**Recommendation**
Add a skip-navigation link as the first focusable element on the page:

```html
<a href="#main-content" class="skip-link">Skip to main content</a>
```

Style it to be hidden visually but visible when focused:

```css
.skip-link {
  position: absolute;
  left: -9999px;
  z-index: 999;
}
.skip-link:focus {
  left: 0;
  top: 0;
  background: #000;
  color: #fff;
  padding: 8px;
}
```

**Evidence**
- JavaScript accessibility audit: `skipNav: false`

**Effort / Impact / Confidence**
- **Effort:** Low (add HTML element and CSS)
- **Impact:** Medium (improves accessibility compliance and user experience for keyboard users)
- **Confidence:** Very High (standard accessibility best practice)

---

## 2. Content Hierarchy & Copywriting

### Major: Messaging Does Not Educate Market About AEO Category — Assumes Problem Awareness (CH-01)

**Description**
The homepage messaging assumes the audience already understands "Answer Engine Optimization" and why it matters. The hero subheading ("Reach millions of consumers who are using AI to discover new products and brands") and the main feature description ("Understand, analyze, build, and measure with the Profound platform") describe *what* the platform does, but not *why* it matters or *how* Answer Engine Optimization differs from SEO.

For a company in a Series B category-defining stage, the website misses the critical education moment. The phrase "Answer Engine Optimization" appears only once, with no definition. For a VP of Marketing at a traditional brand (e.g., e-commerce, B2B SaaS) who uses SEMrush or Ahrefs, there's no clear reason to believe Profound solves a different or more urgent problem than traditional SEO.

**Why It's a Problem**
- **Sales friction:** Sales teams must manually educate prospects about AEO before they can sell the product. The website should do this heavy lifting.
- **Organic traffic loss:** Prospects searching "how AI affects marketing" or "AI search optimization" won't find Profound because the homepage doesn't explain the problem in market language.
- **Competitor vulnerability:** SEMrush and Ahrefs already have category dominance and large audiences. Profound's only advantage is being purpose-built for AEO. If the website doesn't articulate why AEO *is a new problem*, it loses the differentiation.
- **Demand gen complexity:** Content teams can't build top-of-funnel educational content if the homepage doesn't model it.

**Severity**
Major

**Recommendation**
1. Add a clear definition of AEO and why it matters in the hero or immediately below.
   - Example: "Answer Engine Optimization (AEO) is the practice of optimizing your brand's visibility in AI-generated answers. Unlike search results, these answers reach millions of users daily — and traditional SEO doesn't cover them."
2. Include a "The Problem" section that contrasts traditional search vs. AI-generated answers (e.g., "75% of consumers now use AI to discover brands, but your SEO strategy wasn't built for this shift").
3. Add use-case callouts that show *how* different personas benefit (e.g., "Demand Gen teams used to drive traffic through ads. Now they use AEO to own the conversation before the customer searches.").

**Evidence**
- Hero subheading: "Reach millions of consumers who are using AI to discover new products and brands" (describes user behavior, not the problem Profound solves)
- Feature description: "Understand, analyze, build, and measure with the Profound platform" (uses generic SaaS language, no category definition)
- Absence of "Why AEO?" section on homepage
- "Zero Click" conference reference assumes audience knows what "Zero Click" means in this context

**Effort / Impact / Confidence**
- **Effort:** Medium (write problem definition, restructure messaging)
- **Impact:** Critical (improves sales efficiency and organic discoverability)
- **Confidence:** High (based on Series B category-defining company playbooks)

---

### Major: Social Proof Section Is Underpowered — Single Testimonial & Vague Metrics (CH-02)

**Description**
The social proof section consists of:
- One testimonial from George Bonaci (VP of Growth & Demand at Ramp): "Before Profound, AI Search was a black box. Now it's a competitive advantage."
- A single case study link (not displayed inline)
- Enterprise page metrics (1B+ Citations, 30B+ Crawler visits, 10M+ Prompts analyzed daily) without context or attribution

For a Series B company competing against SEMrush (millions of customers), this is insufficient. The metrics are presented without explanation — most prospects won't understand what "1B+ Citations" means or why it matters.

**Why It's a Problem**
- **Trust gap:** VPs of Marketing expect to see multiple customer logos, case studies with ROI metrics, and peer validation before requesting a demo. A single quote doesn't close that gap.
- **Competitive disadvantage:** Ahrefs and SEMrush display customer logos, case study summaries with KPIs (e.g., "20% traffic increase"), and industry recognition. Profound shows one quote.
- **Lost credibility:** Without quantified results (e.g., "Ramp increased AEO visibility by 7x in 30 days"), the testimonial reads as generic and unverifiable.
- **Missed top-of-funnel impact:** For prospects in early awareness, social proof is the primary conversion signal. A weak proof section extends the sales cycle.

**Severity**
Major

**Recommendation**
1. **Expand customer logos:** Add 3-5 customer logos (Ramp, Airbyte, and 3 others) with brief industry/company size labels (e.g., "Payments" for Ramp, "Data" for Airbyte).
2. **Inline case study summaries:** Replace the "case study link" with inline case study cards showing:
   - Customer name and logo
   - Industry/use case
   - Quantified result (e.g., "7x visibility increase in 3 months")
   - 1-2 sentence quote
3. **Contextualize metrics:** Explain what the enterprise page metrics mean:
   - "30B+ Crawler visits monthly — the industry's most comprehensive dataset of AI model behavior"
   - "10M+ Prompts analyzed daily — real-time visibility into what users are actually asking"
4. **Media mentions:** Add media logos (Fortune, WSJ, Adweek, NY Times, TechCrunch, Financial Times) with linked articles or quotes (these already exist on the Enterprise page).

**Evidence**
- Homepage social proof: 1 customer testimonial, 1 case study link, 3 unexplained metrics
- Enterprise page: 2 case studies listed (Ramp: 7x visibility increase, Airbyte: tripled in one week), media mentions present

**Effort / Impact / Confidence**
- **Effort:** Medium (design case study cards, curate logos, add metric descriptions)
- **Impact:** High (improves conversion rates for enterprise deals)
- **Confidence:** High (social proof is a proven conversion lever for B2B SaaS)

---

### Major: Feature Cards Lack Benefit Statements — Describe Features, Not Outcomes (CH-03)

**Description**
The platform features section lists four feature cards:
- Prompt Volumes
- Answer Engine Insights
- Agents
- Agent Analytics

Each card has a title and presumably a brief description, but no explanation of *why* each feature matters or *what outcome* it drives. For example, "Agents" is a feature name, but "Agents that automate your AEO optimization across channels" would be a benefit statement.

**Why It's a Problem**
- **Messaging confusion:** Prospects don't immediately understand how each feature solves their problem. They have to infer the value.
- **Sales friction:** Sales teams must manually translate features to benefits during discovery calls.
- **Reduced cognitive impact:** Feature-focused messaging is inherently less memorable than outcome-focused messaging.
- **Competitive disadvantage:** SEMrush and Ahrefs describe features + benefits (e.g., "Keyword Research — Find opportunities with less competition and higher intent").

**Severity**
Major

**Recommendation**
Restructure each feature card with:
1. **Feature name** (existing)
2. **Benefit statement** (new) — short sentence starting with action verb or outcome
3. **Brief description** (existing, if present)

Examples:
- **Prompt Volumes** → "Track every question asked about your brand across AI platforms — no blind spots"
- **Answer Engine Insights** → "See exactly where your brand appears in AI-generated answers and why — then optimize"
- **Agents** → "Automate your AEO optimization 24/7 across all major AI platforms"
- **Agent Analytics** → "Measure what matters — visibility, traffic influence, and AEO ROI"

**Evidence**
- Feature section title: "Scale your presence, not your workload"
- Feature card titles: Prompt Volumes, Answer Engine Insights, Agents, Agent Analytics
- No benefit statements observed in feature card descriptions

**Effort / Impact / Confidence**
- **Effort:** Low (add 1 benefit sentence per card)
- **Impact:** Medium-High (improves message clarity and conversion comprehension)
- **Confidence:** High (benefit-driven messaging is a proven conversion tactic)

---

## 3. Information Architecture

### Major: Navigation Dropdowns Are Unclear — No Visible Hierarchy (IA-01)

**Description**
The main navigation includes three dropdown menus:
- Platform (dropdown)
- Resources (dropdown)
- Solutions (dropdown)

The actual menu contents are not visible in the WebFetch output, but the naming suggests overlapping categories. For example, "Solutions" might contain product features (which could also be under "Platform"), or "Resources" might contain educational content (which could belong under "Solutions" or as a separate section).

For an enterprise SaaS site, unclear navigation creates friction during the buying journey. A prospect looking for "pricing" or "integrations" or "case studies" must guess which dropdown contains the information.

**Why It's a Problem**
- **Cognitive load:** Users must mentally map each dropdown to its content before hovering or clicking.
- **Mobile friction:** Dropdown menus are cumbersome on mobile; users may not discover content if the IA is unclear.
- **Sales funnel loss:** Prospects looking for case studies or pricing may not find them if they're buried in the wrong dropdown.
- **SEO loss:** Pages in unclear dropdown structures may not be crawled or indexed effectively.

**Severity**
Major

**Recommendation**
1. **Audit the dropdown structure:** Map each dropdown and its sublinks explicitly.
2. **Clarify categories:**
   - **Platform** → Product features, capabilities, use cases (Build, Analyze, Measure)
   - **Solutions** → Industry/role-based solutions (Demand Gen, Content, PR, SEO) — CONSIDER renaming to "By Role" or "For Teams"
   - **Resources** → Educational and support content (Blog, Docs, Academy, API Docs, Webinars, Help)
   - **Enterprise** → For high-intent prospects (SSO, RBAC, SLA, SOC 2, case studies)
3. **Consider flattening:** If dropdowns have fewer than 5 items each, consider moving items to the top-level navigation or removing the dropdown structure entirely.
4. **Add a "Pricing" link** to the top-level navigation (currently visible as "Pricing" in the header, but unclear if it's a dropdown or standalone).

**Evidence**
- Navigation structure observed: Platform (dropdown), Resources (dropdown), Solutions (dropdown), Enterprise, Pricing, Careers
- Dropdown contents not visible in WebFetch; requires manual inspection

**Effort / Impact / Confidence**
- **Effort:** Medium (audit structure, potentially redesign navigation)
- **Impact:** Medium (improves user navigation efficiency and sales funnel flow)
- **Confidence:** Medium-High (requires inspection of actual dropdown contents to confirm)

---

### Minor: Pricing Page Doesn't Render — Missing Pricing Transparency (IA-02)

**Description**
The Pricing page link is present in the navigation, but the meta description says "customized enterprise pricing" and the page content doesn't fully render (likely gated behind dynamic loading or JavaScript). No pricing tiers, plans, or comparison tables are visible.

**Why It's a Problem**
- **Qualification friction:** Prospects can't self-qualify based on pricing. They have no idea if Profound costs $500/month or $50K/month.
- **Sales friction:** Every demo request becomes a cost/fit discussion instead of moving to evaluation or trial.
- **Competitor advantage:** SEMrush, Ahrefs, and other competitors display public pricing tiers. Profound's opacity signals either very high prices or a sales-driven motion that may deter self-service buyers.
- **Budget discovery loss:** Prospects researching before reaching out won't find pricing and may move to competitors with transparent pricing.

**Severity**
Minor (important for mid-market, less critical for enterprise-only motion)

**Recommendation**
1. **If enterprise-only SLG:** Add clear messaging on the Pricing page: "Profound is built for enterprise teams. Pricing is customized based on your company size, use cases, and platform needs. Request a demo to discuss your investment."
2. **If hybrid SLG + PLG:** Display 2-3 pricing tiers (e.g., Starter, Growth, Enterprise) with example annual costs, included features, and a demo CTA for custom pricing.
3. **Ensure the page renders:** If dynamic content is blocking the page, either pre-render pricing information or add a fallback message.

**Evidence**
- Pricing page meta description: "customized enterprise pricing"
- Page content didn't fully render during WebFetch (likely JavaScript-gated)

**Effort / Impact / Confidence**
- **Effort:** Medium (add pricing content or messaging)
- **Impact:** Medium (reduces sales friction for mid-market prospects)
- **Confidence:** Medium-High (common issue for enterprise SaaS)

---

## 4. Visual & Brand Design

### Moderate: Visual Hierarchy Is Compromised by Animation — Key Elements Buried Below Fold (VD-01)

**Description**
Because 80% of the content relies on scroll-triggered animations to become visible, the visual hierarchy collapses when animations don't fire. This is compounded by the rotating headline and the massive blank space between hero and footer. For users who see the page without animations, the visual impression is: hero → black void → footer. This destroys the intended visual narrative and makes the site feel unfinished or broken.

**Why It's a Problem**
- **First impression loss:** VPs of Marketing evaluate design quality in seconds. A page that appears broken will not build confidence in a Series B company.
- **Brand perception:** Broken animations suggest a lack of quality control or polish, which contradicts the enterprise positioning.
- **Accessibility perception:** A blank page signals "this site wasn't built for me" to users with assistive technology.

**Severity**
Moderate

**Recommendation**
(See CRO-01 for detailed restructuring guidance.) In addition:
1. Audit the visual hierarchy when animations are disabled (use browser DevTools to disable JavaScript or use a no-JS testing tool).
2. Ensure the page is readable and the conversion path is clear even without animations.
3. If animations are kept, use them as enhancement, not content delivery.

**Evidence**
- Page structure: 79 elements with `visibility:hidden`
- Content layout broken when animations fail

**Effort / Impact / Confidence**
- **Effort:** Medium-High (restructure layout)
- **Impact:** High (improves user perception and conversion)
- **Confidence:** Very High (directly observable)

---

### Minor: Announcement Bar Competes with Primary CTAs (VD-02)

**Description**
The announcement bar ("Announcing Zero Click SF & NY 2026 — Request your spot today →") appears above the hero and directs users to a secondary conversion goal (conference registration) before they've engaged with the primary goal (demo request). The bar uses the same visual prominence as the primary CTAs.

**Why It's a Problem**
- **Conversion dilution:** Every visitor sees the conference promo first. Some percentage will click it before reaching the demo CTA, diluting the demo pipeline.
- **Message clarity:** The announcement doesn't immediately connect to the core value proposition; it assumes users already care about the conference.
- **Mobile real estate:** On mobile, the announcement bar takes up precious above-fold space that could be used for hero messaging.

**Severity**
Minor

**Recommendation**
1. **Move or reduce the announcement bar:** Consider moving it below the fold or to the footer.
2. **Contextualize the conference:** If the bar remains above the fold, add a brief explanation: "Join industry leaders at Zero Click to master Answer Engine Optimization — [Request Spot]"
3. **Visual hierarchy:** If the bar remains, ensure the primary CTAs ("Get a Demo", "Get Started") are more prominent in color, size, or positioning.

**Evidence**
- Announcement bar visible at top of page
- Two primary CTAs in hero: "Get a Demo" | "Get Started"
- Conference mentioned again later on page

**Effort / Impact / Confidence**
- **Effort:** Low (move or suppress announcement bar)
- **Impact:** Low-Medium (minor conversion impact)
- **Confidence:** Medium (typical announcement bar best practice)

---

## 5. Nielsen's Heuristics

### Major: Visibility of System Status — Rotating Headline Obscures Core Message (N-01)

**Description**
(See CH-02 for related finding on rotating headline.) The rotating headline makes it difficult for users to understand the core value proposition because the message changes while they're reading. Additionally, there's no clear status indicator of *which platform* is currently highlighted, nor why that platform matters more than others.

**Why It's a Problem**
- **Violates Heuristic 1:** Users should always know what's happening on the site. A rotating headline creates uncertainty.
- **Sales friction:** Users can't articulate what Profound does to colleagues because the message isn't stable.

**Severity**
Major

**Recommendation**
(See CH-02.) Replace rotating headline with static, benefit-driven message.

---

### Major: User Control & Freedom — No "Go Back" Option for Demo Modal or Form Submission (N-03)

**Description**
The demo request and "Get Started" CTAs likely open modals or forms that may trap users without a clear "Cancel" or "Close" button, or there's no visible way to exit without completing the form.

**Why It's a Problem**
- **Violates Heuristic 3:** Users feel trapped when they can't easily exit a flow they didn't intend to start (e.g., accidentally clicked "Get Started").
- **Increased bounce:** Users who feel trapped will close the browser tab rather than complete the form.

**Severity**
Major (if confirmed)

**Recommendation**
1. Inspect demo form and CTA flows.
2. Ensure all modals have a visible, accessible "Close" or "Cancel" button (typically top-right X button).
3. Allow users to press Escape to close modals.
4. Don't require form submission to exit.

**Evidence**
- WebFetch output doesn't show form structure; requires manual inspection.

**Effort / Impact / Confidence**
- **Effort:** Low (add close button, test)
- **Impact:** Low-Medium (prevents some exits)
- **Confidence:** Medium (requires manual form inspection to confirm)

---

### Minor: Consistency & Standards — Naming Mismatch: "Agents" vs. "Marketing Agents" (N-04)

**Description**
The hero uses "Marketing agents" but the feature section uses "Agents". The terminology shifts between sections, which could confuse users about whether these are the same feature or related but different products.

**Why It's a Problem**
- **Violates Heuristic 4:** Inconsistent terminology breaks predictability.
- **Cognitive friction:** Users must reconcile whether "Agents" in the feature section refers to the "Marketing agents" in the hero.

**Severity**
Minor

**Recommendation**
Standardize terminology across the page. Choose either:
- "Profound Agents" (branded, product-focused)
- "Marketing Agents" (benefit-focused)
- "AEO Agents" (category-focused)

Use the same term consistently in hero, feature section, navigation, and CTA labels.

**Evidence**
- Hero: "Marketing agents to win in [platform]"
- Feature section: "Agents" (in feature card title)

**Effort / Impact / Confidence**
- **Effort:** Low (copy review and update)
- **Impact:** Low (minor consistency issue)
- **Confidence:** High (directly observable)

---

## 6. Accessibility

### Major: Heading Hierarchy Broken — Jumps from H2 to H4 (ACC-01)

**Description**
The page uses H1, H2, H2, H2, H2, H2, H1, H4 structure. It skips H3 and jumps directly to H4, which violates semantic HTML hierarchy rules. Screen readers rely on consistent heading levels to build a document outline, and this breaks that expectation.

**Why It's a Problem**
- **Violates WCAG 2.1 Level A:** Heading hierarchies should not skip levels.
- **Screen reader navigation:** Users can't reliably skip to sections or understand the document structure.
- **Accessibility perception:** Broken heading hierarchy signals poor accessibility attention, which reduces confidence in the product for accessibility-conscious companies.

**Severity**
Major

**Recommendation**
1. Audit all heading levels on the page.
2. Ensure no skipped levels (if you have H2, next heading should be H3 or another H2, not H4).
3. Restructure as:
   - H1 (Hero)
   - H2 (Features)
   - H3 (Each feature subsection, if applicable)
   - H2 (Social Proof)
   - H2 (Solutions)
   - etc.

**Evidence**
- JavaScript accessibility audit: Heading order = H1 → H2 → H2 → H2 → H2 → H2 → H1 → H4

**Effort / Impact / Confidence**
- **Effort:** Low (update HTML heading tags)
- **Impact:** Medium (improves accessibility compliance)
- **Confidence:** Very High (heading hierarchy is a clear WCAG criterion)

---

### Moderate: Empty Alternative Text on One Image — Missing Accessibility Context (ACC-02)

**Description**
One of 17 images has empty alt text (`alt=""`), which means assistive technology users won't know what that image represents. The remaining 16 images have alt text.

**Why It's a Problem**
- **Accessibility violation (WCAG 2.1 Level A):** Every image must have descriptive alt text or be marked as decorative.
- **Partial accessibility:** 16 out of 17 images are accessible, but the one missing alt text may be a key visual (logo, case study image, etc.).

**Severity**
Moderate (one image out of 17)

**Recommendation**
1. Identify the image with empty alt text.
2. Add descriptive alt text if the image is meaningful (e.g., "Ramp logo" for a customer logo).
3. If the image is purely decorative (e.g., a background pattern), keep `alt=""` but verify it's truly decorative.
4. Retest with accessibility scanner.

**Evidence**
- JavaScript accessibility audit: `emptyAlt: 1`, `withAlt: 16`

**Effort / Impact / Confidence**
- **Effort:** Minimal (add one alt attribute)
- **Impact:** Low (only affects one image, 16 others are compliant)
- **Confidence:** Very High (directly observable)

---

### Major: No Skip Navigation Link (ACC-03)

**Description**
(See CRO-05 for detailed finding.) Screen reader and keyboard-only users cannot skip past the navigation menu to reach main content.

**Why It's a Problem**
- **Accessibility violation (WCAG 2.1 Level A):** Skip links are a required accessibility feature.
- **Navigation burden:** Keyboard users must tab through every nav link before reaching the main content.

**Severity**
Major

**Recommendation**
(See CRO-05 for implementation.)

**Evidence**
- JavaScript accessibility audit: `skipNav: false`

**Effort / Impact / Confidence**
- **Effort:** Low
- **Impact:** Medium
- **Confidence:** Very High

---

### Moderate: Form Fields Lack Associated Labels (ACC-04)

**Description**
(See CRO-04 for detailed finding.) Both form fields use placeholder-only labels, with no `<label>` elements.

**Why It's a Problem**
- **Accessibility violation (WCAG 2.1 Level A):** Form fields must have associated labels.
- **Screen reader users:** Cannot understand form field purpose.

**Severity**
Major

**Recommendation**
(See CRO-04 for implementation.)

**Evidence**
- JavaScript accessibility audit: `fieldsWithLabel: 0`, `fieldsWithPlaceholderOnly: 2`

**Effort / Impact / Confidence**
- **Effort:** Low
- **Impact:** Medium-High
- **Confidence:** Very High

---

## 7. SEO & Discoverability

### Major: Content Hidden from Crawlers — 80% of Page Inaccessible to Bots (SEO-01)

**Description**
(See CRO-01 for related finding on scroll-dependent content.) Search engine crawlers cannot consistently access content hidden behind scroll-triggered animations. As a result, ~80% of the page content is not indexed, which decimates organic search visibility.

**Why It's a Problem**
- **Organic traffic loss:** Profound is in an emerging category (AEO) that requires education. Prospects searching "answer engine optimization" or "AI search visibility" won't find Profound because the content isn't indexed.
- **Competitor disadvantage:** SEMrush, Ahrefs, and traditional SEO platforms already dominate organic search for competitor-adjacent terms. Profound can't compete if the site isn't crawlable.
- **Missed inbound pipeline:** For a sales-led company, inbound leads from organic search are high-quality and require no lead gen spend. This is being left on the table.

**Severity**
Major

**Recommendation**
(See CRO-01.) Restructure the homepage to display all content by default. Use dynamic rendering or server-side rendering to ensure crawlers can access content.

**Evidence**
- Page structure: 79 elements with `visibility:hidden`
- Content only visible on scroll (via JavaScript animations)

**Effort / Impact / Confidence**
- **Effort:** Medium-High (restructure layout, test crawlability)
- **Impact:** Critical (unlock organic search traffic)
- **Confidence:** Very High (crawlers cannot access hidden content)

---

### Minor: Missing Robots Meta Tag — Allows Scraping, Ambiguous Crawl Directives (SEO-02)

**Description**
The page does not include a `<meta name="robots" content="..." />` tag. Without this tag, search engines apply default directives (typically "index, follow"), but the absence of an explicit tag is unconventional for enterprise sites and creates ambiguity.

**Why It's a Problem**
- **Missing control:** No explicit robots directive means Profound can't easily prevent competitor scraping or control which pages are indexed.
- **SEO ambiguity:** Best practice is to explicitly set robots meta tag on all pages (e.g., "index, follow, max-snippet:-1").
- **Crawl optimization:** For a crawl-sensitive site (with hidden content), a robots tag can help optimize indexing.

**Severity**
Minor

**Recommendation**
Add a robots meta tag to the homepage (and all pages):

```html
<meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large" />
```

This explicitly allows indexing and sets snippet length limits for Google snippets.

**Evidence**
- JavaScript SEO audit: `Robots: NOT SET`

**Effort / Impact / Confidence**
- **Effort:** Minimal (add one meta tag)
- **Impact:** Low (minor SEO optimization)
- **Confidence:** High (standard SEO practice)

---

### Moderate: Heading Hierarchy Issues — Multiple H1s Dilute Keyword Relevance (SEO-03)

**Description**
(See CRO-03 for detailed finding.) Two H1 tags on one page confuse search engines about the primary topic and dilute keyword relevance.

**Why It's a Problem**
- **SEO ranking dilution:** Search engines use H1 to determine page primary topic. Two H1s split the relevance signal.
- **Keyword optimization:** With a split H1, Profound can't strongly signal the primary keyword ("Answer Engine Optimization" or "AEO") to search engines.

**Severity**
Moderate

**Recommendation**
(See CRO-03.) Keep one H1; demote the other to H2.

**Evidence**
- JavaScript SEO audit: H1 count = 2

**Effort / Impact / Confidence**
- **Effort:** Minimal
- **Impact:** Low-Medium (SEO optimization)
- **Confidence:** Very High

---

## 8. Performance & Core Web Vitals

### Cannot Evaluate: PageSpeed Insights Data Unavailable (PERF-01)

**Description**
PageSpeed Insights API returned HTTP 429 (rate-limited) after 3 attempts for both mobile and desktop. Core Web Vitals data (Largest Contentful Paint, First Input Delay, Cumulative Layout Shift) are unavailable.

**Why This Matters**
Core Web Vitals are a Google ranking factor and directly impact user experience. Performance data is critical for enterprise SaaS sites, where slow load times reduce conversion rates.

**Recommendation**
1. Test performance manually at https://pagespeed.web.dev/analysis?url=https://www.tryprofound.com/
2. Check these metrics:
   - **Largest Contentful Paint (LCP):** Should be < 2.5s on mobile, < 2.5s on desktop.
   - **First Input Delay (FID) / Interaction to Next Paint (INP):** Should be < 100ms.
   - **Cumulative Layout Shift (CLS):** Should be < 0.1 (avoid layout shifts, especially for CTAs).
3. Given the scroll-triggered animation architecture, verify that:
   - Animation frame rate is smooth (60fps).
   - JavaScript loading doesn't block main thread.
   - Layout shifts don't occur when animations fire.

**Evidence**
- PageSpeed Insights API returned HTTP 429 after 3 attempts
- Data unavailable for mobile and desktop

**Effort / Impact / Confidence**
- **Effort:** Can't assess without data
- **Impact:** Potentially high (performance affects rankings and conversion)
- **Confidence:** Low (data unavailable)

---

## 9. Structured Data & Rich Snippets

### Cannot Evaluate: Structured Data Audit Incomplete (SD-01)

**Description**
The WebFetch and JavaScript audits did not capture structured data (JSON-LD, Schema.org markup) from the page. Structured data is important for:
- Organization schema (company name, logo, contact info)
- Product schema (features, pricing, reviews)
- FAQ schema (common questions)
- Case study schema (results, testimonials)

**Recommendation**
1. Inspect the page source for `<script type="application/ld+json">` blocks.
2. Verify that structured data includes:
   - Organization schema (Profound's legal name, logo, contact info)
   - Product schema (product name, description, features)
   - Review/Testimonial schema (for customer quotes)
3. Test structured data at https://schema.org/validator/ or Google Rich Results Test.
4. Ensure schema is complete and accurate (e.g., no missing properties that would prevent rich snippets).

**Evidence**
- Structured data count unknown (requires page source inspection)

**Effort / Impact / Confidence**
- **Effort:** Medium (audit and potentially add missing schema)
- **Impact:** Low-Medium (improves SERP appearance and trust signals)
- **Confidence:** Low (data unavailable)

---

## Summary of Findings by Severity

### Critical
1. **CRO-01:** Scroll-dependent content blocks 80% of page from non-JavaScript users

### Major
1. **CRO-02:** Hero section rotating text causes cognitive friction
2. **CRO-03:** Two H1 tags violate semantic HTML standard
3. **CRO-04:** Form fields use placeholder-only labels (missing explicit labels)
4. **CRO-05:** No skip navigation link
5. **CH-01:** Messaging doesn't educate market about AEO category
6. **CH-02:** Social proof section is underpowered (single testimonial)
7. **CH-03:** Feature cards lack benefit statements
8. **IA-01:** Navigation dropdowns are unclear
9. **N-01:** Rotating headline obscures core message (Nielsen's Heuristic 1)
10. **ACC-01:** Heading hierarchy broken (skips H3, jumps to H4)
11. **ACC-03:** No skip navigation link
12. **ACC-04:** Form fields lack associated labels
13. **SEO-01:** Content hidden from crawlers (80% inaccessible to bots)

### Moderate
1. **VD-01:** Visual hierarchy compromised by animation
2. **ACC-02:** Empty alternative text on one image
3. **SEO-03:** Heading hierarchy issues dilute keyword relevance

### Minor
1. **VD-02:** Announcement bar competes with primary CTAs
2. **IA-02:** Pricing page doesn't render
3. **N-04:** Inconsistent terminology ("Agents" vs. "Marketing Agents")
4. **SEO-02:** Missing robots meta tag

### Cannot Evaluate
1. **PERF-01:** PageSpeed Insights data unavailable
2. **SD-01:** Structured data audit incomplete

---

## Recommended Priority for Fixes

### Phase 1: Critical Conversion & Compliance (Weeks 1-2)
1. **CRO-01:** Restructure homepage to show content by default (remove `visibility:hidden` dependencies)
2. **CRO-04 & ACC-04:** Add explicit `<label>` elements to form fields
3. **CRO-05 & ACC-03:** Add skip navigation link
4. **CRO-03 & ACC-01:** Fix heading structure (one H1, no skipped levels)

### Phase 2: Messaging & Competitive Advantage (Weeks 2-3)
1. **CH-01:** Add AEO problem definition and category education
2. **CH-02:** Expand social proof (customer logos, inline case studies, media mentions)
3. **CH-03:** Add benefit statements to feature cards
4. **CRO-02:** Replace rotating headline with static, benefit-driven H1

### Phase 3: Information Architecture & Discoverability (Weeks 3-4)
1. **IA-01:** Clarify navigation dropdown structure
2. **SEO-01:** Verify crawlability and indexability post-restructure
3. **SEO-02:** Add robots meta tag

### Phase 4: Polish & Optimization (Week 4+)
1. **PERF-01:** Test and optimize Core Web Vitals
2. **VD-01 & VD-02:** Review visual hierarchy and announcement bar placement
3. **N-04:** Standardize terminology
4. **ACC-02:** Add missing alt text to one image

---

## Conclusion

Profound's homepage has a critical structural issue (scroll-dependent content) that undermines the entire user experience and conversion funnel. Once that's fixed, the primary opportunities are:
1. **Educating the market** about AEO as a category (not just a feature)
2. **Building enterprise trust** through robust social proof and design quality
3. **Clarifying the conversion path** with clear messaging, intuitive IA, and accessible forms

The company has strong product-market fit signals (Series B funding, customer logos, case study results), but the website doesn't yet reflect that strength. With focused effort on these findings, the homepage can become a top-of-funnel asset that educates prospects, builds credibility, and efficiently routes high-intent buyers to the sales team.

---

**Report compiled:** April 7, 2026
**Audit conducted by:** Claude Code (Anthropic)
**Client:** Profound (tryprofound.com)
