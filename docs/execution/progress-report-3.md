---
Purpose: Provide the latest milestone status and near-term focus areas.
Owner: Muhammed Ali
Last Updated: 2025-10-01
Primary Audience: Contributors, Investors & VCs, Community & Prospective Users
---

# SudoStake — Progress Report 3

Date: 2025-09-26

Roadmap link: [SudoStake Roadmap — NEAR MVP & Launch](./sudostake-roadmap-near-mvp.md) — full milestone dates, scope, and checkpoints.

## What Happened
- Milestone 1 finished on 2025-09-23, one week early. All testnet flows ran end to end, including liquidation dry runs.
- Milestone 2 — Factory Optimization started. The merged [near-sdk-rs PR #1369](https://github.com/near/near-sdk-rs/pull/1369) keeps the optimized factory plan on track.
- The testnet web app is live at [https://v0-sudo-stake-near-web.vercel.app/dashboard](https://v0-sudo-stake-near-web.vercel.app/dashboard). You can mint vaults, deposit, stake, request and fund USDC credit, repay, liquidate, transfer ownership, and perform the same actions via the SudoStake AI Agent.
- Main focus now: set up the code-hash registry, trim contract size, and roll out changes with feature flags.

## Where We Are
- **Milestone 1 — Delivered:** Vault minting, staking actions, loan lifecycle, and liquidation are live on NEAR testnet. Counter-offers (amount-only) stay in the backlog but do not block the MVP.
- **Milestone 2 — Factory Optimization (Target 2025-11-15):**
  - Build the registry that points every vault to the shared code hash.
  - Capture before/after WASM size and gas costs.
  - Prepare the migration guide and keep the public views working.
  - Run the Nov 1 readiness check; the fallback plan remains the existing factory if needed.

## Risks We Are Watching
- **Global vault migration:** Changes roll out behind feature flags and must pass migration tests before broad release.
- **Optimization regressions:** Extra integration tests and locked event formats guard against surprises while we shrink the contracts.

## Next Two Weeks
- Finish the registry work and publish the initial size and cost report.
- Deploy the shared vault contract as a global reference so the factory no longer embeds the WASM, cutting vault-creation costs by more than 90% (from ~3 NEAR to well under 0.3 NEAR).
- Enable feature flags, deploy the shared vault contract to testnet, and confirm normal user actions still work.
- Write and rehearse the migration guide with a small lender and borrower group.

## Looking Ahead
- Promote the optimized contracts to NEAR mainnet, connect them to the web app and AI Agent, and prepare the launch runbook once factory optimization clears the readiness checkpoint.

## Related Reading
- [Milestone 1 Progress Review](./sudostake-m1-progress.md) — summary of what shipped in Milestone 1.
- [Risk Register](./sudostake-risk-register.md) — current risks, owners, and mitigation plans.

## Next Update
- Next external update lands by 2025-10-03 or sooner if Milestone 2 scope changes.
