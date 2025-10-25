---
Purpose: Summarize execution status and upcoming work for stakeholders.
Owner: Muhammed Ali
Last Updated: 2025-10-08
Primary Audience: Contributors, Investors & VCs, Community & Prospective Users
---

# SudoStake — Progress Report 2

Date: 2025-09-23  •  Source plan: [SudoStake Action Plan — NEAR MVP & Launch](./sudostake-action-plan-near-mvp.md)

## Summary
- Step 1 (Testnet Flow Validation) reached code-complete a week ahead of the 2025-09-30 target and now exercises every wallet → vault → loan lifecycle on NEAR testnet.
- Counter-offers (amount-only) moved to the backlog; current marketplace UX is stable without them.
- [near-sdk-rs PR #1369](https://github.com/near/near-sdk-rs/pull/1369) merged, clearing the blocker for the shared vault + code-hash registry effort in Step 2.

## Status
- **Step 1 — Delivered:** Manual validation covered wallet connect, vault actions, staking, offers, and liquidations. No further work pending beyond small UX polish.
- **Step 2 — Shared Vault Deployment (Target 2025-11-15):**
  - Finalize the registry design, rollout plan, and launch checklist.
  - Capture baseline vault wasm size (301 962 bytes) and mint fee (10 NEAR) to measure optimizations.
  - Sequence deployment so the factory swap to the shared vault path ships safely.

## Risks
- Step 1: None.
- Step 2: Factory migration must be staged with regression coverage; switching entirely to the shared code hash without rehearsals risks stalled vault mints.

## Next (2 Weeks)
- Kick off the shared vault registry design and deployment planning.
- Log starting WASM size and gas/storage costs to anchor optimization targets.
- Confirm the 2025-11-01 readiness checkpoint agenda so the optimized path can be signed off on schedule.

## Next Update
- Progress Report 3 will publish on 2025-09-26.
