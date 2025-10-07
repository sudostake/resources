---
Purpose: Provide an investor- and partner-ready snapshot of SudoStake on NEAR.
Owner: Growth & Partnerships (TBD)
Last Updated: 2025-09-29
Primary Audience: Investors & VCs, Ecosystem Partners & Builders, Community & Prospective Users
---

# SudoStake on NEAR — One-Pager

## Summary
- Borrow USDC against staked NEAR without unbonding, off-chain oracles, or custodians. Vaults remain user-owned with deterministic liquidations.
- NEAR’s native USDC and predictable epochs allow oracle-less collateral with clear settlement rules.
- MVP is live on testnet with end-to-end flows validated by agents and reference web clients.

## Problem & Solution
| Problem | SudoStake Approach |
| --- | --- |
| Stakers must unbond or wrap NEAR to unlock liquidity. | Per-user vaults keep NEAR delegated while issuing oracle-less credit lines. |
| Lenders lack a transparent, non-custodial venue on NEAR. | Deterministic request → accept → repay → liquidate lifecycle with auditable events. |
| Complex settlement logic introduces integration risk. | Stable interfaces (NEP-141) and EVENT_JSON logs for easy indexing and automation. |

## How It Works
1. **Vault Deployment:** Factory contract deploys user-owned vaults (optional creation fee) and registers code hashes for reproducibility.
2. **Staking Management:** Vaults delegate/unstake via official staking-pool methods (`deposit_and_stake`, `unstake`, `withdraw_all`); users choose validators.
3. **Credit Lifecycle:** Borrowers request USDC via `ft_transfer_call`; lenders accept amount-only offers; repayments settle through NEP-141 callbacks.
4. **Liquidations:** Anyone can liquidate after expiry, following the strict order: liquid balance → matured unstaked → targeted unstake until obligations are met.

## Target Users
- NEAR stakers and validators pursuing capital efficiency.
- Lenders, treasuries, and market makers seeking predictable, non-custodial yield.
- Wallet, agent, and dApp teams integrating staking-backed credit.

## MVP Feature Set
- Mint and manage vaults (deposit/withdraw NEAR, delegate, undelegate, claim unstaked balances).
- Create loan requests, accept offers, repay before deadlines.
- Deterministic, permissionless liquidations with clean event logs for tracking.
- Feature flags and metrics hooks prepared for mainnet rollout.

## Differentiation Snapshot
|  | SudoStake | Pooled MM | CDP | Custodial |
|---|---|---|---|---|
| Collateral control | User-owned vault | Shared pool/LST | Protocol vault | External custodian |
| Oracles/pegs | Not required | Required | Required | Off-chain marks |
| Liquidation trigger | Time-bound expiry | Price health factor | Price/peg | Manual discretion |
| Systemic risk | Isolated per vault | Pool contagion | Peg/system failure | Counterparty |
| Credit fees | 0 (MVP) | Variable spread | Interest/fees | Fees/spread |

## Traction & Timeline
- ~231 vaults validated on prior chain; NEAR MVP testnet live with full lifecycle coverage.
- Milestone M1 (testnet feature-complete) delivered Sep 23, 2025; M2 factory optimization in progress.
- Go-to-market: testnet pilots → gated mainnet beta → staged mainnet rollout; wallet/agent co-marketing and developer bounties.

## Economics
- **Revenue Levers:** Vault creation fee (factory), optional validator commissions, future premium automation services.
- **Lender Terms:** No protocol fees in MVP; lenders negotiate spreads directly.

## Security & Risk Controls
- Deterministic state machine prevents surprise execution paths.
- Processing lock + storage reserve mitigate re-entrancy and rent exhaustion.
- Dedicated test suites; third-party audit and bounty planned pre-mainnet expansion.

## Team & Governance
- Maintainer: Muhammed Ali (SudoStake).
- Governance evolves from single maintainer to 2-of-3 multisig as contributor roster expands.

## Current Roadmap Highlights
- **M1:** Testnet feature-complete (delivered).
- **M2:** Global vault optimization behind feature flags (in progress).
- **M3–M4:** Mainnet candidate and beta stability.

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
- Schedule review by 2025-10-15 to refresh traction metrics and roadmap statuses.
