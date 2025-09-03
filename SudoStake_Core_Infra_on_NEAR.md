# SudoStake as Core Infrastructure on NEAR

**Audience:** NEAR Protocol Rewards Team & Infrastructure Committee\1**Date:** September 3, 2025\1**Prepared by:** SudoStake

---

## Executive Summary
SudoStake defines a **standard contract primitive**—a staking‑backed **credit‑vault smart‑contract suite**—that wallets, agents, and apps can reuse via **stable, permissionless interfaces**. A separate **reference implementation** (UI/agent flows) demonstrates integration but is *not* part of the infrastructure scope.

### Scope: Infrastructure vs Reference Product

**Core Infrastructure (delivered by this proposal)**
1. **Contracts:** Factory + vault contracts for staking‑backed credit, open‑sourced under a public‑good license.
2. **Interfaces:** Stable, documented entrypoints/events for integration (vault lifecycle, repayments, liquidation).
3. **Compliance:** Strict use of NEAR staking‑pool flows and epoch rules; no custom staking semantics.
4. **Composability:** Designed to be embedded by wallets, agents, and other protocols without opinionated UI or policy.

**Reference Implementation (non‑core)**
- Minimal UI, agent scripts, and example “intents → settlement” paths to demonstrate integration. These are illustrative and outside the infra scope.

## Why This Is Core Infrastructure
**What’s infrastructure**
- An open, permissionless **credit‑vault contract suite** that turns staked NEAR into reusable, oracle‑less collateral with a clear state machine (**request → accept → repay → liquidate**).
- **Stable interfaces** designed for neutral reuse by wallets, agents, and protocols; published as a **public good** with documentation, test vectors, and versioned releases.
- **Standards‑first:** Compliant with NEAR’s **official staking‑pool interface** (`deposit_and_stake`, `unstake`, `withdraw`) and epoch semantics; deterministic accounting in NEAR/USDC terms.
- **Intents‑native settlement:** Clear mapping from user intent to on‑chain settlement so external solvers/agents can integrate. Intents examples are provided as **reference**, not as product scope.

**What’s not infrastructure**
- Product/UI choices, agent scripts, and specific marketplace flows. These are examples that prove the primitive’s utility and remain optional for integrators.

## How It Works (Concise)
- **Vaults:** Owner‑controlled contracts that delegate NEAR via the official staking‑pool.
- **Credit:** Borrowers lock a portion of staked NEAR as collateral; lenders transfer USDC to fund the loan; terms are fixed and oracle‑less.
- **Liquidation order:** (1) Vault liquid NEAR → (2) matured unstaked → (3) targeted unstake across validators until debt is satisfied; strict stop once paid.

---

## Intents Mapping (SudoStake ⇄ NEAR Intents)

> *Note:* The following mappings are **examples** for integrators and are not part of the infrastructure scope.

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
**Delivered:** Connect NEAR wallet; vaults dashboard; deposit/withdraw; delegate/undelegate/claim‑unstaked.\1**September target:** Request loan; accept loan; repay before deadline.

---

## Requests to Infra/Rewards (Alignment)
- Example intents registry entries for common credit actions (create vault, accept credit, repay, liquidate).
- Recommended indexing/observability patterns for vault lifecycle and settlement events.
- Independent security review of the core contracts and guidance on disclosure process.

## Metrics for Rewards Review
- **Adoption:** # of vaults; total NEAR staked in vaults.\1- **Credit throughput:** USDC borrowed/repayed; repay vs. liquidation ratio.\1- **Integrations:** # of wallets/agents/dApps using the primitive.\1- **Reliability:** Successful settlement rate; time‑to‑finality for repay/liquidate.

---

## Change Log — September 3, 2025
- Scoped “core infrastructure” strictly to the **credit‑vault contracts** (public good, stable interfaces).
- Rewrote the **Executive Summary** to separate infra from the reference app.
- Replaced **Why This Is Core Infrastructure** with standards‑first, intents‑native framing.
- Marked **Intents Mapping** as examples; clarified **Scope** section.
- Kept **Requests to Infra/Rewards** and added a security/indexing bullet.

## References (NEAR Official)
- NEAR Intents Overview — https://docs.near.org/chain-abstraction/intents/overview\1- NEAR Intents (developer) — https://docs.near-intents.org/near-intents\1- Chain Signatures — https://docs.near.org/chain-abstraction/chain-signatures\1- Staking: epochs, delegation, withdrawal — https://docs.near.org/protocol/network/staking\1- Staking‑Pool Core Contract — https://github.com/near/core-contracts/tree/master/staking-pool\1- NEP‑141 FT Standard — https://nomicon.io/Standards/Tokens/FungibleToken/Core\1- Native USDC on NEAR — https://pages.near.org/blog/usdc-launches-natively-on-the-near-protocol/

---

*Contact: hello@sudostake.com | https://sudostake.com*
