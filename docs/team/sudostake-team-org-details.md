---
Purpose: Document SudoStake team structure, ownership, and contact paths.
Owner: Muhammed Ali
Last Updated: 2025-10-08
Primary Audience: Contributors, Partners, Investors
---

# SudoStake — Team & Org Details

This document centralizes team structure, contact paths, governance posture, and hiring plans for diligence discussions.

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

## Legal & Compliance
- Entity: Not yet incorporated; legal structure under evaluation.
- Posture: Ships non-custodial software only; does not hold client funds or fiat.
- Data handling: Minimal; privacy-preserving analytics introduced only with clear consent.
- Jurisdiction plans: Documented once incorporation completes; update diligence packages accordingly.

## Security Practices
- Current controls: Reproducible builds via `cargo-near`, GitHub Actions pipelines, GPG-signed commits/tags, protected branches, mandatory reviews, near-workspaces unit/integration coverage for vault lifecycle, settlement, and liquidation.
- Design guardrails: MEV-aware flows, deterministic state machine, explicit manual triggers.
- Upcoming work: Third-party audit selection, public bug bounty, expanded fuzz/property tests, and published incident runbooks before mainnet launch.

## Track Record
- Archway deployment recorded ~231 vaults prior to NEAR migration.
- NEAR MVP work covers CosmWasm → NEAR SDK port, deterministic build pipeline, and full-contract test coverage.
- Tooling contributions include near-workspaces suites, automated release workflows, and signed WASM artifacts.

## Responsibility Map
- Protocol design/specifications — Muhammed Ali (R/A); Contributors (C)
- Smart contracts (NEAR) — Muhammed Ali (R/A); Contributors (C)
- Frontend (Next.js/React) — Muhammed Ali (R/A); Contributors (C)
- CI/CD & releases — Muhammed Ali (R/A); Contributors (C)
- Security reviews & audits — Muhammed Ali (R/A); Contributors (C)
- Partnerships & grants — Muhammed Ali (R/A); Contributors (C)
- Community & documentation — Muhammed Ali (R/A); Contributors (C)

## Contributors & Future Hiring
- Actively recruiting open-source collaborators across Rust/NEAR, frontend, DevOps, docs, and community.
- Good-first issues and bounty-backed tasks will live in the organization repositories; step-based grants earmarked for additional bounties.
- Target near-term hires (funding permitting): Rust/NEAR smart-contract engineer, Next.js/React lead, DevOps/infra specialist.
- Budget planning: Current runway from NEAR Protocol Rewards Cohort 2; future protocol revenue and grants earmarked for staffing.

## Related Documents
- [sudostake-action-plan-near-mvp.md](../execution/sudostake-action-plan-near-mvp.md)
- [documentation-refactor-tracker.md](../meta/documentation-refactor-tracker.md)
- [contributing.md](./contributing.md)

## Next Review
- Refresh once additional maintainers onboard or incorporation details finalize.
- Cadence: public backlog/action plan; release notes per step.
- Licensing: open-source; contribution license agreements added if significant external contributors join.
