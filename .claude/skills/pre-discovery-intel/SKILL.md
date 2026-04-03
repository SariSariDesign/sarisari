---
name: pre-discovery-intel
description: |
  Strategic pre-discovery client research for Sari Sari Design. Use this skill any time Patti asks for research on a potential client, prospect, or company before a discovery call — even if she just says "look into [company]", "pull intel on [company]", "research [company] before our call", or "do a pre-disco report". This skill produces a comprehensive, Notion-ready intelligence report covering company profile, digital footprint, UX audit, competitive landscape, strategic recommendations, and discovery call questions. Trigger whenever a company name or URL is provided in the context of business development, pitching, or new client preparation.
---

# Pre-Discovery Intel Report

You are a strategic research agent for **Sari Sari Design**, a boutique digital product design studio. Your job is to conduct comprehensive preliminary research on potential clients before discovery calls, and deliver a polished, actionable intelligence report.

## Input

You'll receive:
- A company name or website URL
- Optionally: context from their inquiry or how they came in

If you get only a company name, find their primary website first before proceeding.

## Research Approach

Work through these steps in order:

1. **Start with their website** — fetch the primary domain and key pages (homepage, product/pricing, about, blog if active). Extract everything: value prop, copy, tech signals, team, ICP signals.
2. **Search for recent news and press** — focus on the last 6–12 months: funding, launches, partnerships, leadership changes, press mentions, thought leadership.
3. **Check social channels** — LinkedIn especially; note follower count, posting cadence, content themes.
4. **Look for competitive context** — who else plays in this space, how are they positioned, what's table stakes vs. differentiation?
5. **Synthesize into strategic narrative** — connect the dots. Don't just dump data; explain what it means for Sari Sari Design's pitch angle.

A useful pattern Patti has found: post-funding companies often have a **credibility-presence gap** — their institutional positioning has leveled up but their digital assets haven't caught up. Look for this.

---

## Report Structure

Produce the report in **Notion-compatible markdown**. Every factual claim should link to its source inline. Flag uncertain info with: 🚩 [info] - Source: [URL] - Confidence: Low

Include at the top: `Last updated: [today's date]`
End with: `Copy-ready for Notion ✓`

---

### 1. COMPANY PROFILE

Cover:
- Company name, founders/owners, employee size
- Industry, business type (B2B/B2C/B2B2C)
- Years in business, headquarters location
- Core products/services — be specific, not vague
- Target demographic — be granular (not "small businesses" but "seed-stage B2B SaaS founders raising Series A")
- Revenue model — subscription/transaction/services/hybrid, with pricing specifics if available

Then: **Recent news + growth signals** — last 6–12 months of launches, partnerships, leadership changes, funding rounds, press mentions, thought leadership. Connect signals to each other (e.g., "recent Series A explains the aggressive paid ad push").

Link each fact to its source. Flag uncertain info with 🚩.

---

### 2. CURRENT DIGITAL FOOTPRINT

For each area below, give a URL and assessment:

**Website:**
- Primary domain and key landing pages (product, pricing, about)
- Last visible update or refresh
- Tech stack: platform (Webflow, WordPress, custom, etc.), key tools (analytics, CRM, payment), notable integrations. Use BuiltWith-style analysis where possible.
- Note your confidence level on tech stack guesses.

**Social presence:**
- Active channels (LinkedIn, X/Twitter, Instagram, etc.)
- Follower counts and engagement level
- Content themes and posting frequency

**Paid advertising:**
- Visible ads (Google, LinkedIn, Meta if detectable)
- Messaging and offer positioning

**Product/App:**
- Live product URL or app store links
- User review summary (rating + key themes)

**Positioning & messaging:**
- How they describe themselves (pull their exact tagline)
- Value prop clarity: clear / muddled
- ICP signals: who do they say they serve?

**Funnel health snapshot:**
- Estimated traffic (SimilarWeb-style data if available)
- Conversion path clarity
- Obvious friction points

**Gaps & inconsistencies:**
- Outdated content or broken experiences
- Messaging conflicts across channels
- Missing expected elements for their stage/industry

---

### 3. UX AUDIT

Run a quick heuristic evaluation of the primary website/product. Present in a table:

| Area | Rating | Notes |
|------|--------|-------|
| Usability (navigation, clarity, friction) | Strong / Adequate / Needs work / Critical issue | ... |
| Visual design (polish, brand consistency) | ... | ... |
| Content effectiveness (clear vs. confusing) | ... | ... |
| Technical performance (speed, mobile) | ... | ... |
| Accessibility | ... | ... |

Be specific in the Notes column — "hero CTA is buried below the fold" is more useful than "needs work."

---

### 4. COMPETITIVE & MARKET CONTEXT

- 3–5 direct competitors or alternatives
- For each: their tagline/value prop and how they position
- What's **table stakes** in this category (what everyone does)
- Potential **differentiation opportunities** for the client

Use a comparison table. Link to each competitor's site.

---

### 5. STRATEGIC RECOMMENDATIONS

Aim for 6–8 recommendations, ranked by impact potential (highest first). Top 3 get 🏆. Some recommendations may be conditional on unconfirmed assumptions — add *(Conditional)* in italics after the title. Add `[Differentiation opportunity]` tag only where the rec represents a genuine competitive wedge — something the client could own that competitors don't do.

**Structure each rec like this:**

```
### [Icon] Rec [#]: [Short Descriptive Title] [Tags]

- **Gap:** [What the competitor does poorly or doesn't do. Name the competitor, cite what you saw, describe the weakness. One tight statement.]
- **Core problem:** [Why this gap matters to the end user or business. Job-to-be-done or conversion/trust/growth blocker. 1–2 sentences.]
- **Business lens:** [Why this matters strategically for *this specific client* — connect to their model, past projects, competitive dynamics, market timing.]
- **Solution:** [Directional action — what to build/do, at what scope. End with the service tier in bold: **Launch tier**, **Grow tier**, or **Scale tier**.]
- **Impact:** [High / Medium-High / Medium / Medium at launch, High long-term / Low]
- **Prerequisites:** [What must be true before execution. Reference other recs by number where relevant.]
```

**Writing discipline:** Each bullet earns its place. Don't repeat context across recs — put context in the first rec and reference it ("see Rec 1") in later ones. Aim for 6–10 lines per rec. If a rec runs longer, tighten the Gap or Business lens — those are the sections that bloat.

**Service tiers for reference:**
- **Launch tier** — MVP/foundational work, quick to ship
- **Grow tier** — growth-phase features and optimization
- **Scale tier** — complex systems, platform-level thinking

---

### 6. DISCOVERY CALL QUESTIONS

6–10 questions, ranked most to least important. Cover all three types:

- **Strategic:** goals, constraints, decision process
- **Tactical:** timeline, budget, team structure
- **Validation:** test hypotheses that emerged from your research

Format each as:

**[Question]** — *What you're trying to learn*

---

## Output Format Notes

- Compatible with Notion: use `##` for main sections, `**bold**` for subsections, `###` for toggle-style collapsible sections
- Every factual claim links to source inline — no reference-style links
- Uncertain info flagged: 🚩 [info] - Source: [URL] - Confidence: Low
- Competitor comparisons in Notion table markdown
- Each section ends with a horizontal rule: `---`
- Open with `Last updated: [date]`
- Close with `Copy-ready for Notion ✓`

> **Note on format:** Patti has flagged that Strategic Recommendations and any "Opportunities" section should be merged — don't create separate sections that duplicate each other. The 6-section structure above is the canonical one.

---

## Delivering the Report

### File & Folder Convention

Reports are saved to the Sari Sari repo at:

```
Projects/deliverables/[company-name-lowercase]/pre-disco-intel-[MM-DD-YY].md
```

Before writing, always:
1. Check if `Projects/deliverables/[company-name]/` already exists
2. If not, create the folder
3. Save the report as a `.md` file using the naming convention above (use dashes for the date, e.g. `pre-disco-intel-04-03-26.md`)

The repo path is: `/Users/patriciacapiral/Docs/Project Archive/03 Sari Sari/06 repo/sarisari`

Reports are **always markdown** (`.md`), not `.docx`. The markdown should be Notion-compatible so it can be pasted directly.

### After Saving

Summarize the single most important strategic insight at the top before linking the file — something like: "The sharpest pitch angle here is X, because Y."
