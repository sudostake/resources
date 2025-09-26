# 🧩 LEAN CANVAS – SudoStake on NEAR

Note: For a chain‑agnostic Lean Canvas that captures SudoStake’s core primitive across chains, see LEAN_CANVAS_SudoStake_Generic.md.

Status update (Sep 26, 2025)
- M1 (Web Testnet Feature‑Complete) completed on Sep 23, 2025.
- M2 (Factory Optimization • Optimized Path) in progress; near‑sdk‑rs PR #1369 merged, proceeding with code‑hash registry and global vault contract behind flags.

**"The liquidity protocol for NEAR stakers."**  
*Access liquidity without unbonding. Borrow and lend with native staked NEAR — no oracles, no wrapping, no custodians.*

---

## 1. Problem

- NEAR stakers are unable to unlock the value of their staked NEAR without:
  - Unstaking and waiting through the unbonding period, or  
  - Using custodial or synthetic solutions that compromise control.
- There is no native way to borrow against staked NEAR while maintaining validator delegation and yield.
- Lenders on NEAR lack access to low-risk, yield-backed collateral in a non-custodial format.

---

## 2. Customer Segments

- **NEAR Stakers & Validators**: Want to retain staking rewards and validator choice while accessing liquidity.
- **Lenders & Capital Providers**: Seek secured lending opportunities backed by real, productive collateral.
- **NEAR Developers & Protocol DAOs**: Need programmable staking vaults with composability and governance hooks.
- **Onboarding Users**: Can engage with staking and lending without handling validator delegation directly.

---

## 3. Unique Value Proposition

> **“Turn your staked NEAR into real, usable collateral — no synthetic assets, no oracle risk.”**

- Vaults are fully owned smart contract accounts — not pooled, wrapped, or abstracted.
- Stakers retain full control: validator choice, governance rights, and rewards.
- Lenders interact directly with native staked collateral.
- The entire system is deterministic, permissionless, and **oracle-free**.

---

## 4. Solution

- **Vaults**: Users mint non-custodial vaults (configurable creation fee) to manage staking directly.
- **Delegation**: Vaults delegate NEAR to validators under owner control.
- **Liquidity Requests**: Vaults request USDC loans by locking staked NEAR as collateral; lenders accept via NEP‑141 transfers with JSON messages.
- **Deterministic Liquidation**: If repayment is missed, anyone can trigger liquidation; repayment proceeds in strict order (liquid → matured unstaked → targeted unstake) and halts exactly at the owed amount. No oracles.
- **Marketplace & Offers**: Marketplace lists open requests for discovery. Counter‑offers (amount‑only) deferred beyond M1.

---

## 5. Channels

- **Web App**: Full-featured Next.js/React interface for managing vaults, staking, and lending.
- **Agent Interfaces**: NEAR agent tooling and integrations for intent-driven management (wallets/agents).
- **NEAR Ecosystem**: Social, Discord, hackathons, validator and wallet partnerships.
- **Protocol Rewards Program**: Visibility through NEAR Foundation channels.

---

## 6. Revenue Streams

- **Vault Creation Fee**: Configurable one-time fee at Factory.
- **Validator Commissions** (optional): If users choose a SudoStake-operated validator.
- No protocol fees on borrowing/lending/liquidations in MVP.

---

## 7. Cost Structure

- Smart contract development, auditing, and maintenance (Rust + NEAR SDK).
- Frontend hosting and infrastructure (Next.js, Vercel).
- AI Agent infrastructure (indexing, state management, interface UX).
- NEAR transaction fees and storage costs.
- Community education, documentation, and support.

---

## 8. Key Metrics

- **Total NEAR Staked** via SudoStake vaults.
- **Number of Vaults** created and active.
- **Loan Volume** issued and repayment rate.
- **Time to Fund** liquidity requests and repayment lead time.
- **Offer Competition** per request (when enabled).
- **Repeat Usage** and vault retention rate.
- **USDC Liquidity Depth** provided by lenders.

---

## 9. Unfair Advantage

- **First native NEAR protocol** to offer direct, non-custodial borrowing against staked NEAR.
- **Oracle-less, deterministic liquidation** for simplicity and resilience.
- Vault architecture mirrors NEAR's smart account model — composable and user-owned.
- Supported by **NEAR Protocol Rewards Cohort 2** with direct ecosystem alignment.
- No synthetic assets, token wrappers, or hidden dependencies.

—

Notes
- Traction: Prior chain model validated (~231 vaults). NEAR testnet now feature-complete for M1 flows.
- Next: Optimized factory/global vault contract (M2), behind flags, with migration plan.
