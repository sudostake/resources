# SudoStake — Progress Report 3

Date: 2025-09-26  •  Roadmap: sudostake-roadmap-near-mvp.md
Note: This report summarizes current status. For authoritative dates, scope, and execution steps, see sudostake-roadmap-near-mvp.md.

## Summary
- M1 completed (Sep 23, 2025, ahead of target).
- M2 in progress (Optimized Path; near-sdk-rs PR #1369 merged).
- Focus: code-hash registry, WASM size cuts, global Vault rollout behind flags.

## Status
- M1 (done): testnet E2E validated — mint → delegate/undelegate → request → accept → repay → post-deadline liquidation → claims. Marketplace live. Counter-offers (amount-only) deferred.
- M2 (target Nov 15, 2025):
  - Tasks: code-hash registry; WASM reductions; global Vault deploy with view-compat; migration plan; size/cost report; extended E2E tests.
  - Checkpoint: Nov 1, 2025 readiness; fallback documented, not expected.

## Risks
- Migration from per-vault to global: mitigate with flags, view-compat, migration tests.
- Optimization regressions: mitigate with broader integration tests, event schema stability, candidate monitoring.

## Next (2 weeks)
- Lock code-hash registry and size baselines (draft report).
- Add flags and deploy candidate global Vault.
- Draft migration guide; run testnet rehearsal with small cohort.
