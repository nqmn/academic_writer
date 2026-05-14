---
name: scholarly-research-writing-review
description: Comprehensive scholarly writing, literature analysis, synthesis, manuscript diagnosis, systematic-review support, and bibliometric-analysis support for Q1-ready academic work. Use when Codex needs to draft or revise manuscript sections, write literature reviews, identify research gaps, analyze a single research paper, synthesize multiple papers, assess whether a draft is Q1-ready, prepare reviewer responses, design SLR/SMS/tertiary-review outputs using Kitchenham, SEGRESS, and PRISMA-aligned logic, or plan bibliometric studies from Web of Science or Scopus exports. Natural-language requests are the primary invocation path. Optional `open-*` routing labels such as `open-rewrite`, `open-review`, `open-diagnose`, `open-analyze`, `open-synthesize`, `open-slr`, `open-bibliometric`, `open-intro`, `open-litreview`, `open-methods`, `open-discussion`, `open-abstract`, and `open-response` may also be used as text conventions.
---

# Scholarly Research Writing and Review

## Overview

Use this skill to turn short user requests into submission-grade academic outputs, literature workflows, manuscript diagnostics, or bibliometric-study designs without forcing the user to choose modules manually. The skill is built around a phrasebank-based writing layer, a Q1 WoS readiness standard, literature-analysis workflows, systematic-review methodology, bibliometric-analysis methodology, and internal self-review logic.

## Core operating rules

- Infer the task from the user request instead of asking the user to name files or modules.
- Apply Q1-level rigor by default unless the user explicitly asks for a rough draft, lower-tier target, or brainstorming output.
- Use phrase libraries as rhetorical resources, not as templates.
- Validate research-gap and novelty claims before presenting them as established.
- Perform an internal self-review pass before returning substantial outputs.
- Perform an anti-AI cleanup pass before returning polished prose, section drafts, literature syntheses, reviewer responses, or submission-oriented revisions.
- Prefer one focused clarification question only when the missing information would materially change the output.

## Quick routing guide

Use these mappings first, then refine with style, discipline, English variant, and quality level from the rest of the prompt.

Natural-language requests are primary. The `open-*` forms below are optional routing labels only.

### Section drafting or revision

- `open-intro` or requests for an introduction -> read `references/phrases/introduction.yml` and `references/rhetorical_moves/cars_model.md`
- `open-litreview` or requests for a literature review -> read `references/phrases/literature_review.yml`, `references/phrases/critical_language.yml`, and `references/phrases/comparison.yml`
- `open-methods` or requests for a methods section -> read `references/phrases/methods.yml` and `references/rhetorical_moves/methodological_justification.md`
- requests for results -> read `references/phrases/results.yml`, `references/phrases/trends.yml`, and `references/phrases/quantities.yml`
- `open-discussion` or requests for a discussion section -> read `references/phrases/discussion.yml`, `references/phrases/cautious_language.yml`, and `references/phrases/comparison.yml`
- `open-abstract` or requests for an abstract -> read `references/phrases/abstracts.yml`

### Single-paper analysis

- `open-analyze` or requests such as "analyze this paper" -> read `references/workflows/research_article_analyzer.md`

### Multi-paper synthesis

- `open-synthesize` or requests such as "compare these papers", "write my literature review", or "what is the research gap" -> read `references/workflows/literature_synthesizer.md`

### Manuscript diagnosis

- `open-review` or `open-diagnose` or requests such as "is this Q1-ready" -> read `references/workflows/manuscript_diagnosis.md`

### Systematic review work

- `open-slr` or requests mentioning SLR, systematic review, mapping study, Kitchenham, SEGRESS, or PRISMA -> read `references/methodology/slr_kitchenham.md`
- for those tasks, also read `references/methodology/source_manifest.yml` and then load the relevant local source notes under `references/methodology/source_notes/`
- prefer the bundled local methodology notes before considering any external search
- if the user asks for a framework-based, impactful, conceptual, or theory-building review, also load `references/methodology/source_notes/paul_framework_reviews_2023.md`

### Bibliometric work

- `open-bibliometric` or requests mentioning bibliometric analysis, science mapping, co-citation, bibliographic coupling, keyword co-occurrence, VOSviewer, Bibliometrix, Gephi, or a Web of Science `savedrecs.txt` export -> read `references/methodology/bibliometric_analysis.md`
- for those tasks, also read `references/methodology/source_manifest.yml` and then load the relevant local source notes under `references/methodology/source_notes/`
- prefer the bundled local bibliometric-methodology notes before considering any external search

### Reviewer response

- `open-response` or requests for rebuttals or response letters -> read `references/reviewer_response/major_revision.md`, `references/reviewer_response/minor_revision.md`, `references/reviewer_response/rebuttal_patterns.md`, and `references/reviewer_response/reviewer_tone.md`

## Default standards to load

For all substantial academic outputs, read:

- `references/standards/q1_wos_readiness.md`
- `references/standards/self_review_protocol.md`
- `references/runtime/ambiguity_policy.md`

When the task involves novelty, gap framing, introductions, literature synthesis, or contribution positioning, also read:

- `references/methodology/gap_validation.md`

## Style, discipline, and language selection

If the user names a style family, read the matching file:

- Elsevier -> `references/styles/elsevier.md`
- IEEE -> `references/styles/ieee.md`
- Nature -> `references/styles/nature.md`
- ACM -> `references/styles/acm.md`
- humanities -> `references/styles/humanities.md`

If the field is strongly implied, read one dominant discipline overlay:

- engineering or systems -> `references/disciplines/engineering.md`
- medicine or clinical diagnosis -> `references/disciplines/medicine.md`
- social science or interpretive policy work -> `references/disciplines/social_science.md`
- humanities or textual-historical work -> `references/disciplines/humanities.md`
- mixed or cross-domain work -> `references/disciplines/interdisciplinary.md`

If the user specifies British English or US English, read:

- `references/notes/british_us_spelling.md`

## Anti-AI control

For polished prose, always read:

- `references/anti_ai/cadence_rules.md`
- `references/anti_ai/rhythm_variation.md`
- `references/anti_ai/transition_control.md`
- `references/anti_ai/humanisation_constraints.md`
- `references/anti_ai/humanizer_overlay.md`

Use these to remove formulaic, inflated, vague, prestige-heavy, or templated language while keeping the writing formal and publishable.

Do not treat anti-AI control as optional polish. Treat it as part of output quality.

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

## Rewrite and revision rule

When the task involves `open-rewrite`, `open-discussion`, `open-litreview`, `open-intro`, or any request to improve existing prose:

- preserve the author's meaning unless the user asks for substantive reframing
- apply the relevant phrase modules
- apply the Q1 standard
- run the anti-AI pass aggressively enough to remove visible AI signatures
- keep the final tone formal, journal-suitable, and not conversational

If there is any tension between sounding natural and sounding academically rigorous, satisfy both by revising toward specificity and controlled rhythm rather than casual voice.

## Minimal clarification policy

Do not ask the user to choose modules manually.

Ask one focused question only when required, for example:

- the user requests research-gap positioning but gives no research direction
- the user requests a systematic review but the review scope is too vague
- the requested output shape is materially ambiguous

Otherwise infer and proceed.

## Reference navigation

Read only what is needed.

- Global behavior and system scope: `references/AGENTS.md`
- Runtime routing and defaults: `references/runtime/router.md`, `references/runtime/system_prompt.md`
- Quick routing summary: `references/AUTO_ROUTING_RULES.md`
- Quality standards: `references/standards/`
- Workflows: `references/workflows/`
- Methodology: `references/methodology/`
- Phrase libraries: `references/phrases/`
- Style overlays: `references/styles/`
- Discipline overlays: `references/disciplines/`
- Reviewer response guidance: `references/reviewer_response/`
- Anti-AI controls: `references/anti_ai/`

## Output rule

- Return the requested academic output directly.
- Do not expose the internal module-loading process unless the user asks for it.
- If you diagnose weaknesses, prioritize the highest-impact repairs first.
- For polished outputs, do not stop at a plausible draft. Return the version after the anti-AI and self-review passes.
