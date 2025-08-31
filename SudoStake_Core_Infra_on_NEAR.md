# SudoStake as Core Infrastructure on NEAR

**Audience:** NEAR Protocol Rewards Team & Infrastructure Committee  
**Date:** August 31, 2025  
**Prepared by:** SudoStake

---

## Executive Summary
SudoStake is an oracle‑less, non‑custodial **staking‑backed credit primitive** for NEAR. Users keep staked NEAR in self‑owned vaults (smart contracts) that delegate via NEAR’s official staking‑pool interface and can borrow native USDC against a defined collateral schedule. Because it is standard, composable, and intents‑friendly, SudoStake operates like base‑layer infrastructure: wallets, agents, and apps can reuse it rather than rebuilding lending logic.

---

## Why This Is Core Infrastructure
- **Programmable stake:** Converts staking positions into a reusable collateral module (request → accept → repay → liquidate) any product can plug in.
- **Intents‑native:** Actions map cleanly to NEAR Intents, enabling third‑party solvers/agents with clear on‑chain settlement.
- **Aligned with staking architecture:** Uses the whitelisted staking‑pool flow (`deposit_and_stake`, `unstake`, `withdraw`), preserving epoch semantics and validator hygiene.
- **USDC‑native settlement:** Uses **native USDC on NEAR** for predictable, off‑rampable liquidity—no price oracles.
- **Chain‑abstraction ready:** Clean interface to compose with **Chain Signatures** while collateral state is kept on NEAR.

---

## How It Works (Concise)
- **Vaults:** Owner‑controlled contracts that delegate NEAR via the official staking‑pool.
- **Credit:** Borrowers lock a portion of staked NEAR as collateral; lenders transfer USDC to fund the loan; terms are fixed and oracle‑less.
- **Liquidation order:** (1) Vault liquid NEAR → (2) matured unstaked → (3) targeted unstake across validators until debt is satisfied; strict stop once paid.

---

## Intents Mapping (SudoStake ⇄ NEAR Intents)
| User outcome | Intent (example) | Settlement on NEAR |
|---|---|---|
| Borrow against stake | “Provide X USDC for Y days, collateral Z NEAR.” | USDC to vault; collateral lock set; state updated |
| Lend to a vault | “Accept this loan request.” | USDC in; acceptance recorded; lock active |
| Repay | “Repay principal + interest.” | USDC back to lender; collateral lock released |
| Liquidate | “Recover owed USDC by liquidating collateral.” | Process liquid → matured → unstake until satisfied |

---

## Security & Operations
- **Oracle‑less:** All amounts are deterministic in NEAR/USDC terms.
- **Validator hygiene:** Tracks active/unbonding validators; respects epoch unlocks; avoids idle balances.
- **Deterministic rules:** Clear, auditable liquidation priority and completion conditions.
- **Automation‑friendly:** Manual calls work today; agents/cron can drive the same flows without special privileges.

---

## Ecosystem Impact
- **Wallets & super‑apps:** One‑tap “Borrow against stake” via intents; seamless repay/refinance.
- **Agent frameworks:** High‑value, repeatable tasks (monitor, refinance, repay, liquidate) that showcase NEAR’s agentic roadmap.
- **Protocols:** Shared, audited collateral primitive reduces bespoke lending code and concentrates liquidity around native staking.

---

## Current Status (M1)
**Delivered:** Connect NEAR wallet; vaults dashboard; deposit/withdraw; delegate/undelegate/claim‑unstaked.  
**September target:** Request loan; accept loan; repay before deadline.

---

## Requests to Infra/Rewards (Alignment)
1. **Recognize staking‑backed credit as a core primitive** in NEAR’s infra catalog.  
2. **Provide intents registry examples** for request‑loan, accept‑loan, repay, liquidate.  
3. **Indexing & observability:** Best‑practice examples/endpoints for vault events (loans, repayments, liquidations).  
4. **Chain Signatures guidance** for future cross‑chain agent coordination with settlement on NEAR.  
5. **Security review slot** for the vault + factory patterns (whitelisted staking‑pool adherence).

---

## Metrics for Rewards Review
- **Adoption:** # of vaults; total NEAR staked in vaults.  
- **Credit throughput:** USDC borrowed/repayed; repay vs. liquidation ratio.  
- **Integrations:** # of wallets/agents/dApps using the primitive.  
- **Reliability:** Successful settlement rate; time‑to‑finality for repay/liquidate.

---

## References (NEAR Official)
- NEAR Intents Overview — https://docs.near.org/chain-abstraction/intents/overview  
- NEAR Intents (developer) — https://docs.near-intents.org/near-intents  
- Chain Signatures — https://docs.near.org/chain-abstraction/chain-signatures  
- Staking: epochs, delegation, withdrawal — https://docs.near.org/protocol/network/staking  
- Staking‑Pool Core Contract — https://github.com/near/core-contracts/tree/master/staking-pool  
- NEP‑141 FT Standard — https://nomicon.io/Standards/Tokens/FungibleToken/Core  
- Native USDC on NEAR — https://pages.near.org/blog/usdc-launches-natively-on-the-near-protocol/

---

*Contact: hello@sudostake.com | https://sudostake.com*
