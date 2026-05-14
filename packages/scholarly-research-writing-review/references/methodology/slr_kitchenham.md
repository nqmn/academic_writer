# Systematic Review Methodology Layer

Adapted and operationalised from `C:\Users\Intel\Desktop\claude-skill-for-researchers\slr-kitchenham.md`.

## Scope

Use this module when the user asks for:

- a systematic literature review
- a systematic mapping study
- a tertiary study
- a PRISMA-aligned review
- a Kitchenham-guided evidence synthesis
- a review protocol, screening framework, or quality assessment scheme

This is a methodology layer, not a prose-style layer. It governs review design, evidence handling, and reporting discipline.

## Local source policy

For SLR, SMS, tertiary-study, PRISMA, SEGRESS, or Kitchenham-related tasks, use the local text sources in this repository before considering any web lookup.

Load these first:

- `methodology/source_manifest.yml`
- `methodology/source_notes/kitchenham_guidelines_core.md`
- `methodology/source_notes/prisma_2020_core.md`
- `methodology/source_notes/segress_core.md`

Load these when more detail is needed:

- `methodology/source_notes/segress_supplement.md`
- `methodology/source_notes/paul_framework_reviews_2023.md`
- `methodology/source_notes/kitchenham_process_review_2013.md`
- `methodology/source_notes/kitchenham_preliminary_2002.md`

Treat these files as distilled notes derived from the user's local PDFs. They are the default offline methodology references for this repository.

If the user asks for an impactful, framework-based, conceptual, or theory-building review, also load `methodology/source_notes/paul_framework_reviews_2023.md`.

## Review-Type Decision Rule

### Use `SLR` when:

- the user has focused research questions
- evidence comparison matters
- quality assessment is required
- the goal is synthesis rather than simple cataloguing

### Use `SMS` when:

- the topic is broad or emerging
- the user needs categorisation, trend mapping, or landscape analysis
- the main output is evidence distribution rather than detailed effectiveness claims

### Use `Tertiary Study` when:

- the unit of analysis is existing SLRs, SMSs, or other secondary studies
- the user needs review-of-reviews evidence

If the request is ambiguous, infer the broadest defensible review type and state the assumption.

## Mandatory Phases

### Phase 1: Planning

The agent must define:

1. why the review is needed
2. what questions will be answered
3. which review type is appropriate
4. how studies will be found, selected, and assessed
5. what synthesis method will be used

### Phase 2: Conducting

The agent must execute or propose:

1. search strategy
2. study screening
3. eligibility application
4. quality assessment
5. data extraction
6. synthesis logic
7. bias and validity checks

### Phase 3: Reporting

The agent must produce:

1. transparent methods reporting
2. reproducible selection logic
3. explicit threats to validity
4. evidence-based conclusions
5. clear linkage between evidence and claimed gap

## Operational Workflow

### Step 1: Clarify review objective

Extract or define:

- domain
- problem focus
- intended contribution
- target review type
- desired output format

If missing, ask only the minimum necessary question.

### Step 2: Formulate research questions

Research questions should be:

- explicit
- answerable from literature
- aligned with extraction fields
- aligned with synthesis type

Typical categories:

- effectiveness
- comparative
- exploratory
- trend

### Step 3: Build the protocol

The protocol should contain:

1. background and motivation
2. review objective
3. primary and secondary research questions
4. inclusion criteria
5. exclusion criteria
6. databases and search sources
7. search strings and date ranges
8. screening stages
9. disagreement-resolution rule
10. quality assessment criteria
11. extraction fields
12. synthesis method
13. threats-to-validity plan

If the review is intended to build theory or produce a high-impact conceptual synthesis, also specify:

14. organising review framework
15. logic for framework selection
16. how the framework will structure synthesis and future research directions

### Step 4: Design the search

Prefer:

- IEEE Xplore
- ACM Digital Library
- Scopus
- Web of Science
- ScienceDirect
- SpringerLink
- Wiley

Searches should optimise:

- coverage
- precision
- transparency
- repeatability

### Step 5: Run screening

Default sequence:

1. deduplication
2. title screening
3. abstract screening
4. full-text screening

For each exclusion stage, the reason should be recorded.

### Step 6: Assess quality

Minimum quality dimensions:

- research design clarity
- data adequacy
- analytical appropriateness
- reproducibility
- threats to validity reporting

If the user does not provide a scoring rubric, use a simple ordinal judgement:

- high
- moderate
- low

with a one-sentence justification per study.

### Step 7: Extract data

Minimum fields:

- authors
- year
- venue
- country when relevant
- research method
- dataset or evidence source
- methods or techniques
- features or variables when relevant
- evaluation metrics
- principal findings
- limitations
- threats to validity

### Step 8: Synthesize

Select the synthesis mode that matches the evidence:

- narrative synthesis for heterogeneous studies
- quantitative synthesis for comparable effect data
- qualitative synthesis for thematic or interpretive evidence
- mixed-method synthesis when both types matter

The synthesis must distinguish:

- convergence
- divergence
- evolution over time
- gaps

### Step 9: Report

The final report should include:

1. review type
2. review questions
3. protocol summary
4. information sources
5. search strategy
6. study selection summary
7. quality assessment summary
8. extraction summary
9. synthesis results
10. threats to validity
11. implications
12. conclusion

## Reporting Constraints

### PRISMA / SEGRESS alignment

When the task is a formal SLR/SMS/tertiary review, the agent should aim to provide:

- a selection-flow summary
- explicit eligibility criteria
- database and search-string transparency
- a study-characteristics table
- a quality-assessment table
- a synthesis matrix where appropriate

Use the local source notes for this alignment:

- `source_notes/prisma_2020_core.md` for checklist and reporting-completeness logic
- `source_notes/segress_core.md` for software-engineering reporting adaptation
- `source_notes/segress_supplement.md` for item-level elaboration and examples

### Threats to validity categories

Always consider:

- search bias
- selection bias
- extraction bias
- synthesis bias
- publication bias

## Output Templates

### If the user asks for a protocol

Return:

- review objective
- research questions
- inclusion criteria
- exclusion criteria
- sources and search strings
- screening procedure
- quality assessment plan
- extraction plan
- synthesis plan

### If the user asks for a review write-up

Return:

- methods section for the review
- results of selection
- synthesis narrative
- threats to validity
- gap statement

### If the user asks for a review matrix

Return columns such as:

- study
- year
- method
- dataset
- metrics
- findings
- limitations
- quality judgement

## AI-Assistance Guardrails

AI may help with:

- keyword generation
- clustering themes
- extracting metadata
- structuring synthesis

Human validation is still required for:

- inclusion decisions
- quality judgement
- final evidence claims
- gap positioning

## Common Failure Modes

- vague research questions
- overly narrow search strings
- undocumented exclusions
- weak or absent quality assessment
- unsupported cross-study generalisation
- treating a narrative overview as if it were a systematic review

## Router Rule

When the user says `SLR`, `systematic review`, `mapping study`, `Kitchenham`, `SEGRESS`, or `PRISMA`, load this module in addition to any writing or synthesis workflow.
