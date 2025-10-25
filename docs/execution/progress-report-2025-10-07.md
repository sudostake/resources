---
Purpose: Provide the latest execution status and near-term focus areas.
Owner: Muhammed Ali
Last Updated: 2025-10-08
Primary Audience: Contributors, Investors & VCs, Community & Prospective Users
---

# SudoStake — Progress Report (2025-10-07)

Date: 2025-10-07  •  Source plan: [SudoStake Action Plan — NEAR MVP & Launch](./sudostake-action-plan-near-mvp.md)

## Summary
- `sudostake_web_near` now delivers every vault + loan action on testnet with Wallet Selector, Firestore indexing, REST fallbacks, and dedicated vault detail screens.
- `sudostake_agent_near` exposes typed tools for staking, vault summaries, loan lifecycle, token registration, and liquidation with headless signing gated on `NEAR_ACCOUNT_ID` / `NEAR_PRIVATE_KEY`.
- `sudostake_contracts_near` bundles the latest `vault.wasm`, plus unit and near-workspaces tests for staking, lending, refund retries, and takeover flows; shared Firebase/RPC/USDC utilities serve both clients.

## Status
- **Step 1 — Testnet Flow Validation:** Contracts, web, and agent are code-complete; we still owe a live testnet rehearsal with Firebase + RPC credentials before full sign-off.
- **Step 2 — Shared Vault Deployment (Target 2025-11-15):**
  - Factory still deploys per-vault `vault.wasm` (~10 NEAR fee); registry design/implementation not started.
  - Size/gas instrumentation and “before/after” metrics depend on the registry skeleton.
  - Migration guardrails and shared artifact publishing remain open tasks.

## Risks
- **Vault creation cost:** Without the shared code hash, vault mints remain expensive and slow partner onboarding.
- **Indexing stack availability:** Dashboard/agent require Firebase Admin + Vercel API routes; misconfigured service accounts block vault indexing.
- **Registry migration:** Moving every vault to the shared hash demands rehearsals and rollback tooling to avoid stuck deployments.

## Next (2 Weeks)
- Finalize the registry design, then land contract changes in `sudostake_contracts_near`.
- Build the shared `vault.wasm` pipeline with artifact publishing, checksums, and size/gas baselines.
- Enable config toggles in web + agent to switch between embedded vs shared vault paths.
- Run a full testnet rehearsal with real Firebase credentials to validate indexing, lender views, and liquidation tooling.

## Looking Ahead
- After the registry ships, promote optimized contracts to testnet, refresh clients, and finalize migration + rollback guides before the Nov 1 readiness checkpoint.
- Align the mainnet candidate plan with the shared-code path so we avoid another factory migration pre-beta.

## Next Update
- External stakeholders will receive the next update by 2025-10-14 (earlier if registry milestones shift).
