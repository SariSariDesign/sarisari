# UX Audit Reference Checklist

### For use in automated UX audit workflows

**Maintained by:** Sari Sari Design
**Last Edited:** March 12, 2026
**Applies to:** Marketing websites and product landing pages
**Scope:** Business-model-agnostic evaluation criteria across 8 static audit dimensions
**Excluded dimensions (dynamic):** QA/Bug Reporting, Mobile Responsiveness, Competitor Benchmarking

---

## How to Use This Document

Reference this checklist during Step 2 (Evaluate & Analyze) of the UX Audit workflow. For each dimension:

- Evaluate the website against every criterion listed
- Cite the criterion by its ID and name when identifying a violation (e.g., "N-04 Consistency and Standards")
- Do not invent standards, heuristics, or criteria not present in this document
- Use the Business Model Profile's Evaluation Priorities to weight findings when selecting the Top 5 for the published report

---

## Section 1: Nielsen's 10 Usability Heuristics

**What this evaluates:** Whether the interface follows fundamental usability principles that reduce cognitive load, prevent errors, and support users in accomplishing their goals efficiently.

**Evaluation approach:** Apply each heuristic as an evaluative lens across the full page. A single page element may violate multiple heuristics simultaneously — cite all that apply.

| ID | Heuristic | Evaluation Criteria |
|----|-----------|-------------------|
| N-01 | Visibility of System Status | Does the site communicate clearly what is happening? Are loading states, form submissions, hover states, and active navigation items visually indicated? Are there dead ends where the user has no feedback? |
| N-02 | Match Between System and the Real World | Does the site use language, concepts, and conventions familiar to its target user? Are icons and labels self-explanatory without requiring domain expertise? Does the content reflect how users think about their problems — not how the company thinks about its product? |
| N-03 | User Control and Freedom | Can users easily undo actions, navigate back, exit flows, or dismiss modals? Are there clear escape routes from any non-linear interaction (e.g. popups, multi-step forms, sticky banners)? |
| N-04 | Consistency and Standards | Are visual elements (buttons, links, headings, CTAs) used consistently across the page? Do interaction patterns follow web conventions (e.g. underlined links, clickable logos returning to home)? Is terminology consistent — does the site use the same word for the same concept throughout? |
| N-05 | Error Prevention | Are forms designed to prevent mistakes before they happen? Are required fields labeled? Are CTAs clear enough that users know what will happen before they click? Are there ambiguous or misleading interactive elements? |
| N-06 | Recognition Rather Than Recall | Can users understand what the product does and what actions to take without having to remember information from earlier in the page? Are navigation labels, CTAs, and section headers self-explanatory in context? Does the page support scanning (not just linear reading)? |
| N-07 | Flexibility and Efficiency of Use | Does the site support both novice and expert users? Are there multiple pathways to key content for users with different intents? Does the site allow users to self-qualify into relevant sections without requiring a sales conversation? |
| N-08 | Aesthetic and Minimalist Design | Does every element on the page serve a purpose? Is there visual noise, redundant content, or competing CTAs that dilute attention? Does the page prioritize ruthlessly, or does it try to say everything at once? |
| N-09 | Help Users Recognize, Diagnose, and Recover From Errors | Are error messages (e.g. form validation) written in plain language? Do they clearly identify what went wrong and how to fix it? Are they positioned near the relevant field or element? |
| N-10 | Help and Documentation | If users need additional context to act, is that context easy to find? Are tooltips, FAQs, or supporting content available without interrupting the primary flow? |

---

## Section 2: Conversion Rate Optimization (CRO)

**What this evaluates:** Whether the site effectively moves visitors toward its primary conversion goal through clear messaging, well-designed calls to action, and a range of engagement paths suited to visitors at different stages of intent.

**Evaluation approach:** Evaluate the full conversion funnel from arrival to CTA. Consider the Business Model Profile's primary conversion goal when weighting findings.

| ID | Criterion | Evaluation Criteria |
|----|-----------|-------------------|
| CRO-01 | Above-the-Fold Clarity | Does the hero section immediately communicate: what the product does, who it's for, and what to do next? Can a first-time visitor answer these three questions within 5 seconds without scrolling? |
| CRO-02 | CTA Specificity and Placement | Are CTAs action-oriented and specific (e.g. "Get a Demo" vs. "Learn More")? Are primary CTAs placed at decision points — above the fold, after key value propositions, and at the bottom of the page? Is there a clear visual hierarchy between primary and secondary CTAs? |
| CRO-03 | CTA Redundancy and Dilution | Are there too many competing CTAs that split user attention? Are CTAs repeated appropriately without feeling redundant? Does every CTA lead to a meaningfully different outcome, or do multiple CTAs funnel to the same endpoint unnecessarily? |
| CRO-04 | Engagement Path Variety | Does the site offer multiple engagement paths suited to visitors at different stages of intent (e.g. high intent: demo request; mid intent: product tour or case study; low intent: newsletter or downloadable resource)? Or does it rely on a single binary conversion action? |
| CRO-05 | Value Proposition Clarity | Is the core value proposition stated in benefit-led language (what the user gains) rather than feature-led language (what the product does)? Is the value proposition specific enough to be differentiated, or could it apply to any competitor? |
| CRO-06 | Trust Signal Placement | Are trust signals (customer logos, testimonials, case study results, awards, press mentions) placed at decision points — near CTAs, after bold claims, and before the ask? Or are they buried below the fold or isolated in a single section? |
| CRO-07 | Social Proof Depth | Does social proof go beyond logos? Are there named testimonials, quantified results, case study snippets, or reviews? Do the proof points answer the question a skeptical buyer would ask: "What did companies like mine actually achieve?" |
| CRO-08 | Friction in Conversion Flow | How many steps does the primary conversion action require? Are form fields minimized to what's essential? Is there any unnecessary friction between intent and action (e.g. forced account creation, excessive form fields, unclear next steps after submission)? |
| CRO-09 | Urgency and Motivation | Does the page give visitors a reason to act now rather than later? Are there relevant urgency signals (limited availability, time-sensitive offers, social proof indicating momentum) that feel authentic rather than manufactured? |
| CRO-10 | Post-CTA Expectation Setting | Does the site communicate what happens after the user completes the primary action? Is there a clear confirmation state, next step, or timeline communicated (e.g. "We'll be in touch within 24 hours")? |

---

## Section 3: Information Architecture (IA)

**What this evaluates:** Whether the site's structure, navigation, and content organization allow users to find what they need quickly, understand where they are, and move efficiently toward their goal.

**Evaluation approach:** Evaluate navigation labeling, page hierarchy, content grouping, and persona routing. Consider whether the structure reflects user mental models or internal company logic.

| ID | Criterion | Evaluation Criteria |
|----|-----------|-------------------|
| IA-01 | Navigation Clarity | Are navigation labels written in plain, user-centered language? Do they reflect what users are looking for, not internal company terminology? Is the number of top-level navigation items appropriate (typically 5–7 max)? |
| IA-02 | Navigation Consistency | Is the navigation present and consistent across all pages? Does it behave predictably — same position, same labels, same interactions? Are there pages that break the navigation pattern? |
| IA-03 | Wayfinding and Orientation | Can users always tell where they are within the site? Are active states, breadcrumbs, or page titles used to indicate current location? Is there a clear sense of site hierarchy? |
| IA-04 | Persona Routing | Does the site help different user types (e.g. different roles, company sizes, use cases) route themselves to relevant content quickly? Are there clear pathways for each primary persona, or does all content funnel through a single generic experience? |
| IA-05 | Content Grouping Logic | Is related content grouped together in a way that matches user expectations? Are sections organized by user need or user journey stage, rather than by company org chart or product feature list? |
| IA-06 | Search and Findability | For content-rich sites: is there a search function? Are key pages accessible within 2–3 clicks from the homepage? Are there dead ends where users cannot find a clear path forward? |
| IA-07 | Footer Utility | Does the footer serve as a useful secondary navigation layer? Does it include links to key pages, contact information, legal/compliance links, and social proof elements? Or is it minimal to the point of being unhelpful? |
| IA-08 | Page Depth and Scannability | Is content organized so users can scan before committing to reading? Are headings, subheadings, and visual anchors used to break up long sections? Does the page structure guide the eye toward key information and CTAs? |
| IA-09 | Mobile Navigation | Is the mobile navigation intuitive and accessible? Does it collapse appropriately? Are touch targets large enough? Is the hamburger menu or alternative navigation pattern clearly discoverable? *(Note: Flag for manual review if mobile rendering data is unavailable.)* |

---

## Section 4: Visual and Brand Design

**What this evaluates:** Whether the visual design creates an appropriate first impression, communicates credibility, and maintains consistency — in service of user trust and conversion rather than aesthetics alone.

**Evaluation approach:** Evaluate against design system consistency, industry-appropriate credibility signaling, and typographic/color clarity. Do not evaluate subjective aesthetic preference — evaluate whether design choices serve the user and business goals.

| ID | Criterion | Evaluation Criteria |
|----|-----------|-------------------|
| VD-01 | First Impression and Credibility | Does the visual design immediately signal that this is a legitimate, professional, and trustworthy product? Is the overall quality of design execution consistent with the company's stage, price point, and target buyer's expectations? |
| VD-02 | Visual Hierarchy | Is there a clear hierarchy of importance communicated through size, weight, color, and spacing? Can a user scanning the page immediately identify the most important element on each section? Are primary CTAs visually dominant over secondary actions? |
| VD-03 | Typography System | Is a consistent type scale used throughout the page? Are heading levels (H1, H2, H3) visually distinct and used correctly? Is body text legible at its rendered size? Is line length kept within readable range (50–75 characters per line)? |
| VD-04 | Color System Consistency | Is a defined color palette applied consistently? Are primary, secondary, and accent colors used with clear intent? Are color combinations used to communicate meaning (e.g. CTA color is distinct and reserved for actions only)? |
| VD-05 | Spacing and Layout Rhythm | Is whitespace used intentionally to create breathing room and separate content sections? Is there consistent spacing between elements, sections, and components? Does the layout feel balanced, or cluttered and uneven? |
| VD-06 | Imagery and Iconography Quality | Is imagery high quality, relevant, and appropriate for the audience? Does it show real product, real people, or meaningful abstractions — rather than generic stock photography? Are icons used consistently in style and size? |
| VD-07 | Brand Consistency | Is the visual language consistent with the company's brand identity across all sections of the page? Are logo usage, color, tone of voice, and design style coherent? Or do sections feel like they were designed independently? |
| VD-08 | Industry-Appropriate Trust Signaling | Does the design convey the right level of formality and credibility for its industry and buyer? (e.g. enterprise fintech buyers expect a more polished, institutional aesthetic than a consumer lifestyle brand.) Does the design help or hurt trust with the target buyer? |
| VD-09 | Interactive and Hover States | Are interactive elements (buttons, links, form fields) visually distinct from static content? Do hover and focus states provide clear feedback? Is it obvious what is clickable? |
| VD-10 | Animation and Motion | If animation or motion is used, does it serve a functional purpose (directing attention, communicating process) rather than purely decorative? Does animation enhance or distract from the core message? Does it respect reduced-motion preferences? |

---

## Section 5: Accessibility (WCAG 2.1 AA)

**What this evaluates:** Whether the site meets the Web Content Accessibility Guidelines (WCAG) 2.1 Level AA standard — the internationally recognized legal and ethical baseline for digital accessibility.

**Evaluation approach:** Apply axe-core scan data where available for objective violations. Supplement with manual checklist evaluation for criteria that automated tools cannot fully detect (marked with ⚠️). Flag all Critical violations prominently regardless of business model profile.

**Important note on confidence:** Automated tools (axe-core, WAVE) detect approximately 30–40% of WCAG violations. Criteria marked ⚠️ require manual or human-assisted review and should be flagged as "Cannot Evaluate" if scan data is unavailable.

### 5.1 Perceivable

| ID | WCAG Criterion | Level | Evaluation Criteria |
|----|---------------|-------|-------------------|
| ACC-01 | 1.1.1 Non-text Content | AA | Do all images, icons, and non-text elements have descriptive alt text? Are decorative images marked with empty alt attributes (alt="")? Are complex images (charts, diagrams) described in text? |
| ACC-02 | 1.3.1 Info and Relationships | AA | Is information conveyed through visual structure (headings, lists, tables) also communicated semantically via correct HTML? Are form labels programmatically associated with their inputs? |
| ACC-03 | 1.3.2 Meaningful Sequence | AA ⚠️ | If CSS is removed, does the reading order of content still make logical sense? Is the DOM order consistent with the visual presentation order? |
| ACC-04 | 1.3.3 Sensory Characteristics | AA | Does the site avoid instructions that rely solely on sensory characteristics (e.g. "click the green button" or "see the diagram on the right")? |
| ACC-05 | 1.4.1 Use of Color | AA | Is color used as the only means of conveying information (e.g. red = error)? Is there always a secondary indicator (icon, text, pattern) alongside color? |
| ACC-06 | 1.4.3 Contrast (Minimum) | AA | Do all normal text elements meet a minimum 4.5:1 contrast ratio against their background? Do large text elements (18pt+ or 14pt+ bold) meet a minimum 3:1 ratio? |
| ACC-07 | 1.4.4 Resize Text | AA ⚠️ | Can text be resized up to 200% without loss of content or functionality? Does the layout break or overflow at increased text sizes? |
| ACC-08 | 1.4.5 Images of Text | AA | Is text embedded in images (except logos) avoided? Is live text used in place of text-as-image wherever possible? |
| ACC-09 | 1.4.10 Reflow | AA ⚠️ | Can all content be accessed without horizontal scrolling at a viewport width of 320px (equivalent to 400% zoom on a 1280px screen)? |
| ACC-10 | 1.4.11 Non-text Contrast | AA | Do UI components (form inputs, buttons, icons) and focus indicators meet a minimum 3:1 contrast ratio against adjacent colors? |
| ACC-11 | 1.4.12 Text Spacing | AA ⚠️ | When letter spacing, word spacing, line height, and paragraph spacing are overridden to WCAG-specified values, is content and functionality preserved? |
| ACC-12 | 1.4.13 Content on Hover or Focus | AA ⚠️ | Is content that appears on hover or focus (tooltips, dropdowns) dismissible, hoverable, and persistent until dismissed? |

### 5.2 Operable

| ID | WCAG Criterion | Level | Evaluation Criteria |
|----|---------------|-------|-------------------|
| ACC-13 | 2.1.1 Keyboard | AA | Is all functionality operable via keyboard alone (no mouse required)? Can users navigate links, buttons, forms, and interactive elements using Tab, Enter, and arrow keys? |
| ACC-14 | 2.1.2 No Keyboard Trap | AA | Can keyboard users always navigate away from any component? Are there any elements that trap keyboard focus (e.g. modals, carousels, custom dropdowns)? |
| ACC-15 | 2.3.1 Three Flashes or Below | AA | Does the page contain any content that flashes more than three times per second? (Applies to animations, video, GIFs.) |
| ACC-16 | 2.4.1 Bypass Blocks | AA | Is there a skip navigation link that allows keyboard users to bypass the main navigation and jump to main content? |
| ACC-17 | 2.4.2 Page Titled | AA | Does the HTML `<title>` element accurately describe the page content? Is it unique per page? |
| ACC-18 | 2.4.3 Focus Order | AA ⚠️ | Does keyboard focus move through the page in a logical, meaningful order that reflects the visual and content hierarchy? |
| ACC-19 | 2.4.4 Link Purpose | AA | Is the purpose of every link clear from its link text or its surrounding context? Are there generic links like "click here" or "read more" without descriptive context? |
| ACC-20 | 2.4.6 Headings and Labels | AA | Are headings descriptive and meaningful? Do they accurately describe the content of their section? Are form fields labeled clearly? |
| ACC-21 | 2.4.7 Focus Visible | AA | Is keyboard focus visible at all times? Is the focus indicator clearly visible — not just the browser default, but sufficiently prominent to be usable? |

### 5.3 Understandable

| ID | WCAG Criterion | Level | Evaluation Criteria |
|----|---------------|-------|-------------------|
| ACC-22 | 3.1.1 Language of Page | AA | Is the primary language of the page declared in the HTML lang attribute (e.g. lang="en")? |
| ACC-23 | 3.2.1 On Focus | AA | Does receiving keyboard focus on any element trigger unexpected changes (e.g. navigation, form submission, content change)? It should not. |
| ACC-24 | 3.2.2 On Input | AA | Does changing a form input's value automatically trigger unexpected context changes without warning? It should not. |
| ACC-25 | 3.3.1 Error Identification | AA | Are input errors identified in text and described to the user specifically (not just highlighted in red)? Are error messages associated programmatically with the relevant field? |
| ACC-26 | 3.3.2 Labels or Instructions | AA | Do forms provide clear labels or instructions before asking for input? Are format requirements (e.g. date format, password rules) communicated before submission? |

### 5.4 Robust

| ID | WCAG Criterion | Level | Evaluation Criteria |
|----|---------------|-------|-------------------|
| ACC-27 | 4.1.1 Parsing | AA | Is the HTML free of significant parsing errors (duplicate IDs, unclosed tags, incorrect nesting) that could cause assistive technologies to malfunction? |
| ACC-28 | 4.1.2 Name, Role, Value | AA | Do all UI components have accessible names and roles? Are custom interactive elements (non-native HTML) implemented with correct ARIA attributes? Do state changes (expanded/collapsed, checked/unchecked) communicate via ARIA? |
| ACC-29 | 4.1.3 Status Messages | AA | Are status messages (e.g. "Form submitted", "Item added to cart") programmatically determinable so they can be announced by screen readers without receiving focus? |

---

## Section 6: Performance and Core Web Vitals

**What this evaluates:** Whether the site loads fast enough to retain visitors and meet Google's performance benchmarks — both as a user experience standard and as a search ranking signal.

**Evaluation approach:** Use PageSpeed Insights API data (mobile and desktop) where available. Apply the thresholds below to classify findings. If PageSpeed data is unavailable, flag all performance criteria as "Cannot Evaluate — requires PageSpeed Insights API call."

### 6.1 Core Web Vitals Thresholds

These are Google's official pass/fail thresholds as of 2024. Apply to both mobile and desktop scores.

| Metric | Full Name | Good | Needs Improvement | Poor | What It Measures |
|--------|-----------|------|-------------------|------|-----------------|
| LCP | Largest Contentful Paint | ≤ 2.5s | 2.5s – 4.0s | > 4.0s | How fast the largest visible element loads (perceived load speed) |
| INP | Interaction to Next Paint | ≤ 200ms | 200ms – 500ms | > 500ms | Responsiveness of the page to user interactions (replaced FID in 2024) |
| CLS | Cumulative Layout Shift | ≤ 0.1 | 0.1 – 0.25 | > 0.25 | Visual stability — how much the layout jumps unexpectedly during load |
| FCP | First Contentful Paint | ≤ 1.8s | 1.8s – 3.0s | > 3.0s | When the first content element appears on screen |
| TTFB | Time to First Byte | ≤ 800ms | 800ms – 1800ms | > 1800ms | Server response time |
| Speed Index | Speed Index | ≤ 3.4s | 3.4s – 5.8s | > 5.8s | How quickly content is visually populated during load |

### 6.2 Performance Evaluation Criteria

| ID | Criterion | Evaluation Criteria |
|----|-----------|-------------------|
| PERF-01 | Overall Performance Score | What is the Lighthouse performance score (0–100) on mobile and desktop? Scores below 50 are Poor; 50–89 Need Improvement; 90–100 are Good. Mobile score is weighted more heavily as it reflects real-world user conditions. |
| PERF-02 | LCP Assessment | Does LCP meet the ≤2.5s threshold? What element is identified as the LCP element? Is it a hero image, heading text, or video? Is it optimized (compressed, preloaded, served in next-gen format)? |
| PERF-03 | CLS Assessment | Does CLS meet the ≤0.1 threshold? Are there elements that shift layout during load — typically caused by images without defined dimensions, late-loading fonts, or dynamically injected content? |
| PERF-04 | INP/Interactivity Assessment | Does INP meet the ≤200ms threshold? Are there JavaScript-heavy interactions that delay response to user input? |
| PERF-05 | Image Optimization | Are images served in next-gen formats (WebP, AVIF)? Are images appropriately sized for their display dimensions? Are images lazy-loaded below the fold? Are hero/above-the-fold images preloaded? |
| PERF-06 | Render-Blocking Resources | Are there render-blocking CSS or JavaScript files that delay page paint? Are critical styles inlined? Is non-critical JS deferred or async? |
| PERF-07 | Server Response Time (TTFB) | Does TTFB meet the ≤800ms threshold? Are there server-side performance issues (slow hosting, no CDN, unoptimized server configuration)? |
| PERF-08 | Caching and CDN | Are static assets served with appropriate cache headers? Is a CDN used to serve assets closer to the user's location? |
| PERF-09 | Mobile vs. Desktop Performance Gap | Is there a significant performance gap between mobile and desktop scores? A gap >20 points suggests mobile-specific issues (unoptimized images, excessive JavaScript, layout complexity) that disproportionately affect mobile users. |

---

## Section 7: SEO and Discoverability

**What this evaluates:** Whether the site is structured to be found, indexed, and understood by search engines — and whether the on-page signals support ranking for relevant queries.

**Evaluation approach:** Use scraped HTML data to evaluate on-page SEO elements. Automated tools can reliably assess all criteria in this section from raw HTML. Note that off-page factors (backlinks, domain authority) are out of scope for a homepage audit.

| ID | Criterion | Standard / Best Practice | Evaluation Criteria |
|----|-----------|------------------------|-------------------|
| SEO-01 | Page Title | 50–60 characters; includes primary keyword; unique per page | Is a title tag present? Is it within the recommended character range? Does it include a meaningful keyword and the company name? Is it descriptive enough to stand alone in a search result? |
| SEO-02 | Meta Description | 150–160 characters; benefit-led; includes a soft CTA | Is a meta description present? Is it within range? Does it accurately and compellingly describe the page? Is it unique (not duplicated from title or H1)? |
| SEO-03 | H1 Tag | One H1 per page; includes primary keyword; matches search intent | Is there exactly one H1 tag? Does it include a relevant keyword? Is it descriptive of the page's primary topic? Does it match what a user searching for this product would expect to find? |
| SEO-04 | Heading Hierarchy | Logical H1 → H2 → H3 structure; no skipped levels | Is the heading structure logical and hierarchical? Are H2s used for major sections? Are H3s used for subsections within H2s? Are heading levels skipped (e.g. H1 → H3)? |
| SEO-05 | Image Alt Text | Descriptive alt text on all informational images; empty alt on decorative images | Do all meaningful images have descriptive alt text? Are there images with missing or generic alt text (e.g. "image1.png")? Are purely decorative images marked appropriately? |
| SEO-06 | Canonical Tag | Self-referencing canonical tag present on all pages | Is a canonical tag present in the HTML head? Does it point to the correct, preferred version of the URL (e.g. https vs. http, www vs. non-www)? |
| SEO-07 | Open Graph Tags | og:title, og:description, og:image, og:url present | Are Open Graph meta tags present? Are they populated with meaningful content? Will the page render a useful preview when shared on LinkedIn, Slack, or other platforms? |
| SEO-08 | Robots Meta Tag | index, follow (or appropriate equivalent) | Is a robots meta tag present? Is it set to noindex or nofollow unexpectedly? Are any pages that should be indexed being blocked? |
| SEO-09 | Structured Data | Schema.org markup appropriate to page type (Organization, Product, FAQPage, etc.) | Is any structured data / schema markup present? Is it appropriate for the page type? Is it valid (no syntax errors)? Does it enable rich results in Google Search? |
| SEO-10 | URL Structure | Short, descriptive, lowercase, hyphen-separated; no unnecessary parameters | Are page URLs short and descriptive? Do they include relevant keywords? Are there unnecessary tracking parameters, session IDs, or dynamically generated strings in the URL? |
| SEO-11 | Internal Linking | Key pages linked from homepage and nav; descriptive anchor text | Are key pages (product, pricing, about, case studies) accessible via descriptive internal links? Is anchor text meaningful (not "click here")? Is there a logical internal linking structure that distributes page authority? |
| SEO-12 | Page Indexability | Page is crawlable and not blocked by robots.txt or noindex | Is the homepage indexable? Are there signals in the HTML (noindex tag, x-robots-tag) or likely robots.txt configurations that would prevent indexing? |

---

## Section 8: Content Hierarchy and Copywriting

**What this evaluates:** Whether the site's content is structured to guide users through a clear narrative, uses language that resonates with the target audience, and communicates value in terms of outcomes rather than features.

**Evaluation approach:** Apply each criterion as an evaluative lens to the full-page content. Assess copy quality relative to the Business Model Profile — a B2B enterprise SaaS company and a consumer app have different copy standards. The evaluation should reflect what works for the target buyer, not a universal style preference.

| ID | Criterion | Evaluation Criteria |
|----|-----------|-------------------|
| COPY-01 | 5-Second Test | Can a first-time visitor answer three questions within 5 seconds of landing: (1) What does this do? (2) Who is it for? (3) What should I do next? If the answer to any of these is unclear above the fold, the hero copy has failed its primary job. |
| COPY-02 | Benefit-Led vs. Feature-Led Framing | Is copy written in terms of outcomes the user achieves (benefit-led) or capabilities the product has (feature-led)? Strong copy leads with what the user gains. Weak copy lists what the product does. Evaluate the hero headline, subheading, and feature section specifically. |
| COPY-03 | Headline Specificity | Are headlines specific enough to be credible and differentiated? Generic headlines ("The platform for modern teams") could apply to any competitor. Strong headlines are specific, quantified where possible, and directly address a user pain point or desired outcome. |
| COPY-04 | Audience Clarity | Does the copy make clear who this product is for — ideally within the first screen? Does it use the language, terminology, and framing that the target persona uses to describe their own problem? Or does it speak in product-internal language? |
| COPY-05 | Narrative Flow and Page Arc | Does the page tell a coherent story from top to bottom — moving the user from problem awareness to solution to proof to action? Or does it feel like a disconnected series of sections? Is there a logical emotional and informational progression? |
| COPY-06 | Scannability and Formatting | Is the content structured for scanning? Are short paragraphs, clear subheadings, and visual anchors used to make the page readable in non-linear ways? Or are there large blocks of unbroken text that users will skip? |
| COPY-07 | Jargon and Readability | Is the copy free of unnecessary jargon, acronyms, or insider terminology that would be opaque to a new visitor? Is it written at an appropriate reading level for the target audience? Plain language should be the default — even for technical or enterprise products. |
| COPY-08 | Proof and Credibility in Copy | Are claims specific and verifiable (e.g. "reduces licensing cost by 50–90%") or vague and unsubstantiated (e.g. "industry-leading platform")? Are statistics, results, and comparisons sourced or attributed? Does the copy earn trust or ask for it? |
| COPY-09 | CTA Copy Quality | Are CTA labels action-oriented and specific? Do they communicate what the user will get, not just what they will do (e.g. "See the Platform" vs. "Learn More"; "Talk to a Compliance Expert" vs. "Contact Us")? Is there microcopy near CTAs that reduces risk or sets expectations? |
| COPY-10 | Tone Consistency | Is the tone of voice consistent across all sections of the page? Does the tone match the brand's positioning and the audience's expectations? Are there sections that feel noticeably different in voice — suggesting different authors or templates were used without harmonization? |
| COPY-11 | Social Proof Copy | Do testimonials, case study snippets, and customer quotes use specific language that reflects real outcomes? Or are they vague endorsements ("Great product — highly recommend")? Named individuals with titles and company affiliations carry significantly more weight than anonymous quotes. |
| COPY-12 | Error and Empty State Messaging | For any forms or interactive elements: are error messages and confirmation states written in plain, helpful language? Do they tell users what went wrong and what to do next — not just that something failed? |

---

*End of UX Audit Reference Checklist*

*Document version: 1.0 — February 2026*

*Maintained by Sari Sari Design. Update Section 6 (Core Web Vitals) if Google revises official thresholds.*
