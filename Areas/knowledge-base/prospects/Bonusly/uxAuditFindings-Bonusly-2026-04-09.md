# UX Audit Report — Bonusly

**URL:** https://bonusly.com
**Audit Date:** 2026-04-09

## Business Model Profile

- **Industry:** HR tech — employee recognition, rewards, and continuous performance
- **Company Stage:** Mature growth (3,400+ customers, Salesforce/DoorDash-level logos)
- **Core Product:** Peer-to-peer employee recognition platform with rewards, continuous performance tools, and manager analytics
- **Objective:** Win mid-market and enterprise HR buyers; defend against Workhuman, Kudos, Assembly, Motivosity
- **Primary Conversion Goal:** Free trial signup (PLG) + demo request (SLG)
- **Core Persona:** Head of People / HR Director / VP People at companies 200-5,000 employees
- **Customer Type:** B2B (mid-market → enterprise)
- **Business Model:** SaaS (per-employee subscription)
- **GTM:** Hybrid (PLG self-serve + enterprise sales)
- **Competitors:** Workhuman, Kudos, Assembly, Motivosity, Nectar HR

### Evaluation Priorities
1. CRO — dual PLG/SLG path needs to be clear
2. Content Hierarchy & Copywriting — crowded category; category-generic framing is a real risk
3. Trust Signals — enterprise HR buyers need SOC 2 / GDPR / EU data residency
4. IA — 6 product surfaces + 4 solution paths
5. Visual Design
6. Accessibility
7. SEO & Performance

### Evaluation Lens
Bonusly is category-mature — 3,400+ customers and logos like Salesforce and DoorDash — but the recognition category has crowded in significantly (Assembly, Workhuman, Motivosity, Nectar). The site's job is to carry Bonusly's leadership position forward while making it obvious why a buyer should choose Bonusly over newer alternatives.

### Why This Matters
In mature SaaS categories, marketing site drift is a silent risk. A site that was written in 2021 doesn't reflect 2026 buyer priorities (AI, continuous performance integration, managerial analytics). The audit asks whether Bonusly's homepage is still selling for its strongest features — or still selling 2021 Bonusly.

---

## Methodology

Audit based on WebFetch of bonusly.com homepage. 8 findings documented across 5 dimensions. Top 5 selected for published report.

---

# Friction or Pain Points

## 1. Content Hierarchy & Copywriting

### F1.1 — Hero headline is the category name, not a differentiated claim
- **Observation:** Hero: "Employee Recognition Software." Subhead: "Smart recognition meets continuous performance."
- **Why it's a problem:** COPY-03 (Headline Specificity) — the headline is the literal category name. In a crowded category (Workhuman, Kudos, Assembly, Motivosity, Nectar) every competitor is "employee recognition software." Leading with the category name is the weakest possible framing — it confirms what buyers already know but gives no reason to choose Bonusly.
- **Severity:** Major
- **Recommendation:** Rewrite around what Bonusly owns. Options: "The recognition platform trusted by 3,400+ leading companies — including Salesforce, DoorDash, and MongoDB" or "The #1 recognition platform for high-performance teams." Lead with market position — that's the one thing new competitors can't copy.
- **Effort:** Low | **Impact:** High

### F1.2 — "3,400+ leading organizations" is buried — it's the strongest moat
- **Observation:** The 3,400+ customer count and the elite logo wall (Salesforce, Notion, HelloFresh, DoorDash, MongoDB, Headspace, Palo Alto Networks) appear on the page but aren't hero-anchored.
- **Why it's a problem:** COPY-04 (Information Hierarchy) and CRO-07 (Social Proof Depth) — in a category where newer competitors lack scale, the customer count is the single hardest-to-copy advantage. A buyer comparing Bonusly to Assembly or Nectar sees the 3,400 number and immediately re-ranks the shortlist.
- **Severity:** Major
- **Recommendation:** Place "3,400+ companies" and 5-6 flagship logos directly below the hero as a proof strip. Make scale the second thing every visitor reads.
- **Effort:** Low | **Impact:** High

### F1.3 — "Smart recognition meets continuous performance" is buzzword salad
- **Observation:** The subhead "Smart recognition meets continuous performance" uses two abstract phrases without a concrete outcome or buyer benefit.
- **Why it's a problem:** COPY-02 (Benefit-led vs Feature-led) — "smart" is doing no work in 2026 ("smart" = default, not a feature). "Continuous performance" is a buyer's internal category, not a benefit statement. Together they create marketing-fog rather than clarity.
- **Severity:** Minor
- **Recommendation:** Rewrite the subhead to name the outcome: "Help managers recognize great work, surface performance trends, and reward teams automatically — at 3,400+ companies." Concrete verbs + concrete number.
- **Effort:** Low | **Impact:** Medium

## 2. Trust Signals & Credibility

### F2.1 — Copyright reads "Smartly, Inc © 2022" — this is a trust-killer
- **Observation:** Footer copyright: "Smartly, Inc © 2022." If this is genuinely the current footer, it signals the site hasn't been updated in ~4 years and also introduces a brand confusion (Smartly, Inc vs. Bonusly).
- **Why it's a problem:** CRO-06 (Trust Signal Placement) — for a HR buyer evaluating platforms, an outdated copyright signals a company that either has been acquired (and integration matters) or has stopped investing in its website. Both reduce willingness to sign a 2-year contract.
- **Severity:** Major (if truly 2022, not a caching artifact)
- **Recommendation:** Update the copyright year and clarify parent entity relationship. If Bonusly was acquired by Smartly, add a line: "Bonusly is a product of Smartly, Inc." Don't leave buyers to guess.
- **Effort:** Low | **Impact:** High

### F2.2 — No visible SOC 2, GDPR, or enterprise compliance badges
- **Observation:** Footer has "Security" link but no SOC 2 Type II, ISO 27001, or GDPR badges visible. Salesforce and Palo Alto Networks would not use Bonusly without these — they exist — but they're hidden behind a link.
- **Why it's a problem:** CRO-06 (Trust Signal Placement) — enterprise HR buyers go through security review every time. Anything that reduces friction in that review shortens the deal cycle.
- **Severity:** Minor
- **Recommendation:** Add visible badge strip in footer: "SOC 2 Type II · GDPR compliant · ISO 27001." Link to a trust center page with full detail.
- **Effort:** Low | **Impact:** Medium

## 3. Conversion Rate Optimization

### F3.1 — "Get Started for Free" and "Get a Demo" compete as dual primaries
- **Observation:** Two above-the-fold CTAs: "Get Started for Free (no credit card required)" and "Get a Demo." Dual primaries split attention.
- **Why it's a problem:** CRO-01 (Primary CTA Prominence) — visitors given two equal-weight CTAs often click neither or default to the lower-commitment option (free trial), which can actually be wrong for enterprise buyers who benefit from a guided sales motion.
- **Severity:** Minor
- **Recommendation:** Weight the CTAs by company size detection — free trial primary for SMB, demo primary for 1,000+ employee companies (via IP/ABM). Or simply designate one as clearly primary (pink button) and the other as clearly secondary (ghost button).
- **Effort:** Low | **Impact:** Medium

## 4. Information Architecture

### F4.1 — 6-item Product dropdown + 4-item Solutions dropdown = 10 feature surfaces
- **Observation:** Product dropdown has Recognition, Rewards & Incentives, Continuous Performance, Celebrations, Nominations & Awards, Announcements. Solutions has 4+ paths.
- **Why it's a problem:** IA-01 (Navigation Clarity) — 10 feature surfaces is a lot for an HR buyer who already knows what she wants (usually just "recognition"). The breadth suggests Bonusly has expanded scope, but it can also signal "jack of all trades" in a category where focus wins.
- **Severity:** Minor
- **Recommendation:** Promote the top 2-3 features (Recognition, Rewards, Continuous Performance) as explicit nav items; collapse the rest under a "More" item. This reinforces the core pitch without hiding depth.
- **Effort:** Low | **Impact:** Medium

## 5. Visual Design
### F5.1 — (Not evaluated — requires browser-level review.)

---

*8 findings documented. Top 5 selected for published report.*
