---
Purpose: Summarize milestone status and upcoming work for stakeholders.
Owner: Muhammed Ali
Last Updated: 2025-10-01
Primary Audience: Contributors, Investors & VCs, Community & Prospective Users
---

# SudoStake — Progress Report 2

Date: 2025-09-23

Roadmap link: [SudoStake Roadmap — NEAR MVP & Launch](./sudostake-roadmap-near-mvp.md) — use this for full milestone scope and timelines.

## What Happened
- Milestone 1 hit feature-complete a week early. The testnet app now covers wallet connect, vault management, staking actions, loan requests, lender fills, and liquidations.
- Counter-offers (amount-only) still exist, but they now live in the post-Milestone 1 backlog. The marketplace runs fine without them.
- The merged [near-sdk-rs PR #1369](https://github.com/near/near-sdk-rs/pull/1369) unblocked the shared vault path planned for Milestone 2 — Factory Optimization.

## Where We Are
- **Milestone 1 — Delivered (Target was 2025-09-30):** All MVP flows run on NEAR testnet and passed manual checks.
- **Milestone 2 — Factory Optimization (Target 2025-11-15):**
  - Plan the rollout of the shared vault contract and the code-hash registry.
  - Collect baseline size and cost numbers before optimizations land.
  - Keep the feature flag plan ready so we can ship safely once work begins.

## Risks We Are Watching
- No blockers for Milestone 1.
- For Milestone 2, all heavy changes will sit behind feature flags so we can fall back to the current factory if we hit regressions.

## Next Two Weeks
- Start the shared vault work: registry design, deploy plan, and launch checklist.
- Record the starting WASM size and gas costs so improvements are easy to see.
- Hold the Nov 1 readiness checkpoint on the calendar; confirm the fallback plan stays valid.

## Related Reading
- [Milestone 1 Progress Review](./sudostake-m1-progress.md) — full write-up of the finished milestone.
- [Progress Report 3](./progress-report-3.md) — follow-up on Milestone 2 tasks once work kicked off.

## Next Update
- Next report will land on 2025-09-26 together with Progress Report 3.
