# Command Reference

This system supports namespaced task labels at the routing layer.

These are routing conventions, not guaranteed native Codex commands.

Primary usage should be:

- natural-language prompting
- explicit skill invocation such as `Use $scholarly-research-writing-review.`

Examples:

- `Use $scholarly-research-writing-review. Review my draft and tell me whether it is Q1-ready.`
- `Design a systematic literature review protocol on explainable AI for medical image diagnosis using Kitchenham, SEGRESS, and PRISMA.`

The `open-*` forms below are optional textual labels only.

## Optional routing labels

- `/open-rewrite` for rewriting and polishing prose while preserving meaning
- `/open-review` for draft review, Q1-readiness assessment, and weakness identification
- `/open-diagnose` for structured manuscript diagnosis and upgrade planning
- `/open-analyze` for single-paper analysis and literature-table extraction
- `/open-synthesize` for multi-paper synthesis, literature reviews, and gap positioning
- `/open-slr` for systematic review, mapping study, tertiary study, PRISMA, and Kitchenham-aligned work
- `/open-abstract` for abstract drafting or revision
- `/open-intro` for introduction drafting or revision
- `/open-litreview` for literature review and related-works drafting
- `/open-methods` for methods drafting or revision
- `/open-discussion` for discussion drafting or revision
- `/open-response` for reviewer-response letters and rebuttals

## Behavior rule

- If an `open-*` label is present in plain text, the router should treat it as a high-priority task signal.
- The remaining text should still be used to infer style, discipline, English variant, and quality level.
