# Research Article Analyzer Workflow

Adapted from `research-article-analyzer.skill`.

## Purpose

Use this workflow when the user provides or references a single research paper and asks to:

- analyze the paper
- summarize the article
- extract contributions
- break down the methods
- fill a literature review table entry
- identify strengths, limitations, metrics, or future work

This workflow is for single-paper deconstruction, not cross-paper synthesis.

## Inputs

- one PDF, article text, or a clear article reference
- optional user focus such as methodology, limitations, or contribution positioning

## Core Extraction Targets

Extract, without hallucination:

- title
- authors
- year
- venue
- research overview
- problem statement
- key contributions
- methodology
- methods or techniques
- advantages
- limitations
- evaluation metrics
- future work

If a component is unclear or absent, state `Not explicitly stated`.

## Workflow

### Step 1: Extract the paper text

Prefer accurate text extraction from the provided source.

### Step 2: Read for structure

Identify:

- abstract
- introduction
- method
- experiments or evaluation
- discussion or conclusion

### Step 3: Populate the analysis fields

Use the authors' framing where possible for:

- problem statement
- contributions
- limitations
- future work

### Step 4: Produce a structured output

Default outputs may include:

- a concise academic summary
- a literature review entry
- a comparison-ready row set
- a metadata-and-analysis table

## Output Shapes

### If the user asks for a summary

Return:

- overview
- contribution
- method
- findings
- limitations

### If the user asks for a literature matrix entry

Return columns such as:

- study
- problem
- method
- dataset
- metrics
- findings
- limitations

### If the user asks for spreadsheet-ready extraction

Return fields in stable order for later synthesis:

- title
- authors
- year
- venue
- problem statement
- methodology
- methods
- strengths
- limitations
- metrics
- future work

## Quality Constraints

- do not invent metrics or datasets
- distinguish methodology from specific techniques
- distinguish stated contributions from inferred value
- keep strengths evidence-based
- keep limitations specific

## Router Rule

Load this workflow when the user says:

- analyze this paper
- summarize this article
- extract the key points
- what are the contributions of this paper
- fill in a literature review table for this paper
