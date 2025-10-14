---
Purpose: Provide a written companion to the SudoStake NEAR pitch deck for investors and partners.
Owner: Growth & Partnerships (TBD)
Last Updated: 2025-10-08
Primary Audience: Investors & VCs, Ecosystem Partners & Builders, Internal Stakeholders
---

# SudoStake on NEAR — Written Pitch

Use this written companion alongside the live deck when preparing investor or partner conversations.

## One-Liner
Stake. Earn. Borrow. Native NEAR staking with oracle-less credit: borrow against staked NEAR without unbonding or custodians.

## Problem
- Unbonding delays or wrapped/synthetic assets introduce risk to stakers seeking liquidity.
- Lenders lack non-custodial access to productive collateral on NEAR.
- Competing designs depend on oracles, pooled risk, or off-chain coordination.

## Solution
- User-owned vaults delegate NEAR and expose deterministic credit flows (request → accept → repay → liquidate).
- Borrowers post USDC terms; lenders accept via token transfer and JSON message.
- Missed deadlines trigger liquidation in a fixed order (liquid balance → matured unstake → targeted unstake), halting at the collateral limit.

## Product (MVP)
- **Web app:** Mint vault, deposit/withdraw, delegate/undelegate, claim unstaked, request loans, accept/repay, monitor liquidation.
- **Agent interface:** Mirrors web flows via intents/chat.
- **Contracts:** Factory + Vault with comprehensive tests and stable integration points.

## How It Works
- **Factory:** Deploys per-user vaults (owner, index, version) with configurable creation fee.
- **Vault:** Manages NEAR/FT custody, staking-pool delegation, unstake tracking, and the full credit lifecycle.
- **Offers:** NEP-141 `ft_transfer_call` with JSON payloads; emits `EVENT_JSON` logs for ecosystem indexing.

## Why NEAR Now
- Native USDC and predictable staking epochs (staking_pool standard).
- Growing adoption of intents and agent frameworks.
- NEAR ecosystem focus on non-custodial credit primitives.

## Differentiation
- Oracle-less, non-custodial, deterministic liquidation.
- Composable interfaces/events for automation and integrations.

### Quick Comparison
|  | SudoStake | Pooled MM | CDP | Custodial |
|---|---|---|---|---|
| Collateral control | Your vault | Pool/LST | Collateral contract | Custodian |
| Oracles/peg needed | No | Yes | Yes | Off-chain marks |
| Settlement trigger | Time/expiry | Price/health | Price/peg | Off-chain |
| Systemic risk | Per-vault only | Pool contagion | Peg/system | Counterparty |
| Day-1 depth | Moderate | High | Medium | High |
| Fees on credit | 0 | Often > 0 | Often > 0 | Fees/spread |

## Market & Users
- NEAR stakers/validators.
- Lenders, treasuries, and market makers.
- Wallets, super-apps, and protocols requiring reusable collateral primitives.

## Traction & Status
- Prior chain (Archway): ~231 vaults created.
- NEAR MVP: Rust/near-sdk contracts with near-workspaces tests; web client in active development.
- Step 1 — Testnet Flow Validation: Core flows and marketplace view delivered per action plan.

## Business Model
- Vault mint fee (Factory contract).
- Optional validator commissions (post-MVP exploration).
- No protocol fees on borrow/lend/liquidate during MVP.

## Go-to-Market
- Testnet → mainnet candidate behind flags → staged mainnet rollout.
- Wallet/agent integrations, developer examples, bounties, and validator partnerships.

## Tech & Architecture
- Contracts: Rust/near-sdk with deterministic execution and event-rich logging.
- Factory handles subaccount deploy + fee; Vault covers staking + credit lifecycle with global processing lock for async safety.
- Integrations: NEP-141 tokens, staking-pool operations, near-workspaces testing. Web: Next.js/React. Agent: near-ai workflows.

## Security & Risk
- Deterministic flows with minimal external dependencies.
- Storage reserve + processing lock guardrails; retryable refunds.
- Reproducible builds, integration tests, audits, and bug bounty planned pre-scale.

## Roadmap (High-Level)
- **Step 1 — Testnet Flow Validation:** Request, accept, repay, liquidate, and marketplace experiences delivered on NEAR testnet.
- **Step 2 — Shared Vault Deployment:** Global vault rollout via code-hash registry implemented directly in the Rust factory contract.
- **Steps 3–4 — Mainnet Candidate and Beta Stabilization:** Promote the optimized stack to a gated mainnet beta and harden reliability.
- **Steps 5–6 — Mainnet Launch Waves:** Gradual mainnet rollout with expanding access, monitoring, and reliability targets.

## Team
- Maintainer: Muhammed Ali (protocol, web, agents). Recruiting contributors in Rust/NEAR, Next.js/React, DevOps. Governance path: solo → 2-of-3 multisig as team scales.

## Ask
- Support to reach mainnet: security review, indexing guidance, wallet/agent distribution.
- Early partners for onboarding flows and recovery playbooks.

## Contact
- hello@sudostake.com • https://sudostake.com • GitHub: https://github.com/sudostake

## Related Documents
- [Project One-Pager — SudoStake on NEAR](./project-one-pager-sudostake-near.md)
- [SudoStake Action Plan — NEAR MVP & Launch](../execution/sudostake-action-plan-near-mvp.md)
- [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Update alongside the next fundraising cycle or when action-plan steps shift (target check-in: 2025-10-31).
