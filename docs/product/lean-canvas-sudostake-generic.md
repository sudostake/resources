---
Purpose: Capture the chain-agnostic lean canvas for SudoStake’s staking-backed credit model.
Owner: Product & Strategy (TBD)
Last Updated: 2025-10-08
Primary Audience: Product, Strategy, Contributors
---

# Lean Canvas — SudoStake (Chain-Agnostic)

## Overview
- **One-liner:** Borrow against staked assets without unbonding; user-owned vaults deliver deterministic credit flows and simple integrations.
- **Context:** Foundation for chain-specific canvases; highlights evergreen problem/solution framing and business model assumptions.

## Lean Canvas Blocks

### Problem
- Stakers face unbonding delays, penalties, or risky wrappers/custody to unlock liquidity.
- Lenders lack a non-custodial, transparent way to deploy capital against productive collateral.

### Customer Segments
- Stakers and validators seeking liquidity while maintaining delegation control.
- Lenders/treasuries targeting secured stablecoin yield.
- Wallets, agents, and dApps embedding “borrow against stake” experiences.

### Unique Value Proposition
- Turn staked assets into usable collateral without unbonding or custodians.
- User-owned vaults (no pools), deterministic oracle-minimized lifecycle, composable events/interfaces for automation.

### Solution
- **Vaults:** Mint user-owned contracts (one-time fee) to manage staking balances.
- **Borrow/Lend:** Borrower posts terms; lender accepts via token transfer plus message.
- **Liquidation:** Anyone can trigger post-deadline; repayments follow priority order until obligations are met.
- **Integrations:** Structured events and stable interfaces to power wallets and agents.

### Channels
- SudoStake web app.
- Agent and wallet integrations.
- Validator, wallet, and community partnerships.

### Revenue Streams
- Configurable vault creation fee.
- Optional validator/operator commissions (future consideration).

### Cost Structure
- Protocol engineering, audits, and maintenance.
- Frontend/agent development and indexing infrastructure.
- Deployment, monitoring, and contributor support.

### Key Metrics
- Total value staked through vaults; active vault count.
- Loan volume, repayment rate, and time-to-fund.
- Lender liquidity depth; number of integrations.

### Unfair Advantage
- Oracle-minimized deterministic design.
- User-owned vaults (no pooled custody risk).
- Modular adapters for staking, token flows, and event streams.

## Related Documents
- [Lean Canvas — SudoStake on NEAR](./lean-canvas-sudostake-near.md)
- [SudoStake Project Charter](./sudostake-project-charter.md)
- [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Reassess alongside the NEAR-specific canvas during the next roadmap checkpoint (target 2025-10-07).
