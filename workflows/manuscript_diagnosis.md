# Manuscript Diagnosis Workflow

## Purpose

Use this workflow when the user asks to:

- diagnose a draft
- assess manuscript quality
- identify weaknesses before submission
- improve a paper for journal submission
- check whether a draft is strong enough for a Q1 target

This workflow is for diagnosis and upgrade planning, not only rewriting.

## Inputs

- a manuscript, section draft, summary, or review comments
- optional journal target
- optional quality target such as Q1 WoS

## Context Transparency Rule

Before beginning any review, state clearly:

- what the user has provided (full manuscript, abstract only, title only, etc.)
- what sections are unavailable and therefore cannot be evaluated
- how this affects the confidence of the verdict

Use this opening block:

```
You provided only [X]. I can perform an initial Round [N] Q1 WoS-style editorial review
based on the [X] only, but the verdict confidence is limited because [list unavailable
sections] are unavailable.
```

Never suppress this caveat. If the full manuscript is provided, confirm that all sections
have been received and that the review confidence is high.

## Review Cycle Tracking

Each submission of a draft or revised draft initiates a new round. Label every review:

- Round 1 Review — first submission
- Round 2 Review — after first revision
- Round 3 Review — after second revision

Include this line before the review body:

```
Before proceeding to future review cycles: This is treated as a [Round N] review process.
```

## Output Format

All manuscript reviews must follow this structure exactly.

---

### Header Block

```
Manuscript

Title: [full title as submitted]

Before proceeding to future review cycles: This is treated as a [Round N] review process.

[Round N] Review (Q1 WoS Editor Perspective)
```

---

### Section 1: Critical Review of Contribution and Novelty

Label: `1️⃣ Critical Review of Contribution & Novelty`

Cover:

**Claimed novelty** — list the techniques or approaches the manuscript claims as its contribution.

**Major concern** — state whether the novelty is method-driven, integration-driven, or framework-driven.

**Major questions likely from Q1 reviewers** — list the key questions a reviewer would raise about what is genuinely new.

**Field context** — note what comparable recent studies already do, to calibrate whether the claim stands.

**Current novelty level** — state as one of: Strong, Moderate, Moderate to weak, Weak.

**Research gap weakness** — quote or paraphrase the gap as stated, then explain why it is outdated, unsupported, or too narrow. Suggest stronger gap alternatives specific to the field.

---

### Section 2: Methodology and Technical Rigor

Label: `2️⃣ Methodology & Technical Rigor`

For each methodological component claimed, raise the specific unanswered questions a reviewer would ask. Label each component clearly (A, B, C, ...).

For each component, state:

- what is claimed
- what is missing or ambiguous
- the specific reviewer concern

Also note any missing experimental design elements:

- dataset source
- sample size and subjects
- train/test split or cross-validation
- statistical significance testing

---

### Section 3: Strengths and Contributions

Label: `3️⃣ Strengths & Contributions`

List genuine positive aspects of the work. Label each as Strength 1, Strength 2, etc. Be specific — do not use generic praise. State what the strength adds to the field.

---

### Section 4: Weaknesses and Potential Rejection Factors

Label: `4️⃣ Weaknesses & Potential Rejection Factors`

Label each weakness as Major weakness 1, Major weakness 2, etc. For each:

- state the weakness precisely
- assign a risk level (Very High, High, Moderate, Low)
- explain what is missing or incorrect

For performance claims, always note:

- which metrics are reported
- what baseline or comparator is absent
- whether statistical significance is established

---

### Section 5: Clarity, Structure, and Writing Style

Label: `5️⃣ Clarity, Structure & Writing Style`

Cover:

**Language issues** — list specific sentence-level problems in a table with columns:

| Current | Suggested |
|---|---|
| [original phrase] | [corrected phrase] |

**Structural issue** — describe the abstract or section structure and compare it to the required Background → Gap → Objective → Methodology → Results → Contribution order.

---

### Section 6: Specific Suggestions for Enhancement

Label: `6️⃣ Specific Suggestions for Enhancement`

Label each recommendation as Recommendation 1, Recommendation 2, etc. Each should include:

- what to do
- why it matters for Q1 acceptance
- where applicable: a specific example (ablation table, metric list, statistical test name)

Always include:

- clarification of the core model or framework identity
- ablation study recommendation
- baseline comparison recommendation
- statistical validation recommendation
- computational complexity analysis recommendation
- XAI quantitative evaluation recommendation (if XAI is used)

---

### Suggested Rewritten Abstract

Label: `Suggested rewritten abstract (higher Q1 quality)`

Introduce with:

```
The current abstract requires substantial revision. A stronger structure would be:
```

Then provide a fully rewritten abstract following the Background-Gap-Objective-Method-Results-Contribution-Implication structure. The rewrite should:

- remove encoding artifacts
- name the gap with specificity
- describe the architecture as a pipeline, not a list
- state results against a comparator
- close with a contribution and implication sentence

---

### Final Verdict

Label: `Final Verdict`

Report in this order:

**Decision:** one of:
- Accept with Minor Revision
- Accept with Major Revision
- Reject and Resubmit
- Reject

**Estimated correction requirement:** percentage range (e.g. 40–50%)

**Key areas requiring revision:**

| Section | Major weakness | Required action |
|---|---|---|
| [section name] | [specific weakness] | [actionable repair] |

Close with one sentence summarising the overall assessment and the condition for acceptance consideration.

---

## Severity Levels

Use consistently throughout the review:

- critical — likely rejection risk if unresolved
- major — should be resolved before submission
- moderate — advisable to address
- minor — optional improvement

## Workflow

### Step 1: Identify the manuscript state

Classify the input as:

- idea-stage
- rough draft
- developed draft
- submission-stage draft
- revision-stage draft

### Step 2: Diagnose weaknesses

Apply the Busse and August pitfall checklist across all available sections:

**Introduction pitfalls:**
- Written generically, not to the target journal's specific readership
- Claims made without adequate supporting citations
- Research aim too vague to allow a reader to imagine the analysis

**Methods pitfalls:**
- Methods described for only one aim, or only part of an aim
- Methodological choices not justified

**Results pitfalls:**
- Text focuses on statistical tests rather than associations between variables
- Causal language used without a design that supports causal inference
- Direction of association not stated explicitly
- Non-significant findings omitted
- Tables and figures lack complete standalone information

**Discussion pitfalls:**
- Detailed results values repeated verbatim rather than interpreted
- New results introduced in the discussion
- Limitation implications not described
- Future research statements are generic

### Step 3: Map weaknesses to repairs

For each issue, specify:

- what is wrong
- why it matters
- which section it affects
- what kind of revision is needed

### Step 4: Apply Q1 Readiness Scorecard

Load and apply `standards/q1_wos_readiness.md`. Report which criteria are strong, which are
weak, and which are absent. State the overall readiness band:

- 10 to 12 strong — strong Q1 potential
- 7 to 9 strong — likely major revision territory
- below 7 strong — high rejection risk

## Interaction with Other Modules

When reviewing against a high publication bar, also load:

- `standards/q1_wos_readiness.md`
- `standards/self_review_protocol.md`

When the user wants revision after diagnosis, pair with relevant phrase modules.

## Router Rule

Load this workflow when the user says:

- review my draft
- diagnose this manuscript
- assess this paper for submission
- tell me why this paper feels weak
- is this Q1-ready
- review this (with a manuscript or abstract attached)
