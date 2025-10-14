---
Purpose: Summarize execution status and upcoming work for stakeholders.
Owner: Muhammed Ali
Last Updated: 2025-10-08
Primary Audience: Contributors, Investors & VCs, Community & Prospective Users
---

# SudoStake — Progress Report 2

Date: 2025-09-23

Action plan link: [SudoStake Action Plan — NEAR MVP & Launch](./sudostake-action-plan-near-mvp.md) — use this for full execution scope and timelines.

## What Happened
- Step 1 (testnet flow validation) hit code-complete a week early. The testnet app already covers wallet connect, vault management, staking, loan requests, lender fills, and liquidations.
- Counter-offers (amount-only) are in the post–Step 1 backlog, and the marketplace runs cleanly without them.
- The merged [near-sdk-rs PR #1369](https://github.com/near/near-sdk-rs/pull/1369) unblocked the shared vault path needed for Step 2 — Shared Vault Deployment.

## Where We Are
- **Step 1 — Delivered (Target was 2025-09-30):** All MVP flows run on NEAR testnet and passed manual checks.
- **Step 2 — Shared Vault Deployment (Target 2025-11-15):**
  - Plan the rollout of the shared vault contract and the code-hash registry.
  - Collect baseline size and cost numbers before optimizations land.
  - Finalize deployment sequencing so the shared vault path can ship safely once work begins.

## Risks We Are Watching
- No open risks for Step 1.
- For Step 2, careful staging and regression testing are required because the factory will switch entirely to the shared vault path.

## Next Two Weeks
- Start the shared vault work: registry design, deploy plan, and launch checklist.
- Record the starting WASM size and gas costs so improvements are easy to see.
- Hold the Nov 1 readiness checkpoint on the calendar; confirm the optimized path is ready to ship.

## Related Reading
- [Step 1 (Testnet Flow) Review](./sudostake-m1-progress.md) — full write-up of the finished release.
- [Progress Report 3](./progress-report-3.md) — follow-up on Step 2 tasks once work kicked off.

## Next Update
- Next report will land on 2025-09-26 together with Progress Report 3.
