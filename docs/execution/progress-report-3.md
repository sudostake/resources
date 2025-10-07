---
Purpose: Provide the latest execution status and near-term focus areas.
Owner: Muhammed Ali
Last Updated: 2025-10-07
Primary Audience: Contributors, Investors & VCs, Community & Prospective Users
---

# SudoStake — Progress Report 3

Date: 2025-10-07

Action plan link: [SudoStake Action Plan — NEAR MVP & Launch](./sudostake-action-plan-near-mvp.md) — full sequencing, scope, and checkpoints.

## What Happened
- `sudostake_web_near`: The Next.js dashboard now covers the full testnet flow (mint → delegate/undelegate → request → accept → repay → liquidation) with Wallet Selector, Firestore indexing, REST fallbacks, and dedicated vault detail screens.
- `sudostake_agent_near`: The NearAI agent ships with typed tools for vault summaries, staking actions, loan lifecycle management, token registration, and liquidation. Headless signing works once `NEAR_ACCOUNT_ID`/`NEAR_PRIVATE_KEY` are set.
- `sudostake_contracts_near`: Factory and vault crates compile cleanly, embed the latest `vault.wasm`, and include unit plus near-workspaces integration tests for staking, lending, refund retries, and takeover flows.
- Shared environment pieces (Firebase admin API, RPC proxy, USDC metadata) are wired across web and agent so every feature can be exercised locally once secrets are populated.

## Where We Are
- **Step 1 — Testnet Flow Validation:** Code is complete across contracts, web, and agent. We still need a full testnet rehearsal with live Firebase + RPC credentials to sign off.
- **Step 2 — Shared Vault Deployment (Target 2025-11-15):**
  - No registry work has landed yet; the factory still deploys `vault.wasm` per vault and the UI quotes ~10 NEAR to mint.
  - Design and implementation for the shared code-hash registry and size/gas instrumentation remain open.
  - Metric capture and migration guardrails are pending the registry skeleton so we can measure “before” and “after” accurately.

## Risks We Are Watching
- **Vault creation cost:** Until Step 2 lands, vaults require the full `vault.wasm` deployment fee. That slows onboarding and keeps the shared vault work on the critical path.
- **Indexing stack availability:** The dashboard and agent depend on Firebase Admin + Vercel API routes. Missing or misconfigured service accounts will block vault indexing and lender views.
- **Registry migration risk:** Moving every vault to a shared code hash needs rehearsals and rollback tooling; migrations must remain thoroughly tested.

## Next Two Weeks
- Finalize the shared vault + code-hash registry design and land the contract changes in `sudostake_contracts_near`.
- Stand up a reproducible build pipeline that publishes the shared `vault.wasm` artifact and records size/gas baselines.
- Add configuration plumbing in the web app and agent so they can switch between embedded and shared vault paths.
- Run an end-to-end testnet rehearsal with Firebase credentials to validate indexing, lender positions, and liquidation tooling.

## Looking Ahead
- Once the registry lands, promote the optimized contracts to testnet, refresh the agent/web integrations, and produce the migration and rollback guides ahead of the Nov 1 readiness checkpoint.
- Align the mainnet candidate plan around the shared-code path so we do not need another factory migration before beta.

## Related Reading
- [Step 1 (Testnet Flow) Review](./sudostake-m1-progress.md) — summary of what shipped in the initial release.
- [Risk Register](./sudostake-risk-register.md) — current risks, owners, and mitigation plans.

## Next Update
- Next external update lands by 2025-10-14 or sooner if the registry design slips or lands ahead of schedule.
