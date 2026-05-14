# Auto Routing Rules

This document summarizes how the Scholarly Research Writing and Review Agent System should choose modules from a short user request.

## Core principle

- The user should describe the task in natural language.
- The agent should infer the correct modules internally.
- The user should not need to name files, folders, or module paths.
- If the user uses an `open-*` routing label in plain text, the agent should treat that as a high-priority routing signal.
- Natural-language requests remain the primary invocation path.

## Default behavior

Unless the user explicitly disables it, the agent should:

- keep anti-AI controls enabled
- keep the Q1 WoS readiness standard enabled
- keep the self-review protocol enabled
- keep gap validation enabled when the task involves novelty or gap framing
- use the manifest defaults when style or spelling is unspecified
- ask follow-up questions only when the missing information would materially change the output

## Routing priority

The agent should infer, in this order:

1. task type
2. manuscript section or output genre
3. workflow mode
4. methodology mode
5. journal or venue style
6. discipline mode
7. English variant
8. specialist add-ons such as presentation or reviewer-response mode

## Section routing

### Introduction

Triggers:

- `open-intro`
- `write the introduction`
- `draft an introduction`
- `revise my introduction`

Load:

- `phrases/introduction.yml`
- `rhetorical_moves/cars_model.md`

### Literature review

Triggers:

- `open-litreview`
- `write the literature review`
- `related works`
- `review the literature`

Load:

- `phrases/literature_review.yml`
- `phrases/critical_language.yml`
- `phrases/comparison.yml`

### Methods

Triggers:

- `open-methods`
- `write the methods section`
- `draft the methodology`

Load:

- `phrases/methods.yml`
- `rhetorical_moves/methodological_justification.md`

### Results

Triggers:

- `write the results section`
- `report the findings`

Load:

- `phrases/results.yml`
- `phrases/trends.yml`
- `phrases/quantities.yml`

### Discussion

Triggers:

- `open-discussion`
- `write the discussion`
- `revise my discussion`

Load:

- `phrases/discussion.yml`
- `phrases/cautious_language.yml`
- `phrases/comparison.yml`

### Conclusion

Triggers:

- `write the conclusion`
- `draft the concluding section`

Load:

- `phrases/conclusion.yml`
- `rhetorical_moves/contribution_framing.md`

### Abstract

Triggers:

- `open-abstract`
- `write the abstract`
- `draft an abstract`

Load:

- `phrases/abstracts.yml`

## Workflow routing

Slash-style triggers:

- `open-analyze` -> single-paper analysis
- `open-synthesize` -> multi-paper synthesis
- `open-review` or `open-diagnose` -> manuscript diagnosis
- `open-slr` -> systematic-review methodology mode

### Single-paper analysis

Triggers:

- `open-analyze`
- `analyze this paper`
- `summarize this article`
- `extract the contributions`
- `fill a literature review table for this paper`

Load:

- `workflows/research_article_analyzer.md`

### Multi-paper synthesis

Triggers:

- `open-synthesize`
- `compare these papers`
- `synthesize these studies`
- `write my literature review`
- `what is the research gap`
- `position my research`

Load:

- `workflows/literature_synthesizer.md`

### Manuscript diagnosis

Triggers:

- `open-review`
- `open-diagnose`
- `review my draft`
- `diagnose this manuscript`
- `assess this paper for submission`
- `is this Q1-ready`

Load:

- `workflows/manuscript_diagnosis.md`

## Methodology routing

### Systematic review layer

Triggers:

- `open-slr`
- `SLR`
- `systematic literature review`
- `systematic review`
- `systematic mapping study`
- `mapping study`
- `tertiary study`
- `Kitchenham`
- `SEGRESS`
- `PRISMA`

Load:

- `methodology/slr_kitchenham.md`

### Gap validation

Load whenever the task involves:

- introductions
- novelty claims
- research gaps
- contribution positioning
- literature synthesis

- `methodology/gap_validation.md`

## Style routing

If the user names a target style or venue family, load:

- `Elsevier` -> `styles/elsevier.md`
- `IEEE` -> `styles/ieee.md`
- `Nature` -> `styles/nature.md`
- `ACM` -> `styles/acm.md`
- `Humanities` -> `styles/humanities.md`

## Standards routing

Load by default:

- `standards/q1_wos_readiness.md`
- `standards/self_review_protocol.md`

Relax them only when the user explicitly requests a rough draft, brainstorming notes, a lower-tier target, or a non-submission-grade output.

## Ambiguity policy

Load by default:

- `runtime/ambiguity_policy.md`

Infer by default and ask one focused question only when the missing information would materially change the output.

## Discipline routing

If the field is named or strongly implied, load one dominant discipline overlay:

- engineering, systems, optimization, model evaluation -> `disciplines/engineering.md`
- medicine, clinical, diagnosis, health outcomes -> `disciplines/medicine.md`
- social science, policy, interviews, interpretive study -> `disciplines/social_science.md`
- humanities, textual analysis, historiography -> `disciplines/humanities.md`
- mixed or cross-domain work -> `disciplines/interdisciplinary.md`

## English variant routing

- `British English` -> load `notes/british_us_spelling.md` and write in British spelling
- `US English` or `American English` -> load `notes/british_us_spelling.md` and write in US spelling

## Specialist mode routing

### Reviewer response

Triggers:

- `open-response`
- `reviewer comments`
- `response letter`
- `rebuttal`
- `major revision`
- `minor revision`

Load:

- `reviewer_response/minor_revision.md`
- `reviewer_response/major_revision.md`
- `reviewer_response/rebuttal_patterns.md`
- `reviewer_response/reviewer_tone.md`

### Presentation mode

Triggers:

- `presentation`
- `slides`
- `conference talk`
- `oral presentation`

Load:

- `notes/presentation_style.md`

## Anti-AI routing

Load by default:

- `anti_ai/cadence_rules.md`
- `anti_ai/rhythm_variation.md`
- `anti_ai/transition_control.md`
- `anti_ai/humanisation_constraints.md`
- `anti_ai/humanizer_overlay.md`

## Output rule

- Do not expose the routing process unless the user asks.
- Use the routing logic internally and return the requested academic output directly.
