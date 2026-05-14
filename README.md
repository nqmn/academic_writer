# Scholarly Research Writing and Review Agent System

A modular academic writing, literature analysis, synthesis, and review system built around:

- the **Academic Phrasebank** as a phraseological and rhetorical foundation
- **Q1 WoS readiness** as the default quality bar
- **systematic review methodology** for SLR/SMS/tertiary-study work
- **anti-AI writing controls** for cleaner, less formulaic prose
- **diagnostic and synthesis workflows** for real research use

## Attribution and foundations

This repository is a derivative academic-agent framework built on and inspired by several established sources and traditions.

### Academic writing foundation

- **Academic Phrasebank (2023 Enhanced Edition)** by **Dr John Morley**
- Used here as the primary phraseological and rhetorical foundation for section-level academic writing support
- The Phrasebank remains the core source for many of the communicative functions, section patterns, and phrase libraries represented in this system

### Systematic review foundation

- **Kitchenham & Charters, Guidelines for Performing Systematic Literature Reviews in Software Engineering (EBSE-2007-01)**
- **SEGRESS**: *Software Engineering Guidelines for REporting Secondary Studies*
- **PRISMA 2020** and related reporting-alignment principles

These sources inform the systematic-review, mapping-study, tertiary-study, and evidence-synthesis layers in this repository.

### Additional anti-AI writing influence

- The anti-AI cleanup layer is partly informed by a separate humanizer-style skill derived from public discussions of common AI-writing signals
- That influence was adapted for formal academic use rather than copied as-is

### Important note

This repository is **not** the Academic Phrasebank itself, and it should not be presented as an official Academic Phrasebank product.

It is a **modular scholarly writing and review system** that:

- draws on the Academic Phrasebank for rhetorical and phraseological guidance
- draws on Kitchenham, SEGRESS, and PRISMA for evidence-synthesis methodology
- extends those foundations into agent-oriented workflows, routing logic, quality governance, and revision support

This repository is designed for Codex-style agent use, but its structure is also useful as a standalone prompt architecture or reference system.

## Scope

The system supports:

- manuscript section drafting and revision
- literature review writing
- research-gap identification and positioning
- single-paper analysis
- multi-paper synthesis
- manuscript diagnosis and upgrade planning
- reviewer-response writing
- SLR, SMS, and tertiary-study protocol and synthesis work

## Repository structure

- [`AGENTS.md`](AGENTS.md): main system behavior and academic-writing specification
- [`phrases/`](phrases/): phrase libraries by section and rhetorical function
- [`styles/`](styles/): journal and venue overlays
- [`rhetorical_moves/`](rhetorical_moves/): move-structure guidance
- [`anti_ai/`](anti_ai/): cadence, anti-template, and humanization controls
- [`reviewer_response/`](reviewer_response/): reviewer-response patterns
- [`workflows/`](workflows/): single-paper analysis, literature synthesis, and manuscript diagnosis
- [`methodology/`](methodology/): systematic review and gap-validation layers
- [`standards/`](standards/): Q1 WoS readiness and self-review governance
- [`runtime/`](runtime/): router, ambiguity policy, runtime prompt, and manifest
- [`disciplines/`](disciplines/): discipline overlays
- [`notes/`](notes/): style, spelling, and structural notes
- [`COMMANDS.md`](COMMANDS.md): namespaced command triggers
- [`TEST_CASES.md`](TEST_CASES.md): dry-run routing and quality tests
- [`packages/`](packages/): installable Codex skill package artifacts
- [`docs/`](docs/): standalone site and presentation assets
- [`scripts/`](scripts/): local maintenance scripts such as package sync

Within [`methodology/`](methodology/), the repository also includes:

- [`methodology/source_manifest.yml`](methodology/source_manifest.yml): local methodology-source index
- [`methodology/source_notes/`](methodology/source_notes/): distilled local notes derived from the user's Kitchenham, SEGRESS, and PRISMA PDFs

## Default operating model

The system is designed to be **task-first**, not **module-first**.

The user should be able to give a natural request such as:

```text
Write an Introduction for an Elsevier article in engineering.
Topic: explainable AI for medical image diagnosis.
Use British English.
Length: 700 words.
```

The agent should then infer internally:

- the section
- the relevant phrase modules
- the journal style
- the discipline overlay
- the English variant
- the anti-AI controls
- the Q1 quality standard
- the self-review and gap-validation layers where relevant

## Invocation style

The recommended usage is:

- natural-language prompting
- or explicit skill invocation such as `Use $scholarly-research-writing-review.`

The repository also defines optional `open-*` routing labels, but these should be treated as text conventions rather than guaranteed native Codex commands.

See [`COMMANDS.md`](COMMANDS.md) for the routing-label list.

## Quality defaults

For substantial academic outputs, the system should apply by default:

- [`standards/q1_wos_readiness.md`](standards/q1_wos_readiness.md)
- [`standards/self_review_protocol.md`](standards/self_review_protocol.md)
- [`methodology/gap_validation.md`](methodology/gap_validation.md) where novelty or gap framing is involved
- [`runtime/ambiguity_policy.md`](runtime/ambiguity_policy.md)
- the anti-AI controls in [`anti_ai/`](anti_ai/)

This means the phrase libraries are **not** meant to function as templates. They are rhetorical tools inside a stricter quality-governance system.

## Runtime entry points

The main runtime files are:

1. [`AGENTS.md`](AGENTS.md)
2. [`runtime/system_prompt.md`](runtime/system_prompt.md)
3. [`runtime/router.md`](runtime/router.md)
4. [`runtime/agent_manifest.yml`](runtime/agent_manifest.yml)

For a shorter routing summary, see:

- [`AUTO_ROUTING_RULES.md`](AUTO_ROUTING_RULES.md)

## Codex skill package

This repository includes a packaged Codex skill at:

- [`packages/scholarly-research-writing-review/`](packages/scholarly-research-writing-review/)

The packaged skill contains:

- a `SKILL.md`
- `agents/openai.yaml`
- a bundled `references/` tree copied from this repository

The bundled `references/` tree should be treated as generated package content. To resync it after source edits, run:

```powershell
.\scripts\sync-skill-package.ps1
```

For systematic-review work, the skill is intended to rely on bundled Markdown/YAML source notes rather than bundled PDFs.

The skill has been validated with the Codex skill validator.

## Recommended usage examples

### Section drafting

```text
Use $scholarly-research-writing-review.
Write an Introduction for an Elsevier article in engineering.
Topic: explainable AI for medical image diagnosis.
Use British English.
```

### Manuscript diagnosis

```text
Use $scholarly-research-writing-review.
Review my draft and tell me whether it is Q1-ready. Identify the biggest weaknesses and what I should fix first.
```

### Single-paper analysis

```text
Use $scholarly-research-writing-review.
Extract the key contributions, methods, metrics, and limitations from this paper.
```

### Multi-paper synthesis

```text
Use $scholarly-research-writing-review.
Compare these eight papers and write a thematic literature review with a research gap section.
```

### Systematic review protocol

```text
Use $scholarly-research-writing-review.
Design an SLR protocol on explainable AI for medical image diagnosis using Kitchenham and PRISMA.
```

## Confidence example: how the foundations work together

One useful way to test the system is to ask it to combine:

- **Academic Phrasebank** for rhetorical framing
- **Kitchenham** for SLR protocol structure
- **SEGRESS** for secondary-study reporting discipline
- **PRISMA** for transparent review reporting logic

Example test prompt:

```text
Use $scholarly-research-writing-review.
Design a systematic literature review protocol on explainable AI for medical image diagnosis.
Use Kitchenham, SEGRESS, and PRISMA principles.
Write the opening background and gap framing in a style informed by Academic Phrasebank.
```

What a strong response should demonstrate:

- Phrasebank-style rhetorical moves in the opening
- a clear, evidence-based research gap
- Kitchenham-style protocol framing
- SEGRESS/PRISMA-aware reporting discipline
- Q1-level academic tone without formulaic AI cadence

## Offline methodology sources

For SLR, SMS, tertiary-study, Kitchenham, SEGRESS, and PRISMA tasks, the repository now keeps the methodology foundation as local Markdown/YAML notes rather than stored PDFs.

Primary local source files:

- [`methodology/source_manifest.yml`](methodology/source_manifest.yml)
- [`methodology/source_notes/kitchenham_guidelines_core.md`](methodology/source_notes/kitchenham_guidelines_core.md)
- [`methodology/source_notes/prisma_2020_core.md`](methodology/source_notes/prisma_2020_core.md)
- [`methodology/source_notes/segress_core.md`](methodology/source_notes/segress_core.md)

Supporting local source files:

- [`methodology/source_notes/paul_framework_reviews_2023.md`](methodology/source_notes/paul_framework_reviews_2023.md)
- [`methodology/source_notes/segress_supplement.md`](methodology/source_notes/segress_supplement.md)
- [`methodology/source_notes/kitchenham_process_review_2013.md`](methodology/source_notes/kitchenham_process_review_2013.md)
- [`methodology/source_notes/kitchenham_preliminary_2002.md`](methodology/source_notes/kitchenham_preliminary_2002.md)

This is intended to reduce unnecessary web dependency. When these local notes are sufficient for the task, the agent should use them first.

The Paul et al. 2023 note is especially useful when the user wants a framework-based or theory-building review rather than only a protocol-compliant review.

Test status:

- The output below is a **manual validation sample produced against this prompt**, not a placeholder template.
- It is included to show the kind of response this system currently produces when the Phrasebank, Kitchenham, SEGRESS, and PRISMA layers are combined.

Observed output excerpt:

```text
Explainable artificial intelligence has become an increasingly important area of inquiry in medical image diagnosis, particularly as deep learning systems are deployed in settings where transparency, trust, and clinical accountability are critical. A growing body of literature has examined the predictive performance of such systems; however, the extent to which existing reviews have systematically synthesized evidence on explainability methods, diagnostic contexts, and evaluation practices remains unclear. This review therefore aims to identify, assess, and synthesize the current evidence on explainable AI approaches for medical image diagnosis using a predefined protocol informed by Kitchenham-style secondary-study guidance and reported with PRISMA- and SEGRESS-aligned transparency. In doing so, the review seeks to clarify dominant methodological trends, recurring limitations, and unresolved gaps that continue to affect the interpretability and practical integration of these systems.
```

Why this counts as a meaningful test:

- the first sentence uses Phrasebank-style territory establishment
- the second sentence introduces a cautious, evidence-based gap
- the third sentence shifts into Kitchenham-style review-purpose and protocol framing
- PRISMA and SEGRESS are reflected in the transparency and reporting orientation
- the prose remains formal and relatively restrained rather than sounding like generic AI uplift

See [`TEST_CASES.md`](TEST_CASES.md) for the full dry-run confidence case and expected routing behavior.

## Notes on source fidelity

- The Academic Phrasebank remains a **source foundation**, not the whole system identity.
- The phrasebank content is **content-neutral** and should be adapted rather than copied mechanically.
- Several files in [`notes/`](notes/) are derived from the explanatory sections of the source PDF rather than the phrase lists themselves.
- British spelling is the default in the manifest because the source PDF uses British English, but this can be changed per task.
