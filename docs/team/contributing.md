---
Purpose: Outline standards and workflow for contributing to SudoStake documentation.
Owner: Docs Lead (TBD)
Last Updated: 2025-09-29
Primary Audience: Contributors
---

# Contributing Guide (Docs)

## Scope
- Documentation contributions only; code changes live in the relevant contract, web, or agent repositories.

## Sources of Truth
- Roadmap, status, execution steps: sudostake-roadmap-near-mvp.md
- Product spec and flows: personas-and-flows.md
- Milestone M1 details: sudostake-m1-progress.md
- Infra overview and external references: sudostake-core-infra-on-near.md
- Risk register: sudostake-risk-register.md
- Team/org details: sudostake-team-org-details.md
- Messaging collateral (lean canvases, one-pager, pitch) is secondary; never override roadmap or specs.

## Consistency Rules
- Terms: keep “global Vault contract”, “code-hash registry”, “counter-offers (amount-only)”, “feature flags”.
- Interfaces: preserve method names (ft_transfer_call, ft_on_transfer) and staking-pool ops (deposit_and_stake, unstake, withdraw_all).
- Hyphenation: use ASCII hyphen (-) for terminology; avoid typographic dashes.
- Progress reports must reiterate that the roadmap is authoritative for scope/dates.
- Update order: change the source-of-truth document first, then adjust summaries.

## Metadata & Structure
- Add front matter to any document you touch:
  - Purpose — single-sentence goal.
  - Owner — accountable role or individual.
  - Last Updated — ISO date (YYYY-MM-DD).
  - Primary Audience — comma-separated list from the standard audience set.
- File names:
  - Use lowercase-hyphenated names for every Markdown document (e.g., `project-one-pager-sudostake-near.md`, `sudostake-roadmap-near-mvp.md`).
  - Avoid underscores, spaces, or camel/title case for portability.
- Flow: summary → detail → references. Add “Related Documents” and “Next Review” where helpful.
- Prefer tables or bullets over dense paragraphs for complex ideas.

## Style
- Be concise and remove repetition unless it aids comprehension.
- Preserve facts, constraints, and decisions; confirm they exist elsewhere before trimming.
- Use ISO-like dates (2025-09-26) consistently.
- Keep heading hierarchy shallow; skip decorative separators.

## Change Process
- For scope or roadmap changes:
  - Update sudostake-roadmap-near-mvp.md first.
  - Cross-reference related progress reports or messaging docs.
- Commit messages should capture what changed and why (e.g., `docs: standardize “code-hash registry”; add feature flags note`).
- Link issues or tasks when relevant.

## Review Checklist
- Does the change alter scope, rules, or dates? If yes, is the source-of-truth updated?
- Are key terms consistent (global Vault, code-hash registry, counter-offers, feature flags)?
- Are method names and protocols accurate (NEP-141, staking-pool operations)?
- Did we eliminate redundant text without losing meaning?
- Are references minimal, correct, and using relative links?
