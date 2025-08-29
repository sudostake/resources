# SudoStake as Core Infrastructure on NEAR

**Audience:** NEAR Protocol Rewards Team & Infrastructure Committee  
**Date:** August 29, 2025  
**Prepared by:** SudoStake

---

## Executive Summary
SudoStake is an oracle‑less, non‑custodial **staking‑backed credit primitive** for NEAR. Users keep their staked NEAR in self‑owned vault contracts that delegate via NEAR’s official staking‑pool model and optionally borrow USDC against a defined collateral schedule. Because the primitive is standard, composable, and intents‑friendly, it functions like base‑layer infrastructure: many wallets, agents, and apps can reuse it rather than rebuilding bespoke lending logic.

---

## Why This Is Core Infrastructure
- **Turns stake into programmable collateral.** Native staked positions become a reusable on‑chain building block (request → accept → repay → liquidate) for any dApp, wallet, or agent.
- **Intents‑ready by design.** Each action maps cleanly to the NEAR Intents flow, enabling third‑party solvers/agents to compete to fulfill outcomes while settlement lands on NEAR.
- **Aligned with NEAR’s staking architecture.** Vaults interact with NEAR’s whitelisted staking‑pool contract interface (e.g., `deposit_and_stake`, `unstake`, `withdraw`), preserving epoch semantics and validator hygiene.
- **USDC‑native settlement.** Uses **native USDC on NEAR** for predictable, off‑rampable liquidity; avoids price oracles at the protocol level.
- **Chain‑abstraction friendly.** Design cleanly composes with **Chain Signatures** so NEAR accounts/agents can coordinate cross‑chain flows while SudoStake tracks collateral state on NEAR.

---

## What SudoStake Is (Concise)
- **Vaults:** Owner‑controlled smart contracts that delegate NEAR via the official staking‑pool interface.
- **Credit:** A borrower locks a portion of staked NEAR as collateral and receives USDC from a lender; terms are fixed and oracle‑less.
- **Lifecycle:** Request → Accept (USDC transfer) → Repay before deadline **or** trigger liquidation (borrower, lender, or agent). Liquidation strictly uses the vault’s NEAR balances (liquid, matured unstaked, and—if needed—unstaking from validators) until debt is satisfied.

---

## Intents Mapping (SudoStake ⇄ NEAR Intents)
| User outcome | Intent (example) | Settlement on NEAR |
|---|---|---|
| Borrow against stake | “Provide X USDC for Y days, collateral Z NEAR” | USDC transfer to vault; vault state updated |
| Lend to a vault | “Accept this loan request” | USDC in; acceptance recorded; collateral lock active |
| Repay | “Repay principal + interest” | USDC back to lender; collateral lock released |
| Liquidate | “Recover owed USDC by liquidating collateral” | Vault processes available NEAR → matured → unstake paths until satisfied |

---

## Architecture & Safety
- **Oracle‑less:** No external price feeds; collateral and obligations are deterministic in NEAR/USDC terms.
- **Validator hygiene:** Uses the staking‑pool standard; tracks active/unbonding validators, respects epoch unlocks, and avoids idle balances.
- **Deterministic liquidation rules:** Clear priority order (liquid balance → matured unstaked → targeted unstake) with strict stop conditions when the lender’s claim is fully satisfied.
- **Operational automation:** While manual triggers are supported, agents (or cron services) can invoke repayments/liquidations under the same rules—no special privileges.

---

## Ecosystem Unlocks
- **Wallets & super‑apps:** One‑tap “Borrow against stake” UX via intents; seamless repay/refinance.
- **Agent frameworks:** Concrete, high‑value tasks for NEAR agents (monitor, refinance, repay, trigger liquidation) that showcase NEAR’s AI/agentic roadmap.
- **Protocols:** Standard, audited collateral module reduces duplicated lending logic and concentrates liquidity around native staking.

---

## Current Status (M1 Scope)
- Connect NEAR wallet; manage vaults dashboard.  
- Dedicated vault page: deposit/withdraw.  
- Manage stake from the vault: **delegate, undelegate, claim unstaked**.  
- September wrap‑up for M1: **request loan, accept loan, repay before deadline**.

---

## Near‑Term Integration Requests (Infra Alignment)
1. **Recognition as a core primitive** (staking‑backed credit) in NEAR’s infra catalog.  
2. **Intents registry examples** for: request‑loan, accept‑loan, repay, liquidate.  
3. **Indexing & observability:** Stable endpoints or examples for vault event indexing (loans, repayments, liquidations).  
4. **Chain Signatures pathfinding:** Best‑practice guidance for future cross‑chain coordination by NEAR agents while SudoStake settles on NEAR.

---

## Success Metrics (for Rewards Review)
- **Protocol adoption:** # of vaults created; total NEAR staked across vaults.
- **Credit throughput:** USDC borrowed/repayed; % of loans repaid vs. liquidated.  
- **Developer integrations:** Count of wallets/agents/dApps integrating the primitive.
- **Reliability:** Successful settlement rate; time‑to‑finality for repay/liquidate flows.

---

## References (NEAR Official & Primary Sources)
- **NEAR Intents Overview:** https://docs.near.org/chain-abstraction/intents/overview  
- **NEAR Intents (developer site):** https://docs.near-intents.org/near-intents  
- **Chain Signatures (overview):** https://docs.near.org/chain-abstraction/chain-signatures  
- **Chain Signatures (getting started):** https://docs.near.org/chain-abstraction/chain-signatures/getting-started  
- **Validator Staking (epochs, delegation, withdrawal):** https://docs.near.org/protocol/network/staking  
- **Staking‑Pool Core Contract (reference code):** https://github.com/near/core-contracts/tree/master/staking-pool  
- **NEP‑141 Fungible Token Standard:** https://nomicon.io/Standards/Tokens/FungibleToken/Core  
- **Native USDC on NEAR (NEAR blog):** https://pages.near.org/blog/usdc-launches-natively-on-the-near-protocol/  
- **Native USDC on NEAR (Circle blog):** https://www.circle.com/blog/usdc-is-now-available-on-near

---

*Contact: hello@sudostake.com | https://sudostake.com*
