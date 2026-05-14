# Task Router

This file tells the agent how to infer module selection from a short user request.

## Core Rule

- The user should not need to name files or modules.
- Infer the required modules from the task description, then load them internally.
- Ask follow-up questions only when a missing choice would materially change the output.
- Apply `runtime/ambiguity_policy.md` by default for inference and questioning behavior.
- Apply `standards/q1_wos_readiness.md` by default unless the user explicitly asks for a rough draft, a lower-tier target, or a non-submission-grade output.

## Inference Order

1. Identify the task type.
2. Identify the manuscript section or output genre.
3. Identify the journal or venue style if named.
4. Identify the discipline mode if named or strongly implied.
5. Identify the English variant if named; otherwise use the manifest default.
6. Add anti-AI controls by default unless the user explicitly disables them.
7. Add specialist modules for presentations, acknowledgements, reviewer responses, or abstract writing when relevant.

## Task Type Detection

### Routing-label mode

If the user includes an `open-*` routing label in plain text, treat it as a high-priority routing signal.

Natural-language requests remain the primary invocation path.

Supported command triggers include:

- `open-rewrite`
- `open-review`
- `open-diagnose`
- `open-analyze`
- `open-synthesize`
- `open-slr`
- `open-abstract`
- `open-intro`
- `open-litreview`
- `open-methods`
- `open-discussion`
- `open-response`

The rest of the prompt should still be used to infer style, discipline, English variant, and quality level.

### Section writing

If the user asks to write or revise a section such as:

- `open-intro`
- introduction
- literature review
- methods
- results
- discussion
- conclusion
- abstract

Then load the section-specific phrase libraries and rhetorical move guidance.

### Reviewer response

If the user mentions:

- `open-response`
- reviewer comments
- rebuttal
- revision response
- response letter

Then load reviewer response modules.

### Single-paper analysis mode

If the user mentions:

- `open-analyze`
- analyze this paper
- summarize this article
- extract the contributions
- break down this PDF
- fill a literature review table for this paper

Then load:

- `workflows/research_article_analyzer.md`

### Multi-paper synthesis mode

If the user mentions:

- `open-synthesize`
- compare these papers
- synthesize these studies
- write my literature review
- related works section
- what is the research gap
- position my research

Then load:

- `workflows/literature_synthesizer.md`

### Manuscript diagnosis mode

If the user mentions:

- `open-review`
- `open-diagnose`
- review my draft
- diagnose this manuscript
- assess this paper for submission
- is this Q1-ready
- tell me why this paper feels weak

Then load:

- `workflows/manuscript_diagnosis.md`

### Systematic review mode

If the user mentions:

- `open-slr`
- SLR
- systematic literature review
- systematic review
- systematic mapping study
- mapping study
- tertiary study
- Kitchenham
- SEGRESS
- PRISMA

Then load the methodology layer:

- `methodology/slr_kitchenham.md`

### Presentation mode

If the user mentions:

- presentation
- slides
- oral presentation
- conference talk

Then add presentation style notes.

## Section-to-Module Mapping

### Introduction

- `phrases/introduction.yml`
- `rhetorical_moves/cars_model.md`
- useful additions when needed:
  - `phrases/definitions.yml`
  - `phrases/giving_examples.yml`
  - `phrases/shared_knowledge.yml`

### Literature review

- `phrases/literature_review.yml`
- `phrases/critical_language.yml`
- `phrases/comparison.yml`
- useful additions when needed:
  - `phrases/writing_about_the_past.yml`
  - `phrases/reporting_verbs.yml`
  - `phrases/evidence_collocations.yml`

### Methods

- `phrases/methods.yml`
- `rhetorical_moves/methodological_justification.md`
- useful additions when needed:
  - `phrases/definitions.yml`

### Results

- `phrases/results.yml`
- `phrases/trends.yml`
- `phrases/quantities.yml`

### Discussion

- `phrases/discussion.yml`
- `phrases/cautious_language.yml`
- `phrases/comparison.yml`
- useful additions when needed:
  - `phrases/causality.yml`
  - `phrases/evidence_collocations.yml`

### Conclusion

- `phrases/conclusion.yml`
- `rhetorical_moves/contribution_framing.md`

### Abstract

- `phrases/abstracts.yml`
- `phrases/cautious_language.yml` when claims need moderation

## Style Routing

If the user names a target venue or style family, load the closest style overlay:

- `Elsevier` -> `styles/elsevier.md`
- `IEEE` -> `styles/ieee.md`
- `Nature` -> `styles/nature.md`
- `ACM` -> `styles/acm.md`
- `Humanities` -> `styles/humanities.md`

If no venue is given, use the manifest default.

## Methodology Routing

If the task is a formal secondary study, load:

- `methodology/slr_kitchenham.md`

Use it together with analysis or synthesis workflows rather than instead of them.

## Workflow Routing

For single-paper decomposition, load:

- `workflows/research_article_analyzer.md`

For cross-paper comparison or literature-review generation, load:

- `workflows/literature_synthesizer.md`

For manuscript diagnosis or upgrade planning, load:

- `workflows/manuscript_diagnosis.md`

## Standards Routing

Load by default:

- `standards/q1_wos_readiness.md`
- `standards/self_review_protocol.md`

Relax this standard only when the user explicitly signals:

- rough draft
- brainstorming only
- non-Q1 target
- lower-tier venue
- notes rather than submission-ready writing

## Gap Validation Routing

Load whenever the task involves:

- introduction writing
- research-gap identification
- novelty evaluation
- literature synthesis
- contribution positioning

- `methodology/gap_validation.md`

## Discipline Routing

If the user names or strongly implies a field, load one discipline overlay:

- engineering, systems, optimisation, model evaluation -> `disciplines/engineering.md`
- medicine, clinical, diagnosis, health outcomes -> `disciplines/medicine.md`
- social science, policy, interviews, interpretive study -> `disciplines/social_science.md`
- humanities, textual analysis, historiography -> `disciplines/humanities.md`
- mixed or cross-domain work -> `disciplines/interdisciplinary.md`

If multiple fields appear, choose the dominant evidential mode rather than the topic label alone.

## English Variant Routing

- If the user says `British English`, load `notes/british_us_spelling.md` and write in British spelling.
- If the user says `US English` or `American English`, load `notes/british_us_spelling.md` and write in US spelling.
- If unspecified, use the manifest default.

## Anti-AI Routing

Load these by default:

- `anti_ai/cadence_rules.md`
- `anti_ai/rhythm_variation.md`
- `anti_ai/transition_control.md`
- `anti_ai/humanisation_constraints.md`
- `anti_ai/humanizer_overlay.md`

Use `anti_ai/humanizer_overlay.md` mainly for cleanup of inflated, vague, or templated phrasing, not to make the prose casual.

## Example Inference

User request:

`Write an Introduction for an Elsevier article in engineering on explainable AI for medical image diagnosis. Use British English.`

Internal routing:

- section -> Introduction
- style -> Elsevier
- discipline -> Engineering
- english variant -> British English
- anti-AI -> enabled

Modules to load:

- `AGENTS.md`
- `runtime/system_prompt.md`
- `runtime/ambiguity_policy.md`
- `standards/q1_wos_readiness.md`
- `standards/self_review_protocol.md`
- `styles/elsevier.md`
- `disciplines/engineering.md`
- `phrases/introduction.yml`
- `rhetorical_moves/cars_model.md`
- `methodology/gap_validation.md`
- `anti_ai/cadence_rules.md`
- `anti_ai/rhythm_variation.md`
- `anti_ai/transition_control.md`
- `anti_ai/humanisation_constraints.md`
- `anti_ai/humanizer_overlay.md`

## Output Rule

- Do not expose the module-loading process unless the user asks.
- Use routing internally and return the writing task output directly.
