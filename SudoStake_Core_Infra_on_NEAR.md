# SudoStake: Core Infrastructure on NEAR

Audience: NEAR Protocol Rewards Team & Infra Committee  •  Date: 2025-09-03  •  Author: SudoStake

## Executive Summary
A reusable staking-backed credit-vault contract suite with stable, permissionless interfaces. Reference UI/agent flows exist for illustration only (non-core).

## Scope
- Core (delivered):
  1) Contracts: factory + vault (public-good license)
  2) Interfaces: stable entrypoints/events (lifecycle, repay, liquidation)
  3) Compliance: official staking-pool APIs and epoch rules
  4) Composability: neutral, integrator-friendly
- Non-core: reference UI, agent scripts, example intents flows

## Why It’s Infra
- Open, permissionless credit-vault suite; oracle-less collateral; clear state machine (request → accept → repay → liquidate).
- Stable interfaces with docs, test vectors, versioned releases.
- Standards-first: official staking-pool interface; deterministic NEAR/USDC accounting.
- Intents-native settlement examples for integrators (illustrative only).

## How It Works
- Vaults: owner-controlled, delegate via staking-pool.
- Credit: borrower locks staked NEAR; lender funds USDC; fixed, oracle-less terms.
- Liquidation order: liquid → matured-unstaked → targeted unstake across validators until paid.

## Intents Mapping (examples)
- Borrow against stake → USDC to vault; collateral lock set.
- Lend to vault → USDC in; acceptance and lock recorded.
- Repay → USDC to lender; release collateral.
- Liquidate → consume liquid → matured → unstake until satisfied.

## Security & Operations
- Oracle-less amounts in NEAR/USDC.
- Validator hygiene; respect epoch unlocks; no idle balances.
- Deterministic liquidation rules; auditable completion.
- Automation-friendly; no special privileges required.

## Ecosystem Impact
- Wallets/super-apps: one-tap borrow against stake; simple repay/refinance.
- Agents: repeatable tasks (monitor, refinance, repay, liquidate).
- Protocols: shared audited collateral primitive; focuses liquidity around native staking.

## Status (M1)
- Delivered: connect wallet; vaults dashboard; deposit/withdraw; delegate/undelegate/claim-unstaked.
- Sep target (achieved per reports): request; accept; repay.

## Requests to Infra/Rewards
- Intent registry entries for credit actions (create vault, accept, repay, liquidate).
- Indexing/observability guidance for lifecycle and settlement events.
- Independent security review; disclosure guidance.

## Metrics (for Rewards)
- Adoption: vault count; total staked in vaults.
- Credit throughput: USDC borrowed/repayed; repay vs liquidation.
- Integrations: wallets/agents/dApps using the primitive.
- Reliability: settlement success rate; repay/liquidate time-to-finality.

## References
- NEAR Intents Overview — https://docs.near.org/chain-abstraction/intents/overview
- NEAR Intents (developer) — https://docs.near-intents.org/near-intents
- Chain Signatures — https://docs.near.org/chain-abstraction/chain-signatures
- Staking — https://docs.near.org/protocol/network/staking
- Staking-Pool Core Contract — https://github.com/near/core-contracts/tree/master/staking-pool
- NEP-141 FT Standard — https://nomicon.io/Standards/Tokens/FungibleToken/Core
- Native USDC — https://pages.near.org/blog/usdc-launches-natively-on-the-near-protocol/

Contact: hello@sudostake.com • https://sudostake.com
