# Bibliometric Analysis Methodology Layer

Use this module when the user asks for:

- a bibliometric analysis
- a bibliometric study design
- a science-mapping study
- a citation analysis
- a co-citation analysis
- a bibliographic coupling analysis
- a co-word or keyword co-occurrence analysis
- a co-authorship network analysis
- a VOSviewer-, CiteSpace-, Bibliometrix-, or Gephi-based field mapping

This is a methodology layer, not a prose-style layer. It governs study design, dataset construction, technique selection, analysis logic, and reporting discipline for bibliometric research.

## Local source policy

For bibliometric-analysis tasks, use the local methodology notes in this repository before considering any web lookup.

Load these first:

- `methodology/source_manifest.yml`
- `methodology/source_notes/donthu_bibliometric_2021.md`
- `methodology/source_notes/ozturk_bibliometric_design_2024.md`
- `methodology/source_notes/passas_bibliometric_steps_2024.md`

Treat these files as distilled notes derived from the user's local PDFs. They are the default offline methodology references for this repository's bibliometric layer.

## Positioning Rule

Bibliometric analysis is best used when:

- the field is broad
- the corpus is large
- the user needs landscape mapping, structural insight, or trend detection
- the goal is to identify influential actors, themes, collaborations, or intellectual structure

Do not force bibliometric analysis when:

- the corpus is small and manually tractable
- the review question is narrowly causal or effect-size oriented
- the user mainly needs close reading of study content rather than field-level structure

If the likely corpus is only tens or low hundreds of papers, say that a classic systematic review or a focused narrative synthesis may be more appropriate.

## Core Distinction

Distinguish bibliometric analysis from adjacent review methods:

- `bibliometric analysis` maps performance, relationships, themes, and field structure
- `meta-analysis` estimates pooled effects and moderators across comparable empirical studies
- `systematic literature review` synthesizes literature content through explicit review procedures

These methods are complementary. Do not present bibliometric analysis as a substitute for every review need.

## Mandatory Stages

### Stage 1: Define the research aim

The agent must define:

1. why bibliometric analysis is appropriate
2. what the study will reveal
3. whether the emphasis is performance analysis, science mapping, or both
4. what scope boundaries define the field
5. which research questions the analysis will answer

Research questions must fit the method. Do not propose co-word analysis if the question only concerns author productivity, and do not rely on citation counts alone if the goal is to reveal conceptual structure.

### Stage 2: Build the dataset transparently

The agent must specify:

1. database choice
2. search terms
3. search fields
4. inclusion criteria
5. exclusion criteria
6. filtering logic
7. export format
8. final sample definition

The dataset-construction process must be transparent and replicable.

### Stage 3: Select analysis techniques and tools

The agent must align the chosen technique with the stated aim.

Default technique families:

- `performance analysis` for productivity and impact
- `citation analysis` for influential publications
- `co-citation analysis` for intellectual foundations and past structure
- `bibliographic coupling` for current research fronts and present structure
- `co-word analysis` for conceptual themes and topic evolution
- `co-authorship analysis` for collaboration patterns

Prefer selecting the techniques first, then making sure the dataset includes the metadata those techniques require.

### Stage 4: Clean and preprocess the data

The agent must account for:

1. duplicate removal
2. author-name normalization
3. institution-name normalization
4. keyword harmonization where justified
5. removal of clearly irrelevant records
6. metadata completeness checks for the chosen techniques

Unclean bibliometric data can distort the field representation, so this step is mandatory.

### Stage 5: Run analysis and visualization

The agent must specify:

1. which software will be used for analysis
2. which software will be used for visualization
3. what network, cluster, or performance outputs will be generated
4. how thresholds will be set
5. how clusters or maps will be interpreted

Typical tool options include:

- `VOSviewer`
- `Bibliometrix/Biblioshiny`
- `CiteSpace`
- `Gephi`
- `Pajek`
- `UCINET`
- `R`
- `Python`

Choose tools according to the task rather than by habit. If the user wants reproducible scripted analysis, prefer `Bibliometrix`, `R`, or `Python`. If the user needs fast network mapping and visualization, `VOSviewer` is often suitable.

### Stage 6: Interpret and report

The report must answer:

1. whether the research questions were actually addressed
2. what the major performance patterns are
3. what the major structural or thematic patterns are
4. what the clusters mean substantively
5. what gaps, shifts, or opportunities emerge
6. what limits the inference

Do not stop at descriptive tables or software screenshots. The output must turn bibliometric outputs into field-level insight.

## Database Selection Rules

When designing the study, consider:

- coverage of the field
- export compatibility with the analysis software
- filtering options
- number of records exportable
- practical accessibility

Prefer one well-justified database unless there is a strong reason to combine multiple sources.

If multiple databases are used:

- explain why
- describe deduplication explicitly
- describe format harmonization explicitly

Do not combine databases casually, because overlap, inconsistent fields, and cleaning burden can undermine reliability.

## Search and Filtering Rules

Search terms must:

- reflect the field directly
- align with the research questions
- be broad enough to produce a meaningful corpus
- be narrow enough to exclude obvious out-of-scope material

Filtering may include:

- publication year
- document type
- language
- subject area or category
- index coverage
- journal set when justified
- country or affiliation only when methodologically justified
- manual title/abstract screening for out-of-scope records

If review articles or proceedings are excluded, say why.

## Technique-to-Question Mapping

Use:

- `performance analysis` for who, where, and which outlets dominate
- `citation analysis` for the most influential documents
- `co-citation analysis` for foundational knowledge bases
- `bibliographic coupling` for current thematic alignments
- `co-word analysis` for conceptual structure and topic emergence
- `co-authorship analysis` for collaboration structure

For broad retrospective studies, a mixed design is often stronger than a single-technique design.

## Performance Analysis Baseline

Unless the user explicitly wants a narrow science-mapping task, include a basic performance profile such as:

- total publications
- total citations
- average citations
- productive authors
- influential papers
- leading journals
- leading institutions
- leading countries

Performance analysis should remain descriptive but analytically interpreted.

## Reporting Constraints

The final write-up should include:

1. rationale for bibliometric design
2. research questions
3. database and search strategy
4. inclusion and exclusion logic
5. final sample description
6. data-cleaning statement
7. techniques used and why
8. software used
9. thresholds or parameter choices when relevant
10. performance-analysis findings
11. science-mapping findings
12. substantive interpretation of clusters or networks
13. limitations
14. future research directions

## Common Failure Modes

- using bibliometric analysis on a corpus that is too small
- choosing techniques that do not fit the research questions
- providing only performance tables without science mapping when broader structure is claimed
- presenting visual maps without substantive interpretation
- mixing databases without transparent harmonization
- failing to clean duplicates, author names, or affiliations
- overclaiming conceptual insight from weak metadata
- treating a bibliometric output as if it were equivalent to a full systematic review

## AI-Assistance Guardrails

AI may help with:

- search-term drafting
- metadata field planning
- code scaffolding for analysis
- cluster-label suggestions
- first-pass interpretation of maps and tables

Human validation is still required for:

- dataset relevance
- filtering decisions
- cleaning rules
- cluster interpretation
- substantive field claims
- final methodological defensibility

## Router Rule

When the user says `bibliometric`, `science mapping`, `citation analysis`, `co-citation`, `bibliographic coupling`, `co-word`, `keyword co-occurrence`, `VOSviewer`, `CiteSpace`, `Bibliometrix`, or `Gephi`, load this module in addition to any relevant writing or synthesis workflow.
