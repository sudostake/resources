---
Purpose: Document the NEAR-specific lean canvas for SudoStake, reflecting current roadmap progress.
Owner: Product & Strategy (TBD)
Last Updated: 2025-10-01
Primary Audience: Product, Strategy, Contributors
---

# Lean Canvas — SudoStake on NEAR

See also the chain-agnostic canvas in [lean-canvas-sudostake-generic.md](./lean-canvas-sudostake-generic.md).

## Status (2025-09-29)
- Milestone 1 — Web Testnet Feature-Complete delivered on 2025-09-23.
- Milestone 2 — Factory Optimization underway: optimized factory path, shared vault via code-hash registry, rollout behind feature flags.

## Lean Canvas Blocks

### One-Liner
Liquidity for NEAR stakers without unbonding. Native borrow/lend on staked NEAR—no oracles, wrappers, or custodians.

### Problem
- Unlocking staked NEAR requires unbonding delays or custodial/synthetic workarounds.
- No native borrow-against-stake option that preserves validator delegation and yield.
- Lenders lack low-risk, non-custodial collateral exposure on NEAR.

### Customer Segments
- NEAR stakers/validators.
- USDC lenders and capital providers.
- NEAR developers, DAOs, and partners integrating staking-backed credit.
- Wallet/agent providers onboarding end users.

### Unique Value Proposition
- Turn staked NEAR into usable collateral with an oracle-less lifecycle.
- User-owned vaults preserve validator choice, governance, and rewards.
- Deterministic, permissionless system aligned with NEAR intents and agents.

### Solution
- **Vaults:** Non-custodial contracts with configurable creation fee; delegate NEAR to chosen validators.
- **Liquidity requests:** USDC loans collateralized by staked NEAR; accepted via NEP-141 JSON messages.
- **Liquidation:** Strict order (liquid → matured unstake → targeted unstake), halting when obligations are met; no oracle dependency.
- **Marketplace:** Discovery of open requests; counter-offers (amount-only) scheduled after Milestone 1 scope.

### Channels
- SudoStake web app (NEAR).
- Agent interfaces and intents tooling.
- Validator and wallet partnerships.
- NEAR Foundation protocol-rewards visibility and community programs.

### Revenue Streams
- Vault creation fee (factory contract).
- Optional validator commissions (post-MVP exploration).
- No protocol fees on borrow/lend/liquidate during MVP.

### Cost Structure
- Rust/NEAR SDK contract development, audits, and maintenance.
- Frontend and agent infrastructure.
- NEAR transaction/storage costs; observability and support.

### Key Metrics
- Total NEAR staked via vaults; active vault count.
- Loan volume, repayment rate, and time to fund.
- Offer competitiveness, repeat usage, and USDC liquidity depth.

### Unfair Advantage
- First native NEAR non-custodial borrow-against-stake product.
- Oracle-less deterministic liquidation aligned with NEAR smart accounts.
- Backing from Protocol Rewards Cohort 2; leverages prior-chain learnings (~231 vaults).

## Notes
- Traction: Prior-chain release logged ~231 vaults; NEAR testnet MVP flows completed in Milestone 1.
- Next steps: Execute Milestone 2 optimized factory/global vault rollout with migration planning and metrics.

## Related Documents
- [Lean Canvas — SudoStake (Chain-Agnostic)](./lean-canvas-sudostake-generic.md)
- [SudoStake Roadmap — NEAR MVP & Launch](../execution/sudostake-roadmap-near-mvp.md)
- [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Refresh after the 2025-10-07 roadmap review or when Milestone 2 scope or assumptions change materially.
