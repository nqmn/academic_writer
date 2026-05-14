# Test Cases

This file provides dry-run prompts for auditing the routing logic of the Scholarly Research Writing and Review Agent System.

## How to use

- Read the prompt.
- Check whether the agent would infer the expected task type, section, workflow, methodology, style, discipline, and anti-AI modules.
- Check whether the agent applies the Q1 WoS standard while using the phrase libraries as rhetorical support.
- Use this file after changing `AGENTS.md`, `runtime/router.md`, or `runtime/agent_manifest.yml`.

## Global expectation for all cases

For every substantial academic-writing case below, the agent should:

- load and apply `standards/q1_wos_readiness.md`
- load and apply `standards/self_review_protocol.md`
- use the relevant `phrases/*.yml` libraries as section-appropriate rhetorical resources
- validate gap and novelty claims where relevant through `methodology/gap_validation.md`
- avoid mechanical phrase insertion
- keep novelty, gap framing, literature quality, theoretical grounding, methodology, discussion depth, and academic English aligned with the Q1 checklist

The phrase libraries are not a substitute for rigor. They should help the agent express Q1-level content more effectively.

## Case 1: Introduction writing

Prompt:

```text
Write an Introduction for an Elsevier article in engineering.
Topic: explainable AI for medical image diagnosis.
Use British English.
Length: 700 words.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- section: `Introduction`
- style: `styles/elsevier.md`
- discipline: `disciplines/engineering.md`
- notes: `notes/british_us_spelling.md`
- phrases: `phrases/introduction.yml`
- rhetorical moves: `rhetorical_moves/cars_model.md`
- methodology: `methodology/gap_validation.md`
- anti-AI: all default `anti_ai/*`

Expected quality behavior:

- the introduction should use phrasebank patterns to establish territory, identify a gap, and occupy the niche
- the output should still satisfy the Q1 checklist through strong importance framing, an evidenced gap, explicit novelty, and a clear contribution statement

## Case 2: Literature review section writing

Prompt:

```text
Write the literature review section for an IEEE paper on federated learning for intrusion detection.
Use US English.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- section: `Literature review`
- style: `styles/ieee.md`
- discipline: `disciplines/engineering.md`
- notes: `notes/british_us_spelling.md`
- phrases:
  - `phrases/literature_review.yml`
  - `phrases/critical_language.yml`
  - `phrases/comparison.yml`
- methodology: `methodology/gap_validation.md`
- useful additions may include:
  - `phrases/reporting_verbs.yml`
  - `phrases/evidence_collocations.yml`
- anti-AI: all default `anti_ai/*`

Expected quality behavior:

- the literature review should use phrase modules for synthesis, critique, and comparison
- the output should not become a descriptive list of studies
- the output should satisfy the Q1 checklist through critical synthesis, current high-quality references, theoretical gap identification, and clear linkage to the research problem

## Case 3: Methods section writing

Prompt:

```text
Draft the Methods section for a mixed-method social science article on digital wellbeing among university students.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- section: `Methods`
- style: manifest default unless otherwise specified
- discipline: `disciplines/social_science.md`
- phrases: `phrases/methods.yml`
- rhetorical moves: `rhetorical_moves/methodological_justification.md`
- anti-AI: all default `anti_ai/*`

Expected quality behavior:

- the methods section should use phrase modules to explain design, collection, analysis, and justification
- the output should satisfy the Q1 checklist through transparent design, justified methodology, replicable procedures, and appropriate validity, reliability, or trustworthiness treatment

## Case 4: Reviewer response

Prompt:

```text
Help me write a response letter to reviewers for a major revision. Reviewer 2 says the limitations section is weak.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- mode: `reviewer_response`
- reviewer modules:
  - `reviewer_response/minor_revision.md`
  - `reviewer_response/major_revision.md`
  - `reviewer_response/rebuttal_patterns.md`
  - `reviewer_response/reviewer_tone.md`
- anti-AI: optional but normally still active

Expected quality behavior:

- the response should address Q1-level concerns directly if the reviewer questions novelty, methods, theory, discussion quality, or contribution strength
- the response should be specific, professional, and revision-focused rather than generic

## Case 5: Single-paper analysis

Prompt:

```text
Analyze this paper and extract its contributions, methods, metrics, and limitations.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- workflow: `workflows/research_article_analyzer.md`
- no literature synthesis workflow
- no systematic review methodology unless the user explicitly requests it

Expected quality behavior:

- the extracted analysis should surface Q1-relevant strengths and weaknesses such as novelty, gap clarity, methodological rigor, contribution strength, and discussion depth

## Case 6: Single-paper literature table entry

Prompt:

```text
Fill in a literature review table entry for this article.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- workflow: `workflows/research_article_analyzer.md`

Expected quality behavior:

- the matrix entry should preserve structured fields that later support Q1-level synthesis rather than reducing the paper to a shallow summary

## Case 7: Multi-paper synthesis

Prompt:

```text
Compare these eight papers and write a thematic literature review with a research gap section.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- workflow: `workflows/literature_synthesizer.md`
- methodology: `methodology/gap_validation.md`
- if the user's own direction is missing and gap positioning is requested:
  - ask one focused question about the user's research direction

Expected quality behavior:

- the synthesis should use phrase resources where useful, especially for comparison, caution, and evidence framing
- the output should satisfy the Q1 checklist through critical synthesis, contradiction handling, a clear unresolved gap, and strong positioning logic

## Case 8: Related works positioning

Prompt:

```text
Write a related works section and position my proposed lightweight XAI model against these prior studies.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- workflow: `workflows/literature_synthesizer.md`
- methodology: `methodology/gap_validation.md`
- ask for the user's proposed contribution if not already supplied
- section-like writing may also use:
  - `phrases/literature_review.yml`
  - `phrases/comparison.yml`
  - `phrases/critical_language.yml`

Expected quality behavior:

- the related works output should read like a Q1-ready section, not a paper-by-paper digest
- phrase libraries should support analytical judgment rather than replace it

## Case 9: SLR protocol design

Prompt:

```text
Design an SLR protocol on explainable AI for medical image diagnosis using Kitchenham and PRISMA.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- methodology: `methodology/slr_kitchenham.md`
- methodology: `methodology/source_manifest.yml`
- methodology:
  - `methodology/source_notes/kitchenham_guidelines_core.md`
  - `methodology/source_notes/prisma_2020_core.md`
  - `methodology/source_notes/segress_core.md`
- methodology: `methodology/gap_validation.md`
- workflow: `workflows/literature_synthesizer.md`
- likely discipline: `disciplines/medicine.md` or `disciplines/interdisciplinary.md`
  - choose based on dominant evidential mode

Expected quality behavior:

- the protocol should satisfy both the systematic-review methodology layer and the Q1 checklist through rigor, transparency, and internationally legible framing where appropriate
- the agent should rely on the local Kitchenham, PRISMA, and SEGRESS notes before considering any external lookup

## Case 10: Systematic mapping study

Prompt:

```text
Plan a systematic mapping study on software defect prediction techniques from 2018 to 2025.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- methodology: `methodology/slr_kitchenham.md`
- review type inference: `SMS`
- likely workflow: `workflows/literature_synthesizer.md`
- discipline: `disciplines/engineering.md`

Expected quality behavior:

- the plan should distinguish mapping from deep synthesis

## Case 11: Framework-based theory-building review

Prompt:

```text
Design a framework-based systematic literature review on explainable AI in healthcare and recommend a theory-building synthesis structure.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- methodology: `methodology/slr_kitchenham.md`
- methodology: `methodology/source_manifest.yml`
- methodology:
  - `methodology/source_notes/kitchenham_guidelines_core.md`
  - `methodology/source_notes/prisma_2020_core.md`
  - `methodology/source_notes/paul_framework_reviews_2023.md`
- workflow: `workflows/literature_synthesizer.md`
- methodology: `methodology/gap_validation.md`

Expected quality behavior:

- the output should not stop at generic SLR protocol steps
- the agent should recommend and justify a framework such as TCCM, ADO, 5W+H, or IMO
- the synthesis design should show how the chosen framework will structure extraction, integration, gap identification, and future research
- the framing should still reflect Q1-level rigor in scope, method, and reporting logic

## Case 12: Bibliometric routing from Web of Science export

Prompt:

```text
Use this Web of Science `savedrecs.txt` export on explainable AI for medical vision and do a bibliometric analysis with performance analysis, co-citation analysis, bibliographic coupling, and keyword co-occurrence mapping.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- methodology: `methodology/bibliometric_analysis.md`
- methodology: `methodology/source_manifest.yml`
- methodology:
  - `methodology/source_notes/donthu_bibliometric_2021.md`
  - `methodology/source_notes/ozturk_bibliometric_design_2024.md`
  - `methodology/source_notes/passas_bibliometric_steps_2024.md`
- workflow: `workflows/literature_synthesizer.md`
- likely discipline: `disciplines/medicine.md` or `disciplines/interdisciplinary.md`

Expected quality behavior:

- the request should be recognized as dataset-driven bibliometric work rather than generic multi-paper synthesis
- the output should specify database provenance, cleaning logic, technique choice, tool choice, and interpretation plan
- the output should distinguish performance analysis from science mapping

## Case 13: Tertiary study

Prompt:

```text
I want a tertiary study of existing systematic reviews on AI fairness in healthcare.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- methodology: `methodology/slr_kitchenham.md`
- review type inference: `Tertiary Study`
- workflow: `workflows/literature_synthesizer.md`
- likely discipline: `disciplines/medicine.md` or `disciplines/interdisciplinary.md`

Expected quality behavior:

- the output should clearly operate at review-of-reviews level
- the Q1 standard still applies to rigor, gap framing, and reporting discipline

## Case 14: Presentation mode

Prompt:

```text
Turn this literature review into a conference presentation script.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- mode: `presentation`
- notes: `notes/presentation_style.md`
- if source text is literature-based, may also retain synthesis modules as needed

Expected quality behavior:

- the presentation script may simplify delivery, but it should retain the intellectual rigor expected by the Q1 standard

## Case 15: Abstract writing

Prompt:

```text
Write an abstract for my ACM paper on benchmark robustness in large language models.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- section: `Abstract`
- style: `styles/acm.md`
- discipline: `disciplines/engineering.md`
- phrases: `phrases/abstracts.yml`
- may also use `phrases/cautious_language.yml`

Expected quality behavior:

- the abstract should satisfy the Q1 checklist through explicit problem, gap, objective, method, key findings, contribution, and implication coverage

## Case 16: Humanized academic rewrite

Prompt:

```text
Rewrite this discussion section so it sounds less AI-generated but still formal and suitable for a journal.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- anti-AI emphasis:
  - `anti_ai/cadence_rules.md`
  - `anti_ai/rhythm_variation.md`
  - `anti_ai/transition_control.md`
  - `anti_ai/humanisation_constraints.md`
  - `anti_ai/humanizer_overlay.md`
- section if detectable: `Discussion`
  - `phrases/discussion.yml`
  - `phrases/cautious_language.yml`
  - `phrases/comparison.yml`

Expected quality behavior:

- the rewrite should remove formulaic AI signals while preserving Q1-level discussion quality
- it should remain theoretically engaged, evidence-based, and publication-ready

## Case 17: Manuscript diagnosis

Prompt:

```text
Review my draft and tell me whether it is Q1-ready. Identify the biggest weaknesses and what I should fix first.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- workflow: `workflows/manuscript_diagnosis.md`
- anti-AI: active by default

Expected quality behavior:

- the diagnosis should rank the main risks by severity
- the diagnosis should identify issues such as weak novelty, unsupported gap, descriptive literature review, weak theory, under-justified methods, or shallow discussion
- the output should provide a concrete upgrade path rather than vague advice

## Case 18: Provenance and methodology confidence test

Prompt:

```text
/open-slr
Design a systematic literature review protocol on explainable AI for medical image diagnosis.
Use Kitchenham, SEGRESS, and PRISMA principles.
Write the opening background and gap framing in a style informed by Academic Phrasebank.
```

Expected routing:

- standards: `standards/q1_wos_readiness.md`
- standards: `standards/self_review_protocol.md`
- methodology: `methodology/slr_kitchenham.md`
- methodology: `methodology/gap_validation.md`
- workflow: `workflows/literature_synthesizer.md`
- phrases:
  - `phrases/introduction.yml`
  - `phrases/literature_review.yml`
  - `phrases/cautious_language.yml`
- rhetorical moves:
  - `rhetorical_moves/cars_model.md`
- discipline: `disciplines/medicine.md` or `disciplines/interdisciplinary.md`
- anti-AI: all default `anti_ai/*`

Expected quality behavior:

- the opening should use Phrasebank-style rhetorical moves to establish territory, identify a defensible niche, and state the review purpose
- the protocol logic should follow Kitchenham-style planning structure
- the reporting logic should reflect SEGRESS and PRISMA expectations for transparency, selection logic, and reporting discipline
- the gap should be evidence-based, not exaggerated
- the prose should remain formal, non-formulaic, and suitable for a Q1-oriented review paper

Observed test output:

```text
Explainable artificial intelligence has become an increasingly important area of inquiry in medical image diagnosis, particularly as deep learning systems are deployed in settings where transparency, trust, and clinical accountability are critical. A growing body of literature has examined the predictive performance of such systems; however, the extent to which existing reviews have systematically synthesized evidence on explainability methods, diagnostic contexts, and evaluation practices remains unclear. This review therefore aims to identify, assess, and synthesize the current evidence on explainable AI approaches for medical image diagnosis using a predefined protocol informed by Kitchenham-style secondary-study guidance and reported with PRISMA- and SEGRESS-aligned transparency. In doing so, the review seeks to clarify dominant methodological trends, recurring limitations, and unresolved gaps that continue to affect the interpretability and practical integration of these systems.
```

Observed validation notes:

- Phrasebank behavior is visible in the move sequence: territory -> gap -> purpose -> significance.
- Kitchenham behavior is visible in the protocol-oriented review aim.
- SEGRESS and PRISMA behavior is visible in the emphasis on transparent reporting and structured synthesis.
- The gap is phrased cautiously rather than as an exaggerated absence claim.
- The prose is formal and restrained enough to satisfy the anti-AI and Q1-governance expectations for this kind of opening.

## Pass criteria

A routing implementation passes if:

- the primary workflow or section is correctly inferred
- the relevant style and discipline overlays are selected when signaled
- systematic-review requests load the methodology layer
- single-paper and multi-paper tasks are not confused
- anti-AI modules remain enabled by default unless explicitly disabled
- the Q1 WoS standard remains enabled by default unless explicitly relaxed
- the self-review protocol remains enabled by default unless explicitly relaxed
- gap validation is applied where novelty or contribution framing is involved
- the agent uses phrase libraries as controlled rhetorical resources within that Q1 standard, not as template fillers
- provenance-sensitive cases correctly combine Phrasebank-based rhetoric with Kitchenham/SEGRESS/PRISMA methodology rather than flattening them into generic review prose

## Namespaced slash-command variants

Use these to avoid conflicts with native Codex commands:

- `/open-intro`
- `/open-analyze`
- `/open-synthesize`
- `/open-slr`
- `/open-bibliometric`
- `/open-rewrite`
- `/open-review`
