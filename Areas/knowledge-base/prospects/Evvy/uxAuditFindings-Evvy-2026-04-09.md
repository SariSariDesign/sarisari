# UX Audit Report — Evvy

**URL:** https://evvy.com
**Audit Date:** 2026-04-09

## Business Model Profile

- **Industry:** Women's health / femtech / consumer diagnostics
- **Company Stage:** Growth (Labcorp, General Catalyst backed)
- **Core Product:** At-home vaginal microbiome test (metagenomic sequencing, 700+ species) + clinical oversight and tailored treatment
- **Objective:** Win consumer diagnostic purchases and build recurring revenue through testing + treatment
- **Primary Conversion Goal:** Product purchase (test kit); secondary: symptom quiz lead capture
- **Core Persona:** Women 25-55 dealing with recurring BV, yeast infections, UTIs, fertility, or menopause-related symptoms who are dissatisfied with standard OB-GYN care
- **Customer Type:** D2C (B2C consumer ecommerce + telehealth)
- **Business Model:** Transactional product + clinical service
- **GTM:** D2C ecommerce, paid social, SEO-driven content
- **Competitors:** Wisp, Nurx, Felix, Stix, Winx Health, traditional OB-GYN

### Evaluation Priorities
1. CRO — D2C ecommerce; purchase funnel is the whole game
2. Trust Signals — medical diagnostic = very high-trust; CLIA/CAP credibility must be visible
3. Content Hierarchy & Copywriting — sensitive category requires tone balance
4. IA — 6 condition areas (BV/fertility/menopause/UTI/probiotic/learn)
5. Visual Design
6. Accessibility
7. SEO & Performance

### Evaluation Lens
Evvy sells into women who have tried and failed to get help from their existing providers. The audience is emotionally burnt out on the healthcare system. The site's job is to feel like a credible, expert, empathetic alternative — not like another supplement brand.

### Why This Matters
Consumer diagnostics is a trust-first category: a woman ordering a vaginal microbiome test is entrusting Evvy with intimate biological data AND relying on the result to make treatment decisions. Any ambiguity about CLIA certification, provider oversight, or data privacy will hard-stop the purchase. On the other hand, Evvy has genuinely strong credibility signals (75K users, CLIA/CAP, Labcorp backing, Vogue/TechCrunch press) — the audit asks whether those are being used effectively.

---

## Methodology

Audit based on WebFetch of evvy.com homepage. 8 findings documented across 5 dimensions. Top 5 selected for published report.

---

# Friction or Pain Points

## 1. Content Hierarchy & Copywriting

### F1.1 — "Know what's up down there" is playful but doesn't carry the clinical weight
- **Observation:** Hero: "Know what's up down there." Subhead: "Get innovative & effective vaginal healthcare, powered by our state-of-the-art vaginal microbiome test."
- **Why it's a problem:** COPY-03 (Headline Specificity) and COPY-02 (Benefit-led vs Feature-led) — the headline is tonally warm and destigmatizing (good), but carries zero specificity about what the test actually does. The subhead uses "innovative & effective" which are flag-words for unproven wellness brands — exactly the adjacency Evvy needs to avoid. A woman recommended to Evvy by a friend comes to the site already curious; the headline job is to convert curiosity to belief, not just warmth.
- **Severity:** Major
- **Recommendation:** Keep the warm tone but add specificity. Direction: "Finally know what's causing your symptoms. A CLIA-certified vaginal microbiome test that screens 700+ species." Lead with the outcome AND a credibility anchor in the first 15 words.
- **Effort:** Low | **Impact:** High

### F1.2 — "75,000+ users" and CLIA/CAP/CLEP certifications aren't hero-anchored
- **Observation:** The page eventually shows "Trusted by 75,000+ users" and discloses CLIA, CAP, and CLEP certification in the footer. These are the two strongest proof points Evvy has — 75K customers is a dominant category number, and CLIA/CAP is the difference between "legitimate diagnostic" and "wellness supplement."
- **Why it's a problem:** COPY-04 (Information Hierarchy) and CRO-06 (Trust Signal Placement) — in a trust-gated category, proof should lead. Burying CLIA/CAP in the footer and the 75K number below the fold means a skeptical visitor makes her decision before seeing the reasons to believe.
- **Severity:** Major
- **Recommendation:** Add a proof strip immediately below the hero: "75,000+ users · CLIA, CAP & CLEP certified · Backed by Labcorp · As seen in Vogue, TechCrunch." Let the credibility do the convincing the adjectives can't.
- **Effort:** Low | **Impact:** High

## 2. Trust Signals & Credibility

### F2.1 — Medical disclaimers are good legal practice but are buried alongside purchase
- **Observation:** Footer: "Evvy is not intended to replace the advice of your doctor..." Legal-required disclaimer, fine. But the disclaimer lives only in the footer, and there's no positive framing of clinical oversight ("your results are reviewed by licensed providers in all 50 states") on the homepage.
- **Why it's a problem:** CRO-06 (Trust Signal Placement) — disclaimers protect Evvy legally but do nothing to convert. What converts is affirmative framing of the clinical rigor: the people reviewing results are real licensed clinicians, not an algorithm.
- **Severity:** Minor
- **Recommendation:** Add an affirmative clinical-oversight block above the fold or directly below: "Every test is reviewed by a licensed provider. Treatment plans are written by clinicians, not algorithms." Then keep the legal disclaimer in the footer where it belongs.
- **Effort:** Low | **Impact:** Medium

### F2.2 — Press and investor logos are strong but their placement isn't described
- **Observation:** Vogue, TechCrunch, Fast Company, Inc Magazine press; Labcorp, General Catalyst, Left Lane, Box Group investor logos. These are above-average credibility anchors — especially Labcorp (literal diagnostic infrastructure legitimacy) and Vogue (consumer trust legitimacy).
- **Why it's a problem:** CRO-07 (Social Proof Depth) — if these aren't positioned near the purchase decision (hero, product card, checkout), they're not doing conversion work.
- **Severity:** Minor
- **Recommendation:** Place the press logos in a strip below the hero. Place "Labcorp-backed" in the hero proof line. Keep investor logos lower on the page.
- **Effort:** Low | **Impact:** Medium

## 3. Conversion Rate Optimization

### F3.1 — "Shop all" is a weak primary CTA for a condition-driven buyer
- **Observation:** Primary CTA is "Shop all." The buyer arriving at evvy.com is almost always condition-driven — "I have recurring BV," "I'm going through menopause" — not shopping for a category.
- **Why it's a problem:** CRO-02 (CTA Specificity) — "Shop all" assumes the visitor knows what she wants. Condition-driven buyers want triage: "which test/treatment do I need?" A generic shop CTA forces her into a catalog page where she self-sorts, and many drop off during that sorting.
- **Severity:** Major
- **Recommendation:** Lead with symptom-based primary CTA: "Find the right test for your symptoms" → routes to the quiz. Keep "Shop all" as the secondary path for returning customers. The quiz is already built — it should be the hero conversion path, not a secondary option.
- **Effort:** Low | **Impact:** High

### F3.2 — Symptom quiz is a better lead magnet than it's being used as
- **Observation:** "Take the Quiz" exists as a secondary CTA. The quiz is exactly the mid-funnel capture a D2C medical brand needs — it qualifies the buyer, segments by condition, and routes to the right product.
- **Why it's a problem:** CRO-04 (Engagement Path Variety) — the quiz is currently a secondary option, not the primary engagement mechanism. Its diagnostic framing is emotionally lower-stakes than "buy a test," which means higher first-click conversion for cold visitors.
- **Severity:** Major
- **Recommendation:** Elevate the quiz to primary CTA for cold traffic. Direction: "Not sure where to start? Take the 90-second symptom quiz." Route quiz completers to condition-specific landing pages, not the generic shop.
- **Effort:** Low | **Impact:** High

## 4. Information Architecture

### F4.1 — 6 condition areas in flat nav without clear primary path
- **Observation:** Nav lists Vaginal Health, Fertility, Menopause, UTIs, Probiotics as parallel items. These are very different life-stage contexts with very different buyers.
- **Why it's a problem:** IA-01 (Navigation Clarity) — flat exposure of 5 conditions is fine for SEO but creates cognitive load for a visitor who knows her symptom but not how Evvy organizes it.
- **Severity:** Minor
- **Recommendation:** Group by life stage: "By stage" (fertility, menopause) vs "By symptom" (BV, UTIs, yeast). Route the symptom-quiz output into the same grouping.
- **Effort:** Low | **Impact:** Medium

## 5. Visual Design
### F5.1 — (Not evaluated — requires browser-level review.)

---

*8 findings documented. Top 5 selected for published report.*
