# Vault‑Based Staking & P2P Credit Protocol — Model Brief

**Date:** Aug 20, 2025  
**Tagline:** The liquidity protocol for stakers.

**Scope (plain‑English)**  
You keep your staked coins in your own vault, lock a portion as collateral, and borrow stablecoins from anyone—no middleman pools, no price oracles, and clear payback expiries.

**Abstract**  
This brief describes a non‑custodial, smart‑contract staking protocol for PoS L1 stakers and counterparties. It specifies an oracle‑less, vault‑per‑user credit model secured by chain‑native staked collateral, and outlines lifecycle, responsibilities, and normative requirements.

## Table of Contents

- [1. Overview](#1-overview)
- [2. Model architecture](#2-model-architecture)
  - [2.1 At a glance](#21-at-a-glance)
  - [2.2 Design pillars](#22-design-pillars)
  - [2.3 Protocol requirements (normative)](#23-protocol-requirements-normative)
- [3. Lifecycle (concise)](#3-lifecycle-concise)
- [4. Operational considerations & mitigations](#4-operational-considerations--mitigations)
- [5. Business thesis](#5-business-thesis)
- [6. Concept reference (brand-agnostic)](#6-concept-reference-brand-agnostic)
  - [6.1 Here are the core axes](#61-here-are-the-core-axes)
  - [6.2 Here are the archetypes](#62-here-are-the-archetypes)
  - [6.3 Here is SudoStake](#63-here-is-sudostake)
  - [6.4 Decision heuristics](#64-decision-heuristics)
  - [6.5 Fill-in template (for any archetype)](#65-fill-in-template-for-any-archetype)
- [7. Proof points & metrics](#7-proof-points--metrics)
- [8. Operational rollout](#8-operational-rollout)
- [9. Messaging](#9-messaging)
- [10. Appendix: definitions & scope](#10-appendix-definitions--scope)
- [11. Reference (out of scope)](#11-reference-out-of-scope)

---

# 1. Overview

This protocol enables chain‑native, oracle‑less agreements secured by user‑controlled stake. Vault owners retain validator selection and custody at all times; terms are negotiated peer‑to‑peer; credit agreements are perpetual with enforceable expiries (no auto‑close).

---

# 2. Model architecture

## 2.1 At a glance

- **User‑sovereign collateral:** Participants use their own vault as collateral; no pooled rehypothecation.
- **Oracle-less:** Credit decisions and liquidations require no external price feeds; obligations are time/contract driven.
- **Liquidation start:** The first on‑chain action that opens the liquidation flow. From that moment: (1) direct repayment is blocked; (2) the protocol may unbond **only up to the pledged collateral**; (3) settlement proceeds via the liquidation flow until completion, with subsequent steps callable by either party or an agent.
- **Per‑vault risk assessment:** Counterparties assess a specific vault; risk is transparent and contained.
- **Lifecycle (credit):** Perpetual with explicit expiries; on‑chain settlement is triggerable by either party (or an agent); no auto‑liquidation. Repayment is allowed any time before expiry; after expiry, repayment is still allowed unless liquidation has been initiated.
- **Market pricing via offers (amount-only):** Counterparties may propose a different **amount** than requested; **interest and expiry remain as requested**. **All counter‑offers are funded (escrowed with the offer).** The accepted offer is final; non‑accepted funds are auto‑returned or cancelable by the supplier.
- **Open liquidity:** Anyone can lend. **Funds are escrowed with each offer until acceptance, cancellation, or refund**; no central pool.
- **Partial collateralization:** Requester pledges only a portion of the staked balance as collateral; **all staked tokens keep earning**. **Only if liquidation starts** can up to the pledged portion be unbonded and transferred to the lender. *Example: stake 100, pledge 50; all 100 earn; upon liquidation, at most 50 are unbonded and delivered.*
- **Chain‑native collateral only (PoS L1):** No LST wrapping or receipts; agreements are secured by native staked L1 tokens in the vault.
- **Stablecoin-class settlement and working capital:** Simple, business‑friendly funding asset.

---

## 2.2 Design pillars

- **User‑sovereign collateral.** Vault owners keep validator control and custody of stake; assessment targets an on‑chain vault with verifiable state.
- **Oracle‑less risk surface.** Eliminates price‑feed and reflexive‑liquidation failure modes while preserving credit formation.
- **Lifecycle model.** Credit is perpetual with enforceable expiries (no auto‑liquidation); settlement is triggerable by participants or agents.
- **Repayment window.** The vault owner can repay up to the moment liquidation is triggered; post‑expiry repayment is allowed if liquidation has not started.
- **Clear offer mechanics.** Competition on offer **amount** reduces ambiguity; the accepted offer is unambiguous on‑chain.
- **Stablecoin‑class working capital against staked L1.** Maintain productive collateral while financing operations in a liquid settlement asset.

## 2.3 Protocol requirements (normative)

- **MUST** escrow funds with every counter‑offer; non‑accepted offers **MUST** be cancelable by the supplier and/or automatically refunded.
- **MUST** allow the vault owner to repay any time before the expiry date; after expiry, repayment **MUST** remain possible until liquidation is triggered.
- **MUST** disable direct repayment once liquidation has started and proceed with the liquidation flow.
- **MUST** limit liquidation to the pledged collateral portion; the remainder **MUST** remain staked and earning until explicitly unbonded.
- **MUST NOT** rely on off‑chain price oracles for credit decisions or liquidations.
- **MUST NOT** custody a central liquidity pool; offers are per‑supplier escrows.
- **SHOULD** emit events for: request opened, offer submitted/escrowed, offer accepted, funds transferred, repaid, liquidation started, liquidation completed, refund issued.
- **SHOULD** provide a clear supplier cancellation path to reclaim escrow for non‑accepted offers.

---

# 3. Lifecycle (concise)

**A. Credit agreement** *Model: perpetual with enforceable expiries; no auto‑liquidation; settlement is triggerable by participants or agents.*

1. Open a liquidity request from the vault.
2. Receive **amount‑only** counter‑offers (recorded on‑chain). **All counter‑offers are funded and escrowed with the offered amount.**
3. Accept one offer; the protocol transfers the escrowed funds from the winning offer to the requester; **non‑accepted offers can be canceled by suppliers or are automatically refunded by contract logic.**
4. Receive funds in the chosen settlement asset (e.g., a stablecoin); collateral remains staked in the vault.
5. Repayment window: the vault owner may repay any time before expiry. After expiry, repayment is still allowed **until** liquidation is triggered by a counterparty or agent. Once liquidation has started, repayment is no longer accepted and the liquidation flow proceeds **(the protocol unbonds up to the pledged collateral portion and settles transfer)**.
6. Update vault state.

---

# 4. Operational considerations & mitigations

- **Explicit triggers (no auto‑liquidation):** Improves predictability and auditability; runbooks and simple agents reduce operational friction.
- **Liquidity bootstrapping:** Early markets benefit from supplier reputation, curated cohorts, and transparent fill‑time metrics.
- **Escrow refunds:** Clear cancel/refund flows minimize supplier lockups and improve UX.

**Net result:** Vault owners keep control of collateral, counterparties see real, verifiable collateral, and the protocol surface is minimal, engineering for resilient credit.

---

# 5. Business thesis

- **Balance‑sheet primitive for PoS L1s:** Hold **staked L1 in a user vault** as a core asset; tap **stablecoin working capital** as needed.
- **Predictable, non‑dilutive financing:** Negotiated, time‑bounded obligations with transparent on‑chain settlement.
- **Open liquidity:** Anyone can lend and earn; depth grows as more lenders participate.

---

# 6. Concept reference (brand‑agnostic)
This section flows in five steps: (1) the core axes that define the design space; (2) the archetypes—common patterns along those axes; (3) SudoStake, placed on the axes; (4) decision heuristics; and (5) a small fill‑in template you can copy for any other concept.

## 6.1 Here are the core axes
These dimensions define the design space; treat them as a concise checklist when evaluating any protocol.

- **Collateral locus:** `native_stake` | `wrapped_receipt` | `pooled_token` | `custodial`.
- **Oracle exposure:** `none` | `price_feed` | `peg` | `index_attestation`.
- **User sovereignty:** `vault_owner` | `pool` | `custodian`.
- **Lifecycle:** `explicit_expiries` | `health_factor` | `event_driven`.
- **Pricing:** `peer_offers` | `utilization_curve` | `protocol_params` | `auction`.
- **Liquidation basis:** `time_trigger` | `price_trigger` | `peg_band` | `none`.
- **Settlement asset:** `stablecoin_class` | `native_token` | `fiat_on_offramp`.
- **Systemic surface:** `per_vault_containment` | `pooled_contagion`.
- **Operational complexity:** agents, governance, manual ops.
- **Business fit:** working‑capital suitability; accounting clarity.

## 6.2 Here are the archetypes
Common patterns that appear along those axes; use them as reference points, not endorsements.

| Concept                          | Collateral locus             | Pricing           | Oracle exposure          | User sovereignty                 | Liquidation basis        | Settlement asset (typical) | Notes                                |
|----------------------------------|------------------------------|-------------------|--------------------------|----------------------------------|--------------------------|----------------------------|--------------------------------------|
| **Oracle‑less P2P vault credit** | Native stake in a user vault | Peer offers       | None                     | Vault owner (validator control) | Time trigger             | stablecoin-class           | Deterministic; per‑vault underwriting |
| **Pooled lending market**        | LSTs or pooled receipts      | Utilization curve | Price feeds              | Pool                             | Health‑factor            | Stablecoins & others       | Deep liquidity; pool dynamics        |
| **Stablecoin minting (CDP)**     | LST/receipt collateral       | Protocol params   | Price feeds + peg mgmt   | Indirect via collateral contract | Price/peg thresholds     | Protocol stablecoin        | Peg/liquidation system risk          |
| **Restaking overlays**           | Restaked receipts            | Rewards schedule  | Oracle/attestation       | Abstracted from end user         | Slashing/attestation     | Points/rewards/sometimes stables | Extra yield and risk layers      |
| **Custodial/off‑chain credit**   | Centralized custody          | Underwriter set   | Off‑chain marks          | Custodian                        | Contractual (off‑chain)  | Fiat or stablecoins        | KYC/policy mediated                   |

## 6.3 Here is SudoStake
A filled card placing SudoStake on the axes so the abstract dimensions become concrete.

- **Concept name:** SudoStake (oracle‑less P2P vault credit)  
- **Definition:** Perpetual, oracle‑less credit secured by chain‑native staked collateral in a user‑controlled vault; amount‑only funded counter‑offers; partial collateralization; decentralized suppliers; stablecoin settlement.  
- **Collateral locus:** `native_stake`  
- **Oracle exposure:** `none`  
- **User sovereignty:** `vault_owner`  
- **Lifecycle:** `explicit_expiries` (perpetual; repay anytime before expiry, and after expiry until liquidation starts)  
- **Pricing:** `peer_offers` (amount‑only)  
- **Liquidation basis:** `time_trigger` (limited to pledged collateral portion)  
- **Settlement asset:** `stablecoin_class`  
- **Primary risks:** missed‑expiry (requires trigger); supplier concentration; agent failure (no auto‑liquidation); unbonding latency; network congestion during settlement.  
- **Operational notes:** optional agents to trigger settlement; all counter‑offers escrow funds; event logs for key state changes; supplier cancel/refund paths.  
- **Evidence to collect:** time_to_fill; effective_apr_band (borrower) & realized_yield (supplier); default_rate; recovery_timeline; incident_count; supplier_diversity (HHI).  
- **Chain‑specific considerations:** validator set and staking interface; token standard for settlement; stablecoin rails; unbonding period characteristics.

## 6.4 Decision heuristics
Use these when choosing a concept for a product, chain, or risk posture.

- Prefer **explicit expiries** when predictability and auditability are required.
- Prefer **per‑vault collateral containment** to minimize contagion risk.
- Prefer **oracle‑independent flows** when feeds/pegs introduce material risk.
- Prefer **pooled designs** when immediate depth and variable rates are acceptable.

## 6.5 Fill‑in template (for any archetype)
Copy this block to document any concept or protocol instance.

- **Concept name:** ≤5 words
- **Definition:** one sentence in plain language
- **Collateral locus:** choose from 6.1
- **Oracle exposure:** choose from 6.1
- **User sovereignty:** choose from 6.1
- **Lifecycle:** choose from 6.1
- **Pricing:** choose from 6.1
- **Liquidation basis:** choose from 6.1
- **Settlement asset:** e.g., stablecoin-class
- **Primary risks:** 3–5 bullets
- **Operational notes:** agents, governance, custody
- **Evidence to collect:** time_to_fill; apr/yield_band; default_rate; recovery_timeline; incident_count
- **Chain‑specific considerations:** validators; staking interface; token standard; settlement rails

---

# 7. Proof points & metrics

- **Time‑to‑fill** per liquidity request.
- **Credit yields:** effective APR range for requesters and **realized yield** for counterparties.
- **Timelines:** settlement timelines and recovery paths for credit agreements.
- **Offer dynamics:** count, acceptance rate, and average **amount** delta vs. requested amount.
- **Capital persistence:** repeat‑counterparty rate and counterparty tenure.
- **Supply‑side diversity:** unique suppliers, concentration (e.g., HHI), depth by tenor.
- **Automation coverage:** on‑time action rate by agents or participants.
- **System reliability:** uptime and incident count.

---

# 8. Operational rollout

- **Counterparty onboarding playbooks** with reputation and audit trails.
- **Automation guides** for safe, explicit expiry handling.
- **Monthly transparency reports** covering fill times, APRs, and recoveries.

---

# 9. Messaging

- **The liquidity protocol for stakers.**
- **Open liquidity—anyone can supply.**
- **Your stake stays yours.** We just let it finance your business.
- **No oracles, no pools—just credit.**
- **Staked L1 → stablecoin working capital** without giving up validator control.

---

# 10. Appendix: definitions & scope

- **Vault:** A user-controlled smart-contract account that owns the stake and accepts/repays credit.
- **Oracle-less:** Credit decisions and liquidations require no external price feeds; obligations are time/contract driven.
- **Partial collateralization:** Example: stake 100, pledge 50 as collateral; rewards accrue on the full 100 until liquidation. If liquidation begins, up to 50 may be unbonded and transferred to the lender.
- **Liquidation start:** The first on‑chain action that opens the liquidation flow. From that moment: direct repayment is blocked; the protocol may unbond only up to the pledged collateral; settlement proceeds via the liquidation flow.
- **PoS L1–agnostic:** This document centers on chain‑native staking and peer‑to‑peer agreement flows across Proof‑of‑Stake L1s; examples are concept‑level only.

---

# 11. Reference (out of scope)

**Supply‑side Decentralization Index (0–1)**  
*Purpose:* optional analytics for liquidity concentration; not a normative requirement of this protocol.

- Let **k** be the number of active suppliers, and let shares **s_i** sum to 1.
- **Fractional HHI:** `HHI_f = sum(s_i^2)`.
- **Normalized index:** `D = (1 - HHI_f) / (1 - 1/k)`. If `k = 1`, define `D = 0`.
- If you use percentage HHI (0–10,000), convert first: `HHI_f = HHI_percent / 10000`.

**Interpretation:** `D = 0` means least decentralized (single supplier). `D = 1` means most decentralized (equal shares across suppliers).
