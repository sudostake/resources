# 🧩 LEAN CANVAS – SudoStake on NEAR

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

- **Vaults**: Users mint non-custodial vaults (10 NEAR fee) to manage staking directly.
- **Delegation**: Vaults delegate NEAR to validators under owner control.
- **Liquidity Requests**: Vaults request USDC loans by locking staked NEAR as collateral.
- **Counter-Offer System**: Lenders compete by submitting offers; the best is accepted.
- **Manual Liquidation**: If repayment is missed, liquidation can be triggered without oracles or external feeds.

---

## 5. Channels

- **Web App**: Full-featured React interface for managing vaults, staking, and lending.
- **AI Agent Interface**: NEAR-native chatbot interface for vault management via BOS.
- **NEAR Ecosystem**: Twitter, Discord, hackathons, and community partnerships.
- **Protocol Rewards Program**: Visibility through official NEAR Foundation channels.

---

## 6. Revenue Streams

- **Vault Creation Fee**: 10 NEAR per vault, paid once at minting.
- **Validator Commissions** *(optional)*: Revenue earned if vaults delegate to a SudoStake-operated validator.
- No protocol fees on borrowing, lending, or liquidations.

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
- **Average Time to Fund** liquidity requests.
- **Offer Competition** per request.
- **Repeat Usage** and vault retention rate.
- **USDC Liquidity Pool Size** from lenders.

---

## 9. Unfair Advantage

- **First native NEAR protocol** to offer direct, non-custodial borrowing against staked NEAR.
- **Oracle-less liquidation logic** ensures simplicity, transparency, and resilience.
- Vault architecture mirrors NEAR's smart account model — composable and user-owned.
- Supported by **NEAR Protocol Rewards Cohort 2** with direct ecosystem alignment.
- No synthetic assets, token wrappers, or hidden dependencies.
