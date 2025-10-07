---
Purpose: Document SudoStake team structure, ownership, and contact paths.
Owner: Muhammed Ali
Last Updated: 2025-09-29
Primary Audience: Contributors, Partners, Investors
---

# SudoStake — Team & Org Details

## Snapshot
- **One-liner:** Native staking with composable credit.
- **Current focus:** Archway deployment live; NEAR MVP underway (Rust/NEAR-SDK + Next.js frontend).
- **Operating model:** Open-source, non-custodial protocol. Solo maintained by Muhammed Ali with contributor support via GitHub.
- **Proof points:** Archway release (~231 vaults). NEAR-native MVP in progress.
- **Security posture:** Reproducible builds, signed releases, integration tests; audit and bounty planned pre-scale.

## At a Glance
| Attribute | Details |
| --- | --- |
| Status | Open-source protocol; no client funds held |
| Maintainer | Muhammed Ali |
| Entity | None (incorporation planned) |
| Location | Lagos, Nigeria (UTC+1) |
| Contact | codemuhammed@gmail.com · hello@sudostake.com · Telegram: https://t.me/palingram |
| Web | https://sudostake.com · https://github.com/sudostake |

## Team Summary
- Headcount: 1 core maintainer plus open-source collaborators (actively recruiting).
- Focus areas: Rust/NEAR contracts, Next.js/React frontend, DevOps/release, documentation/community.
- Collaboration: Public roadmap/issues, PR-driven workflow, lightweight contributor agreements as required.

## Core Roles
- **Muhammed Ali — Founder, Maintainer, Lead Protocol Engineer**
  - Responsibilities: Protocol architecture, Rust smart contracts (NEAR-SDK, prior CosmWasm), CI/CD, product direction.
  - Highlights: Oracle-less vault flows, reproducible WASM builds, near-workspaces test suites, Cosmos→NEAR migration, governance transition plan (solo → 2-of-3 multisig once ≥2 maintainers).
- **Open Contributors (recruiting)**
  - Target skills: Contracts, frontend, DevOps, docs/community.
  - Engagement: Issues/PRs with bounty support when funding allows.

## Advisors & Partners
- Advisors: None formal; informal ecosystem feedback ongoing.
- Security reviewers: External Rust/NEAR partners per action step (vendor TBD).
- Validator partners: Under evaluation; none confirmed.

## Operating Model & Governance
- Operations: Solo maintainer coordinating open-source contributions.
- Governance: Single maintainer today → planned move to 2-of-3 multisig when ≥2 maintainers active; on-chain parameters where feasible.

## Related Documents
- [sudostake-action-plan-near-mvp.md](../execution/sudostake-action-plan-near-mvp.md)
- [documentation-refactor-tracker.md](../meta/documentation-refactor-tracker.md)
- [contributing.md](./contributing.md)

## Next Review
- Refresh once additional maintainers onboard or incorporation details finalize.
- Cadence: public backlog/action plan; release notes per step.
- Licensing: open‑source; CLAs possible for significant contributions.

5) Legal & Compliance
- Entity: none yet; incorporation planned.
- Posture: non‑custodial software; no client funds/fiat handling.
- Data: minimal; privacy‑preserving analytics if added.
- Jurisdiction: evaluating; will update on registration.

6) Security Practices
- Current: reproducible builds (cargo‑near, GitHub Actions); GPG‑signed commits/tags; protected branches; review‑required PRs; unit/integration tests (near‑workspaces) for vault lifecycle/settlement/liquidation; MEV‑aware design.
- Planned: third‑party audit; public bug bounty; expanded fuzz/property tests; scenario coverage; incident runbooks.

7) Track Record
- Archway: ~231 vaults created (agg staked TBD).
- NEAR: MVP development; CosmWasm → NEAR SDK port; deterministic builds/CI tests.
- Tooling: near‑workspaces tests; Actions builds; GPG‑signed releases.

8) Responsibility Map
- Protocol design/specs — Muhammed (R/A); Contributors (C)
- Smart contracts (NEAR) — Muhammed (R/A); Contributors (C)
- Front‑end — Muhammed (R/A); Contributors (C)
- CI/CD & releases — Muhammed (R/A); Contributors (C)
- Security & audits — Muhammed (R/A); Contributors (C)
- Partnerships & grants — Muhammed (R/A); Contributors (C)
- Community & docs — Muhammed (R/A); Contributors (C)

9) Contributors & Future Hiring
- Open‑source contributions in Rust/NEAR, Next.js/React, DevOps, docs/community.
- Good‑first‑issues & bounties in the org; step-based grants may fund bounties.
- Future hires (as funding allows): Smart Contract (Rust/NEAR), Front‑end (Next.js/React), DevOps/Infra.
- Budget: step-backed grants + protocol revenue; transparent rates/deliverables.
