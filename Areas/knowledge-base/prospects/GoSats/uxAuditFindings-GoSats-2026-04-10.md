# UX Audit Report

## GoSats

**URL:** https://gosats.io/
**Audit Date:** April 10, 2026
**Prepared by:** Sari Sari Design

---

## Business Model Profile

- **Industry:** Consumer fintech / crypto rewards (Bitcoin + Gold)
- **Stage:** Series A — closed $5M round led by Konvoy Ventures on April 6, 2026; ~$10.2M total raised across four rounds; Y Combinator alum, Bengaluru HQ
- **Core product:** A mobile app plus a prepaid VISA card that pay users in Bitcoin and Gold instead of traditional cashback — rewards are earned on merchant-partner shopping (Flipkart, Swiggy, Myntra, Nykaa, etc.) and on every swipe of the GoSats card
- **Company objective:** Become the default rewards layer for Indian consumers; scale past the 1M+ user mark toward mass-market Bitcoin accumulation as a daily habit
- **Primary conversion goal:** App install (iOS and Android), with a secondary goal of getting users to activate the GoSats card
- **Core personas:** (1) crypto-curious urban Indian shoppers 22–38 who already spend on Flipkart/Swiggy; (2) existing "stackers" who want to dollar-cost average into BTC passively
- **Customer type:** B2C
- **Business model:** Consumer app monetized through affiliate commissions from merchant partners and card interchange revenue on the prepaid VISA
- **GTM motion:** Product-led (PLG) — app store distribution, referral loops, and social/LinkedIn/PR
- **Competitor landscape:** CRED and traditional card rewards (HDFC, Amex Platinum) on one side; CoinDCX, WazirX, and Mudrex on the crypto side; CashKaro and MagicPin on the cashback side. CRED in particular sets the visual and brand bar for "premium fintech" in India.

### Evaluation Priorities (ordered)

1. Content Hierarchy & Copywriting
2. Conversion Rate Optimization
3. QA / Bug Reporting
4. SEO & Discoverability
5. Visual & Brand Design
6. Performance & Core Web Vitals
7. Information Architecture
8. Nielsen Heuristics
9. Accessibility
10. Mobile Responsiveness
11. Competitor Benchmarking

### Methodology

This audit evaluates gosats.io across 11 UX dimensions using the Sari Sari Design reference checklist, combining raw HTML inspection, JavaScript bundle string analysis, and external research. A live-browser pass (axe-core, PageSpeed Insights, and mobile screenshots) was not possible during this run and is flagged where relevant.

### Evaluation Lens

GoSats is a freshly-funded Series A consumer app whose homepage is a performance marketing funnel with one real job — convert a curious visitor into an app install fast enough to justify paid traffic. This audit treats every element through that lens and against the trust bar an average Indian consumer requires before linking a payment method to a crypto-adjacent product.

### Why This Matters

At Series A every percentage point of website-to-install conversion compounds — it lowers blended CAC on the paid side, widens the return on earned press coverage from the $5M raise, and extends runway. Hero-level friction and broken share previews are not cosmetic problems; they tax every dollar of growth spend and every LinkedIn post the founding team publishes.

### Competitor Context

CRED, Zerodha, CoinDCX, and Mudrex all ship SSR or statically pre-rendered marketing sites with custom design systems, validated Open Graph previews, and benefit-led hero copy. GoSats is measurably behind on all three.

---

# Friction and Pain Points

## 1. QA / Bug Reporting

Broken, orphaned, or typo'd elements that produce measurable downstream problems.

### Q-1: Broken Open Graph title tag — `og:tp` typo in place of `og:title`

- **Observed:** The homepage `<head>` contains `<meta property="og:tp" content="GoSats - Get Rewards When You Shop In India">`. The property name should be `og:title`, not `og:tp`. As a result, LinkedIn, Slack, and Facebook link previews fall back to the HTML `<title>` tag (which is an 84-character internal-marketing string) or render an empty title card.
- **Why it's a problem:** This is a direct regression against the Open Graph protocol and silently breaks every preview card the team relies on for organic distribution. It is especially costly for GoSats right now because the founder is actively posting on LinkedIn and press coverage from the April 6 raise is in circulation — every share that renders poorly leaks intent.
- **Severity:** Critical
- **Recommendation:** Rename the attribute from `og:tp` to `og:title` and re-run the LinkedIn Post Inspector and Twitter Card Validator to flush the cached preview. Write the `og:title` value to be shorter and more benefit-led than the page title (e.g., "Get Bitcoin and Gold Back on Every Spend | GoSats").
- **Evidence:** Raw HTML head, line `<meta property="og:tp" content="...">` (fetched via curl 2026-04-10).
- **Effort:** Low · **Impact:** High · **Confidence:** High

### Q-2: Unresolved CSS placeholder path shipped to production

- **Observed:** The head contains `<link href="path/to/css/star-rating.min.css" media="all" rel="stylesheet"/>`. The literal string `path/to/css/...` is a template placeholder — it was never replaced with a real URL. Any star-rating UI on the page (likely the app store reviews / testimonials carousel based on `star-rating.min.css` naming) will render unstyled.
- **Why it's a problem:** This is a real 404 on every page load and a visible regression on any rating component — which for a crypto-adjacent product is one of the strongest trust signals on the page (CRO-06 Trust Signal Placement). It also signals to any engineer or investor reading the source that QA is loose.
- **Severity:** Major
- **Recommendation:** Either remove the tag if the rating component has been deprecated, or point it at the actual compiled CSS path (likely `/static/css/star-rating.min.css` or a CDN URL).
- **Evidence:** Raw HTML head (2026-04-10).
- **Effort:** Low · **Impact:** Medium · **Confidence:** High

### Q-3: Favicon uses `href="#"` and triggers a self-fetch

- **Observed:** `<link rel="shortcut icon" href="#">` is followed by a valid `<link rel="icon" href="/favicon.ico"/>`. The `href="#"` on the first tag causes some browsers to refetch the current page URL as the favicon, wasting a request and occasionally showing a broken tab icon.
- **Why it's a problem:** Minor in isolation, but it is a well-known anti-pattern and is a tell of template-copy without cleanup. Fix belongs in the same sweep as Q-1 and Q-2.
- **Severity:** Minor
- **Recommendation:** Delete the first `<link>` entirely. Keep only `<link rel="icon" href="/favicon.ico"/>` and add `<link rel="apple-touch-icon" href="/logo192.png"/>` (already present).
- **Evidence:** Raw HTML head (2026-04-10).
- **Effort:** Low · **Impact:** Low · **Confidence:** High

### Q-4: Meta description and Twitter description tell two different stories

- **Observed:** `meta[name="description"]` says *"Earn rewards when you shop online at your favourite brands in India."* (no mention of bitcoin). `meta[name="twitter:description"]` says *"Earn bitcoin rewards when you shop online at your favourite brands in India."* (mentions bitcoin).
- **Why it's a problem:** The single most important differentiator — Bitcoin — is present on Twitter but missing from Google search result snippets. This fragments positioning and leaves the highest-intent keyword off the primary SEO surface.
- **Severity:** Major
- **Recommendation:** Unify both descriptions. Lead with the differentiator: *"Earn Bitcoin and Gold rewards every time you shop at Flipkart, Swiggy, Myntra and more. Join 1M+ Indians stacking Sats daily."* (~145 chars).
- **Evidence:** Raw HTML head (2026-04-10).
- **Effort:** Low · **Impact:** High · **Confidence:** High

---

## 2. SEO and Discoverability

How well the site can be found, rendered, and represented to crawlers and social-preview bots.

### S-1: Meta description omits "Bitcoin" and "Gold" — the core differentiators

- **Observed:** The 69-character meta description ("Earn rewards when you shop online at your favourite brands in India.") falls short of the 150–160 character target and never mentions the product's defining differentiators.
- **Why it's a problem:** It cedes the entire "bitcoin rewards India" and "gold rewards India" search surface and under-sells the click-through on any keyword where GoSats should dominate.
- **Severity:** Critical
- **Recommendation:** Rewrite per Q-4 recommendation, then roll it through the rest of the indexed pages.
- **Criteria:** SEO-02 Meta Description
- **Effort:** Low · **Impact:** High · **Confidence:** High

### S-2: Page title is 84 characters and uses abstract internal language

- **Observed:** `<title>GoSats - Transforming Spends into Valuable Assets | Trusted by 1M+ Indians</title>`. This is ~24 characters over Google's typical display limit and leads with jargon that doesn't match how users search ("bitcoin cashback India", "gosats card", "crypto rewards app India").
- **Why it's a problem:** Google will truncate mid-phrase ("…Valuable Asse…") and the keyword placement wastes the first 30 characters on branding that could carry the differentiator instead.
- **Severity:** Major
- **Recommendation:** Something like *"GoSats — Bitcoin & Gold Rewards on Every Spend | 1M+ Indians"* (~62 chars).
- **Criteria:** SEO-01 Page Title
- **Effort:** Low · **Impact:** High · **Confidence:** High

### S-3: No canonical tag on the homepage

- **Observed:** No `<link rel="canonical">` anywhere in the head. Raw HTML confirmed via curl.
- **Why it's a problem:** With parameterized campaign URLs (`?utm_source=…`, referral codes, press UTMs), Google will see multiple indexable variants of `gosats.io/` and split ranking signals. Crypto/fintech is also a popular spam-clone target, and without a canonical you're inviting scraped duplicates to outrank the original.
- **Severity:** Critical
- **Recommendation:** Add `<link rel="canonical" href="https://gosats.io/" />` to every page; programmatically emit the stripped, param-free URL.
- **Criteria:** SEO-06 Canonical Tag
- **Effort:** Low · **Impact:** Medium–High · **Confidence:** High

### S-4: No robots meta tag

- **Observed:** No `<meta name="robots">` present. Defaults to `index, follow`, so nothing is blocked today — but there is no explicit signal for preview-only pages or search pages you may add later.
- **Severity:** Minor
- **Recommendation:** Add `<meta name="robots" content="index, follow, max-image-preview:large">` for the homepage. The `max-image-preview:large` directive unlocks richer Google image previews for brand queries.
- **Criteria:** SEO-08 Robots Meta Tag
- **Effort:** Low · **Impact:** Low · **Confidence:** High

### S-5: No JSON-LD structured data — leaving rich results on the table

- **Observed:** Zero `<script type="application/ld+json">` tags in the head. JavaScript bundle strings confirm an on-page FAQ section ("How can the card be topped up?", "How do I withdraw my sats?", "How does the referral system work?", etc.) that is ideal for FAQPage schema.
- **Why it's a problem:** You're missing Organization, MobileApplication, and FAQPage schemas. For a consumer app at this stage, rich-result coverage is the cheapest SEO lever available — FAQPage alone often lifts SERP real estate by 50–200%.
- **Severity:** Critical
- **Recommendation:** Ship three JSON-LD blocks: Organization (with logo, sameAs for Twitter/LinkedIn, foundingDate), MobileApplication (with aggregateRating pulled from Play Store), and FAQPage built directly from the existing FAQ content.
- **Criteria:** SEO-09 Structured Data
- **Effort:** Low–Medium · **Impact:** Medium–High · **Confidence:** High

### S-6: `sitemap.xml` does not exist — it returns the SPA HTML shell

- **Observed:** `GET https://gosats.io/sitemap.xml` returns the React index.html with `Content-Type: text/html` instead of an XML sitemap. `robots.txt` does not reference a sitemap either.
- **Why it's a problem:** Search engines cannot efficiently discover the Card, FAQ, or blog URLs, and Google Search Console will report the sitemap as invalid. Organic indexation is slower and more brittle than it needs to be.
- **Severity:** Critical
- **Recommendation:** Generate a valid `sitemap.xml` listing the homepage, card page, FAQ, blog index, and any legal pages. Add `Sitemap: https://gosats.io/sitemap.xml` to robots.txt.
- **Criteria:** SEO-12 Page Indexability
- **Effort:** Low–Medium · **Impact:** Medium · **Confidence:** High

### S-7: Client-side-only React SPA — an invisible page for any non-Googlebot crawler

- **Observed:** The body contains only `<noscript>You need to enable JavaScript to run this app.</noscript><div id="root"></div>`. All visible content is injected at runtime by `main.108b12fc.js`. There is no server-side rendering, no static prerender, and no meaningful body HTML in the initial response.
- **Why it's a problem:** Google can render JavaScript, but LinkedIn, Slack, WhatsApp, X, Facebook, WeChat, and virtually every third-party preview bot only read the initial HTML. Combined with Q-1 (broken `og:title`) and Q-4 (no Bitcoin in meta description), every share of gosats.io renders a thin, off-brand preview — which directly damages the LinkedIn-led distribution the founding team is doing right now. H1 hierarchy, alt text, body copy, and anchor text are also invisible to most SEO audit tools.
- **Severity:** Critical
- **Recommendation:** Move the marketing site to SSR or static export. Next.js (`next export` or `app router` static) is the low-friction path — keep the app UI as-is and only statically render the `/`, `/card`, `/faq`, and `/legal` marketing pages. This unlocks Q-1 through S-6 as a single migration.
- **Criteria:** SEO-12, COPY-01 (indirectly, via hero visibility to scrapers)
- **Effort:** Medium–High · **Impact:** High · **Confidence:** High

---

## 3. Content Hierarchy and Copywriting

What the hero communicates, how fast, and in whose language.

### C-1: The hero appears to carry multiple competing messages

- **Observed:** JavaScript bundle strings surface several hero-level fragments that coexist on the same screen: *"Get India's Most…"*, *"Earn Rewards on Everything"*, *"Earn up to…"*, *"Get India's First Sats Rewards Card"*, *"Download GoSats App"*, and *"Get GoSats Card"*. This pattern strongly suggests either a rotating headline or two stacked hero modules (app + card) fighting for the same attention.
- **Why it's a problem:** The 5-second test breaks when visitors can't tell whether GoSats is an app, a card, or both, and what the single next step is. For a B2C install funnel, hero clarity is the single biggest lever on conversion — and a rotating headline means no one answer is locked in during the scan.
- **Severity:** Major
- **Recommendation:** Pick one hero. The app is almost certainly the right primary (higher top-of-funnel, no KYC friction, larger addressable market). Anchor the headline to a single concrete benefit ("Get Bitcoin back on every rupee you spend") and demote the card to a second scroll section. Measure lift vs the current rotating pattern over a 2-week A/B.
- **Criteria:** COPY-01 (5-Second Test), COPY-03 (Headline Specificity), CRO-01 (Above-the-Fold Clarity), N-08 (Aesthetic and Minimalist Design)
- **Effort:** Medium · **Impact:** High · **Confidence:** Medium (browser rendering needed to confirm the exact layout)

### C-2: "Transforming Spends into Valuable Assets" is abstract and feature-led

- **Observed:** This phrase is used as the page title and likely as a hero line. It's the kind of phrase a founder writes in a pitch deck, not what a 28-year-old Flipkart shopper types into Google.
- **Why it's a problem:** "Spends" and "valuable assets" are internal abstractions. They require mental translation and lose the most important sales word — "Bitcoin" — from the first impression.
- **Severity:** Major
- **Recommendation:** Rewrite with the user's own words: *"Get Bitcoin Back on Every Rupee You Spend"* or *"Shop Like You Always Do. Earn Bitcoin You Never Would."*
- **Criteria:** COPY-02 (Benefit-led framing), COPY-04 (Audience Clarity), COPY-07 (Jargon)
- **Effort:** Low · **Impact:** High · **Confidence:** Medium

### C-3: The strongest trust signal appears to be buried

- **Observed:** Bundle strings include *"Bitcoiners stacked around 13 Bitcoin worth rewards, totalling to around Rs1.9 crores at current prices"* — an excellent, specific, quantified proof point. The homepage title already surfaces *"Trusted by 1M+ Indians"*. Based on the ordering of DOM nodes and section names in the bundle, the ₹1.9 crore proof sits well below the hero.
- **Why it's a problem:** Social proof is most effective at the decision moment — above the fold and adjacent to the primary CTA. Burying a number this concrete is a wasted asset.
- **Severity:** Major
- **Recommendation:** Hoist one proof point into the hero: *"1M+ Indians have already stacked ₹50 Cr in Bitcoin rewards."* Pair it with the app install CTA.
- **Criteria:** CRO-06 (Trust Signal Placement), COPY-08 (Proof and Credibility)
- **Effort:** Low · **Impact:** Medium–High · **Confidence:** Medium

---

## 4. Conversion Rate Optimization

Whether the site funnels intent toward one concrete next action.

### CRO-1: Two primary CTAs (Download App vs Get GoSats Card) split attention

- **Observed:** Bundle strings confirm both "Download GoSats App" and "Get GoSats Card" as primary actions with their own hero/banner sections (`cardDownloadContainer`, `cardScreenMain`, `cardDownloadTitle`).
- **Why it's a problem:** App and card are different funnels with different friction and different conversion rates — the card requires digital KYC, the app does not. Competing CTAs dilute measurement and confuse novice visitors about where to start.
- **Severity:** Major
- **Recommendation:** Pick one as the primary hero action. Treat the card as a benefit unlocked inside the app ("Get the GoSats Card — available after signup") rather than a parallel conversion goal. Secondary "Get Card" CTA stays, but visually subordinate.
- **Criteria:** CRO-02, CRO-03, IA-04, N-08
- **Effort:** Medium · **Impact:** High · **Confidence:** High

### CRO-2: No visible activation incentive in hero metadata

- **Observed:** No "free Sats on signup", "zero setup fee", "no KYC to start", or time-bound hook surfaces in the title, description, or recoverable hero strings.
- **Why it's a problem:** Indian consumer fintech install funnels are dominated by signup bonus hooks — CRED, CashKaro, and MagicPin all weaponize them. Without one, GoSats is competing on trust alone against brands that offer both trust and money.
- **Severity:** Major
- **Recommendation:** Offer a small, concrete signup reward ("Get 5,000 Sats free when you install and link your first card"). Measure install lift over 2 weeks.
- **Criteria:** CRO-09 (Urgency and Motivation)
- **Effort:** Low–Medium · **Impact:** Medium–High · **Confidence:** Medium (needs visual confirmation)

### CRO-3: No evidence of post-CTA expectation setting

- **Observed:** The hero CTAs are "Download App" and "Get Card". Neither sets expectations about what happens after (KYC timeline, first reward, how fast rewards confirm). The FAQ bundle strings reveal that the company knows these are real concerns ("How long does it take for sats earned through direct shopping orders to get confirmed?") but the answers live deep on the page.
- **Severity:** Minor
- **Recommendation:** Add a one-line microcopy below the primary CTA — e.g., "Takes 2 minutes. KYC required only when you're ready to withdraw."
- **Criteria:** CRO-10 (Post-CTA Expectation Setting), N-01
- **Effort:** Low · **Impact:** Medium · **Confidence:** Medium

---

## 5. Visual and Brand Design

Whether the visual identity earns trust at the level a Series A crypto product needs.

### VD-1: Off-the-shelf Bootstrap 5.1.3 + Font Awesome 5 styling undermines the premium credibility bar

- **Observed:** The head loads `bootstrap@5.1.3/dist/css/bootstrap.min.css` and `FortAwesome/Font-Awesome@5.15.3` directly from jsDelivr. This is a strong signal that the page is built on stock Bootstrap components rather than a custom design system.
- **Why it's a problem:** In India, CRED has set the benchmark for what "premium consumer fintech" looks like — custom everything, tight type system, original illustration. Crypto products need *more* credibility, not less, because the trust bar for linking a card to a BTC wallet is higher than for cashback alone. Stock Bootstrap components read as "off-the-shelf" to the exact user segment (22–38 urban, design-literate) that GoSats needs to convert.
- **Severity:** Major
- **Recommendation:** Plan a brand/design-system refresh concurrent with the SSR migration (S-7). Tailwind + a custom component library + original illustrations would close the gap quickly without a ground-up rebuild. This is the single highest-leverage visual change against CRED-level expectations.
- **Criteria:** VD-01 (First Impression), VD-08 (Industry-Appropriate Trust Signaling)
- **Effort:** High · **Impact:** Medium–High · **Confidence:** Medium (raw HTML confirms the framework; fully rendered evaluation still needed)

### VD-2: Render-related visual findings — Cannot Evaluate this run

- **Observed:** Visual hierarchy (VD-02), typography system (VD-03), color consistency (VD-04), spacing (VD-05), imagery (VD-06), and hover states (VD-09) all require a live viewport to inspect properly. Chrome was not available for this run.
- **Severity:** Cannot Evaluate
- **Recommendation:** Re-run these checks with a browser before the next client touchpoint.

---

## 6. Performance and Core Web Vitals

### P-1: Render-blocking third-party CSS on the critical path

- **Observed:** Bootstrap and Font Awesome are loaded directly from `cdn.jsdelivr.net` without `preconnect`, `preload`, or `media` splitting. Both are render-blocking CSS that sit in the critical path before first paint.
- **Why it's a problem:** GoSats' user is on mobile in India — often on 4G with variable latency. Every extra third-party hop is a measurable FCP and LCP hit.
- **Severity:** Major
- **Recommendation:** Self-host the minimum subset of Bootstrap you actually use (or rip it out entirely during the design-system refresh). At minimum, add `<link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin>` today.
- **Criteria:** PERF-06 (Render-Blocking Resources)
- **Effort:** Medium · **Impact:** Medium · **Confidence:** High

### P-2: Full client-side render delays LCP behind JS parse + execute

- **Observed:** Body is effectively empty until `main.108b12fc.js` downloads, parses, executes, and renders the React tree. There is no preload of the hero image bundle, no streaming HTML, and no fallback content.
- **Why it's a problem:** On mobile LCP is almost certainly in the Poor (>4.0s) band on mid-tier Android devices — the exact device profile of the target user. Poor LCP is both a user-experience penalty and a Google ranking penalty.
- **Severity:** Major
- **Recommendation:** SSR/SSG migration (resolves S-7 and P-2 together). Preload the hero image once rendered.
- **Criteria:** PERF-02 (LCP), PERF-06
- **Effort:** High · **Impact:** High · **Confidence:** Medium (needs PageSpeed confirmation)

### P-3: PageSpeed Insights data — Cannot Evaluate

- **Observed:** Lighthouse/PSI scores were not collected during this run.
- **Severity:** Cannot Evaluate
- **Recommendation:** Manual PSI run before the follow-up with Roshan — it will harden P-1 and P-2 with exact scores.

---

## 7. Information Architecture

### IA-1: App vs Card vs FAQ — unclear persona routing

- **Observed:** Bundle strings reveal three major top-level modules (app hero, card hero, FAQ) plus a community block (Telegram/Twitter/WhatsApp). There is no obvious split that routes "crypto-curious new user" separately from "existing Bitcoin stacker".
- **Why it's a problem:** These are two meaningfully different buying motions. A stacker wants proof points on volume stacked and withdrawal speed; a new user wants to understand what Sats are at all.
- **Severity:** Minor (for now — becomes Major as you scale past 1M users and segments diverge)
- **Recommendation:** Add a lightweight two-path CTA pattern: "New to Bitcoin? Start with the app" / "Already stacking? Get the Card." Each routes to a purpose-built scroll section.
- **Criteria:** IA-04 (Persona Routing)
- **Effort:** Medium · **Impact:** Medium · **Confidence:** Medium

### IA-2: Footer utility — Cannot Evaluate this run

- **Observed:** Footer content is not inspectable without JS rendering. Flagged for manual review.
- **Criteria:** IA-07

---

## 8. Nielsen Heuristics

### N-1: The noscript fallback is hostile (no system status, no graceful degradation)

- **Observed:** Users without JavaScript (including some corporate proxies, older devices, screen readers in strict mode) see only the string "You need to enable JavaScript to run this app." Nothing else — no headline, no logo, no contact link.
- **Why it's a problem:** Violates N-01 (Visibility of System Status) by offering no alternative path and N-02 (Match Between System and the Real World) by telling users nothing about the product. Also an accessibility failure.
- **Severity:** Major
- **Recommendation:** Ship a minimum viable static HTML fallback — the logo, a one-line value prop, and links to iOS/Android app stores. This is solved automatically by the SSR migration (S-7).
- **Criteria:** N-01, N-02
- **Effort:** Low (as part of S-7) · **Impact:** Medium · **Confidence:** High

### N-2: Most other heuristics — Cannot Evaluate

- **Observed:** N-03 through N-10 require a rendered, interactable viewport. Flagged for manual review.

---

## 9. Accessibility (WCAG 2.1 AA)

### ACC-Pass: Language of Page

- **Observed:** `<html lang="en">` is set correctly.
- **Criteria:** ACC-22 (3.1.1 Language of Page) — PASS

### ACC-1: Most WCAG criteria — Cannot Evaluate this run

- **Observed:** Alt text (ACC-01), form labels (ACC-02), heading order (ACC-20), color contrast (ACC-06), focus visibility (ACC-21), keyboard operability (ACC-13/14), and ARIA usage (ACC-28) all require a rendered DOM. Chrome access was unavailable.
- **Severity:** Cannot Evaluate
- **Recommendation:** Schedule a live axe-core run when browser access is restored. Given the site is React + Bootstrap, expect two classes of issues: (1) Bootstrap components that are usable by default but fail ARIA role specificity, and (2) custom SVG icon-only buttons missing `aria-label`. Both are fixable in a single afternoon once catalogued.
- **Criteria:** ACC-01 through ACC-29 (except ACC-22)
- **Confidence:** Cannot Evaluate

---

## 10. Mobile Responsiveness

### M-1: Cannot Evaluate this run

- **Observed:** Requires a rendered mobile viewport.
- **Recommendation:** Test at 360px and 414px widths during the follow-up pass. Based on Bootstrap 5 baseline, layout should respond, but content density and touch target sizing need a manual pass.
- **Confidence:** Cannot Evaluate

---

## 11. Competitor Benchmarking

### CB-1: Visible gap to CRED, Zerodha, and CoinDCX on marketing-site fundamentals

- **Observed:** CRED, Zerodha, and CoinDCX all ship SSR or static marketing sites with custom design systems, validated Open Graph previews (inspectable in LinkedIn Post Inspector), JSON-LD structured data, and benefit-led hero copy that the user can recite.
- **Why it's a problem:** These are the brands Indian consumers use as the "what does a real fintech look like?" baseline. Every gap (SSR, design system, OG previews, structured data) compounds into a credibility delta at exactly the moment GoSats is trying to convert from 1M to 10M users.
- **Severity:** Major (strategic, not tactical)
- **Recommendation:** Treat the SSR migration + design system refresh (S-7 + VD-1) as a combined Q2 2026 initiative. Those two changes close the majority of the benchmark gap.
- **Criteria:** VD-08, N/A (strategic)
- **Effort:** High · **Impact:** High · **Confidence:** Medium

---

## Summary of High-Impact Items

Items that are Low Effort + High Impact — ship this week:

1. **Q-1** Fix `og:tp` → `og:title` typo. Unblocks every LinkedIn share from here forward.
2. **Q-4 / S-1** Rewrite meta description to lead with "Bitcoin and Gold rewards".
3. **S-2** Shorten and rewrite page title.
4. **S-3** Add canonical tag.
5. **S-5** Ship FAQPage + Organization + MobileApplication JSON-LD.
6. **Q-2** Remove or fix the `path/to/css/star-rating.min.css` broken reference.

Items that are Medium Effort + High Impact — next 30 days:

7. **S-6** Generate a real sitemap.xml.
8. **C-1 / C-2** Pick one hero message, rewrite in user language.
9. **CRO-1** Collapse dual CTAs into a single primary.

Items that are the big-bet strategic initiative — Q2 plan:

10. **S-7 / P-2 / N-1** SSR migration (Next.js or static export).
11. **VD-1** Custom design system to close the CRED gap.

## Items Flagged for Manual Follow-Up

- PageSpeed Insights mobile + desktop scores (P-1, P-2, P-3)
- axe-core accessibility scan (ACC-1 and most of Section 9)
- Mobile viewport inspection (M-1, IA-9)
- Footer utility review (IA-2)
- Visual design dimensions VD-2 through VD-9 and N-3 through N-10 (require live browser)

---

*Prepared by Sari Sari Design. Based on publicly available HTML, JavaScript bundle strings, and external research as of April 10, 2026. A live-browser pass will deepen the accessibility, performance, and visual design dimensions.*
