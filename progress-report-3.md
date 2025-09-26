# SudoStake — Progress Report 3

Date: 2025-09-26

Roadmap Reference: `sudostake-roadmap-near-mvp.md`

## Executive Summary

- M1 (Web Testnet Feature‑Complete) is completed as of Sep 23, 2025, ahead of the Sep 30 target.
- M2 (Factory Optimization • Optimized Path) is in progress. The upstream blocker near-sdk-rs PR #1369 has merged; proceeding with the optimized path.
- Focus shifts to code‑hash registry, WASM size reductions, and migration plan to a global Vault contract behind flags.

## Current Status vs Roadmap

1. M1 — Completed (Sep 23, 2025)
   - End‑to‑end flows validated on testnet: mint → delegate/undelegate → request → accept → repay → liquidation (post‑deadline) → claims processing.
   - Marketplace for lenders to discover open requests is live.
   - Counter‑offers (amount‑only) deferred (time‑permitting in scope; not required for M1).

2. M2 — In Progress (Target Nov 15, 2025)
   - Optimized path unlocked by near-sdk-rs PR #1369 merge.
   - Tasks:
     - Implement code‑hash registry and apply WASM size reductions.
     - Deploy SudoStake Vault as a global contract; retain public view compatibility.
     - Author migration plan from per‑vault instances; roll out behind feature flags.
     - Produce before/after size‑and‑cost report; extend end‑to‑end tests.
   - Checkpoint: Nov 1, 2025 readiness review; fallback path remains documented but not expected.

## Risks & Mitigations

- Migration complexity from per‑vault to global contract
  - Mitigation: progressive rollout behind flags; maintain view compatibility; add migration tests.

- Integration regressions during optimization
  - Mitigation: expand integration tests; preserve event schemas; add monitoring for candidate deployments.

## Next Steps (2‑Week Outlook)

- Finalize code‑hash registry and WASM size baselines (report draft).
- Implement feature flags and candidate global Vault deployment.
- Draft migration guide and run rehearsal on testnet with a small cohort.

## Appendix

- M1 Completed: Sep 23, 2025
- M2 Target: Nov 15, 2025
- Roadmap Doc: `sudostake-roadmap-near-mvp.md`
