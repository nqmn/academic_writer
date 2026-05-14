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

## Diagnostic Dimensions

Assess the draft across:

- title precision
- abstract completeness
- gap clarity
- novelty strength
- literature-review quality
- theoretical foundation
- methodological rigor
- analytical depth
- discussion quality
- contribution clarity
- international relevance where appropriate
- reference quality
- language quality
- ethics and publication-readiness signals

## Severity Levels

Use:

- critical
- major
- moderate
- minor

A `critical` issue means likely rejection risk.

## Workflow

### Step 1: Identify the manuscript state

Classify the input as:

- idea-stage
- rough draft
- developed draft
- submission-stage draft
- revision-stage draft

### Step 2: Diagnose weaknesses

Identify whether the draft suffers from:

- weak novelty
- unsupported gap
- descriptive literature review
- weak theory
- under-justified methods
- shallow results interpretation
- generic implications
- weak conclusion
- poor English or awkward prose

### Step 3: Map weaknesses to repairs

For each issue, specify:

- what is wrong
- why it matters
- which section it affects
- what kind of revision is needed

### Step 4: Produce an upgrade plan

Return either:

- a prioritized revision plan
- a section-by-section diagnosis
- a Q1 readiness assessment

## Output Shapes

### Diagnostic report

Return:

- overall assessment
- major risks
- section-level findings
- recommended next actions

### Q1 readiness review

Return:

- strengths
- weaknesses
- likely rejection risks
- upgrade priorities

### Revision blueprint

Return:

- section
- issue
- severity
- recommended repair

## Interaction with Other Modules

When the user wants diagnosis against a high publication bar, also load:

- `standards/q1_wos_readiness.md`
- `standards/self_review_protocol.md`

When the user wants revision after diagnosis, pair this with:

- phrase modules relevant to the weak sections

## Router Rule

Load this workflow when the user says:

- review my draft
- diagnose this manuscript
- assess this paper for submission
- tell me why this paper feels weak
- is this Q1-ready
