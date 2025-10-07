---
Purpose: Provide an investor- and partner-ready snapshot of SudoStake on NEAR.
Owner: Growth & Partnerships (TBD)
Last Updated: 2025-10-01
Primary Audience: Investors & VCs, Ecosystem Partners & Builders, Community & Prospective Users
---

# SudoStake on NEAR — One-Pager

## TL;DR
- Borrow USDC against staked NEAR without unbonding or handing funds to a custodian.
- Oracle-free lifecycle with user-owned vaults, predictable NEAR epochs, and native USDC.
- MVP testnet flows work end to end in the web app and AI Agent; mainnet rollout stays behind feature flags until ready.

## Problem & Solution
| Problem | SudoStake Approach |
| --- | --- |
| Stakers must unbond or wrap NEAR to unlock liquidity. | Per-user vaults keep NEAR delegated while issuing oracle-less credit lines. |
| Lenders lack a transparent, non-custodial venue on NEAR. | Deterministic request → accept → repay → liquidate lifecycle with auditable events. |
| Complex settlement logic introduces integration risk. | Stable interfaces (NEP-141) and EVENT_JSON logs for easy indexing and automation. |

## How It Works
1. **Vault Deployment:** Factory contract deploys user-owned vaults, applies the creation fee, and registers code hashes for reproducibility.
2. **Staking Management:** Vaults delegate/unstake via official staking-pool methods (`deposit_and_stake`, `unstake`, `withdraw_all`); users choose validators.
3. **Credit Lifecycle:** Borrowers request USDC via `ft_transfer_call`; lenders accept amount-only offers; repayments settle through NEP-141 callbacks.
4. **Liquidations:** Anyone can liquidate after expiry, following the strict order: liquid balance → matured unstaked → targeted unstake until obligations are met.

## Target Users
- NEAR stakers and validators pursuing capital efficiency.
- Lenders, treasuries, and market makers seeking predictable, non-custodial yield.
- Wallet, agent, and dApp teams integrating staking-backed credit.

## MVP Feature Set
- Vaults: deposit or withdraw NEAR, delegate or undelegate, claim unstaked funds.
- Loans: request terms, accept offers, repay before the deadline.
- Liquidations: deterministic, permissionless, and fully logged.
- Rollout: feature flags and metrics hooks.

## Differentiation Snapshot
|  | SudoStake | Pooled MM | CDP | Custodial |
|---|---|---|---|---|
| Collateral control | User-owned vault | Shared pool/LST | Protocol vault | External custodian |
| Oracles/pegs | Not required | Required | Required | Off-chain marks |
| Liquidation trigger | Time-bound expiry | Price health factor | Price/peg | Manual discretion |
| Systemic risk | Isolated per vault | Pool contagion | Peg/system failure | Counterparty |
| Credit fees | 0 (MVP) | Variable spread | Interest/fees | Fees/spread |

## Traction & Timeline
- ~231 vaults validated on the prior chain; NEAR MVP testnet covers the full lifecycle today.
- Milestone 1 — Web Testnet Feature-Complete delivered on Sep 23, 2025. Milestone 2 — Factory Optimization is in progress with the shared vault rollout behind feature flags.
- Go-to-market path: testnet pilots → gated mainnet beta → staged mainnet waves with wallet and agent partnerships plus developer bounties.

## Economics
- **Revenue Levers:** Vault creation fee (factory), optional validator commissions, future premium automation services.
- **Lender Terms:** No protocol fees in MVP; lenders negotiate spreads directly.

## Security & Risk Controls
- Deterministic state machine prevents surprise execution paths.
- Processing lock and storage reserve reduce re-entrancy and rent risks.
- Dedicated tests today; third-party audit and bounty planned before mainnet expansion.

## Team & Governance
- Maintainer: Muhammed Ali (SudoStake).
- Governance plan: move from single maintainer to a 2-of-3 multisig as contributors join.

## Current Roadmap Highlights
- **Milestone 1 — Web Testnet Feature-Complete:** Delivered.
- **Milestone 2 — Factory Optimization:** In progress behind feature flags.
- **Milestones 3–4 — Mainnet Candidate and Beta Stability:** Next in sequence once factory work locks.

## Ecosystem Requests
- Security review partners, indexing guidance, and wallet/agent distribution support.
- Early lenders and validator partners for mainnet pilots.

## Contact
- hello@sudostake.com • https://sudostake.com • GitHub: https://github.com/sudostake

## Related Documents
- [Pitch Deck (Text)](./pitch-deck-sudostake-near.md)
- [Roadmap — NEAR MVP & Launch](../execution/sudostake-roadmap-near-mvp.md)
- [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Refresh by 2025-10-15 to update traction numbers and roadmap notes.
