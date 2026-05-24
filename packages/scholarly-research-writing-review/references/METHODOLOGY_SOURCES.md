# Methodology Sources

This file summarizes the local methodology sources used by the scholarly review skill.

## Purpose

The goal is to keep the systematic-review and evidence-synthesis layer usable without internet dependence when the bundled local notes are sufficient.

Primary rule:

- use the local Markdown/YAML methodology notes first
- do not rely on web search for Kitchenham, SEGRESS, PRISMA, Paul et al. 2023, or the local bibliometric-methodology sources unless the user asks for broader external research

## Core source index

- [`methodology/source_manifest.yml`](methodology/source_manifest.yml)

## Core local methodology notes

- [`methodology/source_notes/donthu_bibliometric_2021.md`](methodology/source_notes/donthu_bibliometric_2021.md)
  - core bibliometric-methodology and technique-selection guidance
- [`methodology/source_notes/ozturk_bibliometric_design_2024.md`](methodology/source_notes/ozturk_bibliometric_design_2024.md)
  - bibliometric research-design, transparency, and analysis-fit guidance
- [`methodology/source_notes/kitchenham_guidelines_core.md`](methodology/source_notes/kitchenham_guidelines_core.md)
  - main SLR process and protocol structure
- [`methodology/source_notes/prisma_2020_core.md`](methodology/source_notes/prisma_2020_core.md)
  - reporting completeness and checklist logic
- [`methodology/source_notes/segress_core.md`](methodology/source_notes/segress_core.md)
  - software-engineering reporting adaptation

## Supporting local methodology notes

- [`methodology/source_notes/passas_bibliometric_steps_2024.md`](methodology/source_notes/passas_bibliometric_steps_2024.md)
  - seven-step operational bibliometric checklist
- [`methodology/source_notes/segress_supplement.md`](methodology/source_notes/segress_supplement.md)
  - item-level elaboration and examples
- [`methodology/source_notes/kitchenham_process_review_2013.md`](methodology/source_notes/kitchenham_process_review_2013.md)
  - SR process refinements and search-strategy cautions
- [`methodology/source_notes/kitchenham_preliminary_2002.md`](methodology/source_notes/kitchenham_preliminary_2002.md)
  - empirical-study quality expectations
- [`methodology/source_notes/paul_framework_reviews_2023.md`](methodology/source_notes/paul_framework_reviews_2023.md)
  - framework-based and theory-building review design

## Role split

- Donthu et al. 2021: core bibliometric methodology and technique choice
- Ozturk et al. 2024: bibliometric research-design and transparency logic
- Passas 2024: compact operational steps and software-oriented workflow
- Kitchenham: review-process design
- PRISMA 2020: reporting completeness
- SEGRESS: software-engineering reporting adaptation
- Paul et al. 2023: framework-based and theory-building synthesis design

## Theoretical framework sources

- [`methodology/source_notes/lim_2026_theory_development.md`](methodology/source_notes/lim_2026_theory_development.md)
  - theory typology, 3Us gap taxonomy, contribution novelty levels, theoretical interestingness, 3Rs implications
- [`methodology/source_notes/luft_et_al_2022_literature_reviews_frameworks.md`](methodology/source_notes/luft_et_al_2022_literature_reviews_frameworks.md)
  - framework selection (three considerations), conceptual framework construction, alignment with methods and findings
- [`methodology/source_notes/grant_osanloo_theoretical_framework_2014.md`](methodology/source_notes/grant_osanloo_theoretical_framework_2014.md)
  - 8-step framework selection, 9-point integration checklist, house-blueprint analogy for dissertation contexts
- [`methodology/source_notes/klopper_matrix_literature_review_2007.md`](methodology/source_notes/klopper_matrix_literature_review_2007.md)
  - concept matrix method for structuring literature reviews by key concept columns

## Role split

- Lim 2026: theory development, gap classification, contribution novelty, theoretical interestingness
- Luft et al. 2022: framework selection and conceptual framework construction for academic articles
- Grant & Osanloo 2014: framework integration for dissertation and thesis work
- Klopper et al. 2007: concept-matrix organisation of literature reviews
- Donthu et al. 2021: core bibliometric methodology and technique choice
- Ozturk et al. 2024: bibliometric research-design and transparency logic
- Passas 2024: compact operational steps and software-oriented workflow
- Kitchenham: review-process design
- PRISMA 2020: reporting completeness
- SEGRESS: software-engineering reporting adaptation
- Paul et al. 2023: framework-based and theory-building synthesis design

## Recommended use

For standard SLR or SMS tasks:

- load Kitchenham + PRISMA + SEGRESS as needed

For theory-building or framework-based reviews:

- also load Paul et al. 2023

For bibliometric-analysis tasks:

- load Donthu + Ozturk et al. first
- add Passas when the user needs a more operational step list or tool-oriented workflow

For theoretical framework selection, justification, or contribution framing:

- load Lim 2026 + Luft et al. 2022
- add Grant & Osanloo 2014 for dissertation or thesis contexts
- add Klopper et al. 2007 when structuring the literature review by concept columns

For manuscript writing tasks unrelated to secondary-study methodology:

- do not load this whole stack unless the task clearly requires it
