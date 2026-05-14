# Literature Synthesizer Workflow

Adapted from `lit-synthesizer.skill`.

## Purpose

Use this workflow when the user asks to:

- compare multiple papers
- synthesize studies
- write a literature review
- identify a research gap
- position a contribution against prior work
- produce a related-works discussion

This workflow is for multi-paper synthesis, not single-paper extraction.

## Inputs

- two or more papers, summaries, matrix rows, or prior article-analysis outputs
- optional user research direction for gap positioning

## Mandatory Clarification

If the user's research direction or intended contribution is not stated and the task explicitly asks for:

- gap positioning
- contribution positioning
- related work aligned to the user's study

ask one focused question:

`What is your own research direction or proposed contribution?`

If the task is only comparative synthesis, proceed without asking.

## Analytical Levels

### Micro-level

Deconstruct each paper into:

- problem formulation
- methodology
- methods or techniques
- data or setup
- strengths
- explicit limitations
- implicit limitations
- evaluation metrics

### Meso-level

Reason across papers to identify:

- convergence
- divergence
- evolution
- gaps

### Macro-level

Critically evaluate the literature as a field:

- methodological weaknesses
- system-level assumptions
- trade-offs
- evidence limitations

## Writing Rule

Write by theme, not paper-by-paper.

The synthesis should:

- group papers under shared arguments
- compare within paragraphs
- move from consensus to divergence to limitations to gap
- sound like a unified scholarly narrative

## Default Outputs

### Literature discussion

Return:

- opening domain framing
- dominant paradigms
- methodological diversity
- evaluation landscape
- collective limitations
- research gap
- closing bridge to the user's direction if provided

### Synthesis matrix

Return dimensions such as:

- study
- method
- setup
- findings
- strengths
- explicit limitations
- implicit limitations
- quality or confidence

### Gap positioning

Return:

- underexplored areas
- why the gaps matter
- how the user's direction responds to them

## Quality Constraints

- do not flatten real disagreements across studies
- distinguish explicit from implicit limitations
- avoid sequential mini-summaries
- ensure claimed gaps are grounded in the assembled evidence
- use cautious language where evidence is mixed

## Interaction with Methodology Layer

If the user frames the task as an SLR, SMS, tertiary study, Kitchenham review, or PRISMA-aligned review, load:

- `methodology/slr_kitchenham.md`

and make the synthesis comply with protocol, screening, and reporting discipline.

## Router Rule

Load this workflow when the user says:

- compare these papers
- synthesize these studies
- write my literature review
- what is the research gap
- position my research
- related works section
