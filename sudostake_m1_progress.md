# SudoStake NEAR MVP — M1 (Milestone 1) Progress

**Date:** Aug 27, 2025  
**Reference:** Product Roadmap (M1)  
**Definition:** M1 = Milestone 1 (not “month”). Target close: September 2025.

## M1: Done
- Connect NEAR wallet
- Vaults dashboard
- Vault page: deposit, withdraw
- Stake management: delegate, undelegate, claim unstaked

## September 2025 (remaining to close M1)
- **Request loan** — Open from vault; require staked NEAR ≥ collateral.
- **Accept loan** — Lender calls accept and transfers the requested USDC; funds become available to the vault owner.
- **Repay before deadline** — Principal + interest.
- **Liquidate after missed deadline** — Explicit trigger; process in order: liquid balance → matured unstaked → fallback unstake; stop exactly at the collateral amount.
- **Lender discovery** — Marketplace of open loan requests linking to vault pages.
- **Counter‑offers (stretch)** — Amount‑only; keep top 10; evict lowest with refund; track failed refunds for retry.

## Spec guardrails
- Oracle‑less; actions are explicit (no background automation in M1).
- Zero protocol fees on loan activity.
- Collateral is **staked NEAR only** (excludes liquid/unstaked balances at request time).
- Loan positions are open‑ended with a deadline that gates liquidation.
