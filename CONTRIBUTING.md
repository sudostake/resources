Contributing Guide (Docs)

Scope
- This guide covers documentation contributions only. For code contributions, see the relevant contract/web/agent repositories.

Sources of Truth
- Roadmap, status, execution steps: sudostake-roadmap-near-mvp.md
- Product spec and flows: PERSONAS_AND_FLOWS.md
- Milestone M1 details: sudostake_m1_progress.md
- Infra overview and external references: SudoStake_Core_Infra_on_NEAR.md
- Risk register: SUDOSTAKE_RISK_REGISTER.md
- Team/org details: sudostake-team-org-details.md
- Messaging (lean canvases, one-pager, pitch): secondary; must not override specs/roadmap.

Consistency Rules
- Terms: use “global Vault contract”, “code-hash registry”, “counter-offers (amount-only)”, “feature flags”.
- Interfaces: keep exact method names (ft_transfer_call, ft_on_transfer) and staking-pool ops (deposit_and_stake, unstake, withdraw_all).
- Hyphens: use ASCII hyphen (-) in text; avoid typographic dashes for key terms.
- Status notes: progress reports must include a note that the roadmap is authoritative for dates/scope.
- Update order: when scope/rules/dates change, update the source-of-truth doc first, then reflect in summaries.

Style
- Be concise; avoid repetition. Prefer bullets to dense paragraphs.
- Preserve all facts, constraints, and decisions; do not remove content without ensuring it exists in a source-of-truth document.
- Use ISO-like dates (e.g., 2025-09-26) or clear month/day formats consistently across a document.
- Headings: keep a shallow hierarchy; avoid decorative separators unless they add clarity.

Change Process
- For roadmap/scope changes, open a PR that:
  - Updates sudostake-roadmap-near-mvp.md first.
  - References related updates in progress reports or messaging docs.
- Commit messages: describe what changed and why (e.g., “docs: standardize ‘code-hash registry’; add feature flags note”).
- Link issues or tasks when applicable.

Review Checklist
- Does this change modify scope, rules, or dates? If yes, is the source-of-truth updated?
- Are key terms standardized (global Vault, code-hash registry, counter-offers, feature flags)?
- Are method names and protocols accurate (NEP-141, staking-pool ops)?
- Is redundant text removed without losing information?
- Are references/links correct and minimal?
