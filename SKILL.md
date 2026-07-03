---
name: academic-writer
description: Comprehensive scholarly writing, literature analysis, synthesis, manuscript diagnosis, systematic-review support, and bibliometric-analysis support for Q1-ready academic work. Use when Codex needs to draft or revise manuscript sections, write literature reviews, identify research gaps, analyze a single research paper, synthesize multiple papers, assess whether a draft is Q1-ready, prepare reviewer responses, design SLR/SMS/tertiary-review outputs using Kitchenham, SEGRESS, and PRISMA-aligned logic, or plan bibliometric studies from Web of Science or Scopus exports. Natural-language requests are the primary invocation path. Optional `open-*` routing labels such as `open-rewrite`, `open-review`, `open-diagnose`, `open-analyze`, `open-synthesize`, `open-slr`, `open-bibliometric`, `open-intro`, `open-litreview`, `open-methods`, `open-discussion`, `open-abstract`, and `open-response` may also be used as text conventions.
---

# Academic Writer

## Overview

Use this skill as the primary operating brain for this repository. Treat the repository as a modular academic-writing and manuscript-review system, not as a loose document bundle. Infer the user's task, load the relevant modules, and route work through the appropriate standards, workflows, rhetorical move guides, phrase libraries, anti-AI controls, style overlays, discipline overlays, and methodology notes.

The skill covers:

- manuscript section drafting and revision
- full-paper structuring and Q1 readiness checks
- literature review writing and synthesis
- theoretical and conceptual framework construction
- research-gap validation and novelty positioning
- single-paper analysis
- multi-paper synthesis
- reviewer-response drafting
- SLR, SMS, and tertiary-study design
- bibliometric-study planning and interpretation

## Primary sources inside the repo

Treat these as the top-level control files:

- `AGENTS.md` for the full academic behavior system
- `runtime/system_prompt.md` for runtime operating posture
- `runtime/router.md` for routing logic
- `runtime/ambiguity_policy.md` for clarification thresholds
- `runtime/agent_manifest.yml` for module inventory and default selection logic
- `AUTO_ROUTING_RULES.md` for shorter routing conventions
- `COMMANDS.md` for the `open-*` text labels

Read `AGENTS.md` first when the task is broad, high-stakes, or requires system-level alignment. Read `runtime/agent_manifest.yml` when deciding whether a module family is part of the intended operating surface.

## Global operating rules

- Infer the task from the user request instead of asking the user to name modules manually.
- Apply Q1-level rigor by default unless the user explicitly asks for a rough draft, brainstorming output, or lower-bar review.
- Use phrase libraries as rhetorical resources, not as templates to copy.
- Validate novelty, contribution, and research-gap claims before presenting them as established.
- Use bundled methodology notes before considering any external source.
- Perform an internal self-review pass before returning substantial outputs.
- Perform an anti-AI cleanup pass before returning polished prose, diagnostics, syntheses, rebuttals, or submission-oriented revisions.
- Ask at most one focused clarification question when missing information would materially change the output.

## Default modules

For substantial academic work, always read:

- `standards/q1_wos_readiness.md`
- `standards/self_review_protocol.md`
- `runtime/ambiguity_policy.md`

For manuscript structuring, section ordering, and reviewer expectations, also read:

- `workflows/q1_paper_structure.md`

For broad system behavior or when the request cuts across multiple academic functions, also read:

- `AGENTS.md`
- `runtime/router.md`
- `runtime/agent_manifest.yml`

## Routing

Natural-language requests are primary. The `open-*` forms are optional text routing labels, not required commands. Use `COMMANDS.md` when the request explicitly references those labels.

### Introduction and territory framing

For introduction drafting, introduction revision, territory establishment, gap framing, novelty framing, or study-purpose setup, read:

- `phrases/introduction.yml`
- `rhetorical_moves/cars_model.md`
- `rhetorical_moves/gap_identification.md`
- `rhetorical_moves/novelty_positioning.md`
- `methodology/gap_validation.md`

### Literature review and synthesis

For literature reviews, related work, thematic synthesis, contradiction mapping, or gap identification from multiple sources, read:

- `workflows/literature_synthesizer.md`
- `phrases/literature_review.yml`
- `phrases/critical_language.yml`
- `phrases/comparison.yml`
- `phrases/reporting_verbs.yml`
- `phrases/evidence_collocations.yml`
- `rhetorical_moves/gap_identification.md`
- `methodology/gap_validation.md`

### Theoretical or conceptual framework

For theoretical framework selection, conceptual framework construction, theory contribution framing, theoretical gaps, or framework-method alignment, read:

- `methodology/theoretical_framework.md`
- `phrases/theoretical_framework.yml`
- `rhetorical_moves/contribution_framing.md`
- `rhetorical_moves/novelty_positioning.md`
- `methodology/gap_validation.md`

Also use the relevant source notes under `methodology/source_notes/` when the task requires stronger theoretical grounding.

### Methods

For methods sections, design justification, analytical procedure explanation, protocol construction, or reproducibility framing, read:

- `phrases/methods.yml`
- `rhetorical_moves/methodological_justification.md`
- `workflows/q1_paper_structure.md`

### Results

For results sections, outcome reporting, trend reporting, or quantitative phrasing, read:

- `phrases/results.yml`
- `phrases/trends.yml`
- `phrases/quantities.yml`
- `phrases/reporting_verbs.yml`

### Discussion and conclusion

For discussion, interpretation, implications, limitations, future work, or conclusion writing, read:

- `phrases/discussion.yml`
- `phrases/conclusion.yml`
- `phrases/cautious_language.yml`
- `phrases/comparison.yml`
- `rhetorical_moves/contribution_framing.md`

### Abstracts

For abstract drafting or revision, read:

- `phrases/abstracts.yml`
- `workflows/q1_paper_structure.md`

### Definitions, classification, examples, and general rhetorical support

Load these only when the wording task requires them:

- `phrases/definitions.yml`
- `phrases/classifying_listing.yml`
- `phrases/giving_examples.yml`
- `phrases/shared_knowledge.yml`
- `phrases/writing_about_the_past.yml`
- `phrases/presentation.yml`
- `phrases/transition_signals.yml`
- `phrases/causality.yml`
- `phrases/acknowledgements.yml`
- `phrases/reviewer_response.yml`

### Single-paper analysis

For requests such as "analyze this paper", "extract contributions", "summarize methods", or "build a literature table from one article", read:

- `workflows/research_article_analyzer.md`
- `workflows/q1_paper_structure.md`

### Manuscript diagnosis

For Q1-readiness review, publishability assessment, contribution critique, or structured editorial-style diagnosis, read:

- `workflows/manuscript_diagnosis.md`
- `workflows/q1_paper_structure.md`
- `methodology/theoretical_framework.md`
- `methodology/gap_validation.md`
- `standards/q1_wos_readiness.md`
- `standards/self_review_protocol.md`

### Reviewer response

For rebuttals, response letters, point-by-point replies, or revision-cover explanations, read:

- `reviewer_response/major_revision.md`
- `reviewer_response/minor_revision.md`
- `reviewer_response/rebuttal_patterns.md`
- `reviewer_response/reviewer_tone.md`
- `phrases/reviewer_response.yml`

### Systematic review and tertiary-study work

For SLR, SMS, tertiary review, Kitchenham, SEGRESS, PRISMA, review protocol design, review questions, search-string planning, or evidence-synthesis workflow design, read:

- `methodology/slr_kitchenham.md`
- `methodology/source_manifest.yml`
- `METHODOLOGY_SOURCES.md`

Then load the relevant files from `methodology/source_notes/` based on the task. Prefer:

- `methodology/source_notes/kitchenham_guidelines_core.md`
- `methodology/source_notes/prisma_2020_core.md`
- `methodology/source_notes/segress_core.md`

Use supporting notes when needed, including:

- `methodology/source_notes/kitchenham_process_review_2013.md`
- `methodology/source_notes/kitchenham_preliminary_2002.md`
- `methodology/source_notes/paul_framework_reviews_2023.md`
- `methodology/source_notes/luft_et_al_2022_literature_reviews_frameworks.md`
- `methodology/source_notes/grant_osanloo_theoretical_framework_2014.md`
- `methodology/source_notes/klopper_matrix_literature_review_2007.md`
- `methodology/source_notes/lim_2026_theory_development.md`

### Bibliometric work

For bibliometric analysis, science mapping, co-citation, bibliographic coupling, keyword co-occurrence, Web of Science or Scopus export planning, or VOSviewer/Bibliometrix-oriented study design, read:

- `methodology/bibliometric_analysis.md`
- `methodology/source_manifest.yml`
- `METHODOLOGY_SOURCES.md`

Then load the relevant files from `methodology/source_notes/`, especially:

- `methodology/source_notes/donthu_bibliometric_2021.md`
- `methodology/source_notes/ozturk_bibliometric_design_2024.md`
- `methodology/source_notes/passas_bibliometric_steps_2024.md`

### Structure and quality references

Use these when the task requires stronger section-level control, diagnosis, or polishing discipline:

- `workflows/q1_paper_structure.md`
- `notes/academic_style.md`
- `notes/sentence_structure.md`
- `notes/paragraph_structure.md`
- `notes/connecting_words.md`
- `notes/presentation_style.md`
- `notes/british_us_spelling.md`

## Style and discipline overlays

If the user names a style family, read the matching file:

- Elsevier -> `styles/elsevier.md`
- IEEE -> `styles/ieee.md`
- Nature -> `styles/nature.md`
- ACM -> `styles/acm.md`
- humanities -> `styles/humanities.md`

If the field is strongly implied, read one dominant discipline overlay:

- engineering or systems -> `disciplines/engineering.md`
- medicine or clinical diagnosis -> `disciplines/medicine.md`
- social science or interpretive policy work -> `disciplines/social_science.md`
- humanities or textual-historical work -> `disciplines/humanities.md`
- mixed or cross-domain work -> `disciplines/interdisciplinary.md`

If the user specifies British English or US English, read:

- `notes/british_us_spelling.md`

## Anti-AI control

For polished prose, always read:

- `anti_ai/cadence_rules.md`
- `anti_ai/rhythm_variation.md`
- `anti_ai/transition_control.md`
- `anti_ai/humanisation_constraints.md`
- `anti_ai/humanizer_overlay.md`

Treat these as mandatory quality-control modules, not optional polish.

Before finalizing polished text, explicitly check for:

- repeated sentence openings
- transition stacking
- inflated significance language
- vague attributions
- stacked `-ing` pseudo-analysis
- generic positive conclusions
- mechanical phrasebank reuse
- prose that sounds assembled rather than reasoned

If any of these appear, revise before returning the output.

## Rewrite rule

When improving existing prose:

- preserve the author's meaning unless the user asks for substantive reframing
- apply the relevant phrase modules
- apply the Q1 standard unless the user asks otherwise
- run the anti-AI pass strongly enough to remove visible AI signatures
- prefer specificity, control, and natural scholarly rhythm over generic polish

## Reference boundaries

Do not treat these as core runtime guidance:

- `docs/` is presentation or site material, not skill reasoning logic
- `scripts/` contains repo maintenance utilities, not academic-behavior instructions
- `packages/` contains packaged artifacts derived from this source repo
- `TEST_CASES.md` is for validation and confidence checks, not default reasoning context
- `README.md` is orientation material, not the main operating brain

Read them only when the task is packaging, maintenance, validation, or documentation-related.

## Output rule

- Return the requested academic output directly.
- Do not expose internal module-loading steps unless the user asks for them.
- If diagnosing weaknesses, prioritize the highest-impact repairs first.
- For polished outputs, do not stop at a plausible draft. Return the version after self-review and anti-AI cleanup.
