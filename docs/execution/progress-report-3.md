---
Purpose: Provide the latest milestone status and near-term focus areas.
Owner: Muhammed Ali
Last Updated: 2025-09-29
Primary Audience: Contributors, Investors & VCs, Community & Prospective Users
---

# SudoStake — Progress Report 3

Date: 2025-09-26  •  Roadmap: [sudostake-roadmap-near-mvp.md](./sudostake-roadmap-near-mvp.md)

> The roadmap remains the source of truth for dates, scope, and dependencies.

## Summary
- M1 closed on 2025-09-23 (ahead of target) with full testnet validation, including liquidation rehearsals.
- M2 (optimized path) underway; near-sdk-rs PR #1369 merged, enabling global vault deployment work.
- Active focus: code-hash registry, WASM size reduction, and controlled rollout behind feature flags.

## Status
- **Milestone 1 — ✅ Delivered:** End-to-end flows (mint → delegate → request → accept → repay → liquidation → claims) confirmed; marketplace live; counter-offers deferred.
- **Milestone 2 — 🚧 In progress (Target 2025-11-15):**
  - Tasks: code-hash registry, WASM reductions, global vault deployment with view compatibility, migration guide, size/cost report, extended E2E tests.
  - Checkpoint: Nov 1 readiness review; fallback documented but not expected.

## Risks
- **Global vault migration:** Use feature flags, maintain view compatibility, and run dedicated migration tests.
- **Optimization regressions:** Expand integration tests, lock event schemas, and monitor candidate deployments.

## Next (2 Weeks)
- Finalize code-hash registry and baseline size metrics (draft report underway).
- Ship feature flags and deploy a candidate global vault to testnet.
- Draft the migration guide and run a rehearsal with a small lender/borrower cohort.

## Related Documents
- [sudostake-roadmap-near-mvp.md](./sudostake-roadmap-near-mvp.md)
- [sudostake-m1-progress.md](./sudostake-m1-progress.md)
- [sudostake-risk-register.md](./sudostake-risk-register.md)

## Next Review
- Provide the next public update by 2025-10-03 or sooner if M2 scope shifts.
