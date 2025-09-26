# SudoStake NEAR MVP — M1 (Milestone 1) Progress

**Date:** Sep 23, 2025  
**Reference:** Product Roadmap (M1)  
**Definition:** M1 = Milestone 1 (not “month”). Target close: September 2025.

## M1: Done (Completed Sep 23, 2025)
- Connect NEAR wallet
- Vaults dashboard
- Vault page: deposit, withdraw
- Stake management: delegate, undelegate, claim unstaked
- Request loan — vault must have staked NEAR ≥ collateral
- Accept loan — lender transfers requested USDC to vault
- Repay before deadline — principal + interest
- Liquidate after missed deadline — liquid → matured unstaked → targeted unstake; stops exactly at owed amount
- Lender discovery — marketplace of open loan requests linking to vault pages

## Exceptions/Deferred (M1)
- Counter‑offers (amount‑only) — Deferred (scoped as time‑permitting; not required for M1 completion)

## Spec guardrails
- Oracle‑less; actions are explicit (no background automation in M1).
- Zero protocol fees on loan activity.
- Collateral is **staked NEAR only** (excludes liquid/unstaked balances at request time).
- Loan positions are open‑ended with a deadline that gates liquidation.
