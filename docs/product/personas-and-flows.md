---
Purpose: Describe SudoStake NEAR MVP personas, flows, and system rules for product and integration planning.
Owner: Product & Delivery (TBD)
Last Updated: 2025-09-29
Primary Audience: Product, Researchers & Technical Reviewers, Contributors
---

# SudoStake — Personas & Flows (NEAR MVP)

## TL;DR
- **Context:** NEAR MVP as of 2025-08-20.
- **Summary:** Non-custodial, oracle-less vaults with manual or agent execution. USDC (NEP-141) liquidity, staked NEAR collateral, no loan fees, 10 NEAR vault mint fee.

## Key Terms
- **owed (USDC):** principal + interest due before deadline.
- **liquidation_target_near (NEAR):** maximum NEAR transferable during recovery.
- **liquidated (NEAR):** NEAR delivered so far during liquidation.

---

## At a glance
- What: Borrow USDC against staked NEAR via non‑custodial, oracle‑less vaults.
- Who: NEAR stakers (owners) and USDC lenders.
- How: Open request → accept best offer → repay by deadline or anyone runs deterministic liquidation.
- Defaults: Vault mint fee 10 NEAR; offers amount‑only; keep top‑10 offers with eviction + refund (or retry log); unstake unlock in 4 epochs; rewards auto‑restake.
- Triggers: Owner, lender, or agent can execute; no price oracles.
- Fees: Zero loan fees (network/storage fees still apply).

---

## Contents
1) Purpose & scope
2) At a glance
3) System rules (MVP)
4) Personas (Owner, Lender)
5) User needs
6) Entities & states
7) Core user flows
8) Control flow (repay vs liquidate; process_claims)
9) Lender discovery & offer (sequence)
10) System context diagram
11) UI state model
12) Edge cases & recovery
13) KPIs

---

## Purpose & scope

This document summarizes (a) **user personas** and (b) **system/user flows** for SudoStake’s **NEAR MVP**. It is meant for product, protocol, and integration reviews.

---

## System rules (MVP)
- Self‑custody: non‑upgradable, keyless vaults; owner stored in state; mint via Factory for 10 NEAR.
- Delegation via NEAR `staking_pool.wasm`; rewards auto‑restake.
- Liquidity request: { token: USDC, amount, interest, duration, collateral: staked NEAR }.
- Counter-offers: amount-only; escrow via `ft_transfer_call`; keep top-10; evict lowest with refund or retry log.
- Acceptance: best offer locked; others refunded.
- Repayment: owner repays owed (USDC) before deadline.
- Default/liquidation: after `accepted_at + duration`, anyone may recover: liquid → matured‑unstaked → unstake remainder; stop at `liquidation_target_near`.
- Fees: zero protocol fees on loan activities.

---

## Personas

### Vault owner (NEAR staker)
Profile: Self‑custody NEAR holder; comfortable with wallets/validators.
Goals: Keep yield; unlock USDC; clear deadlines; preserve validator autonomy; minimize fees.
Key actions: Mint (10 NEAR); delegate/undelegate; open request (amount, interest, duration, collateral); review amount‑only offers; accept best; repay or allow liquidation.
Decisions: Duration fit; staked ≥ collateral; validator reliability; avoid idle balances.
Risks: Validator performance/slashing; missed deadlines (use automation).
Owner metrics: time to mint; request→accept; on‑time repay; liquidation incidence.

---

### Lender (USDC provider)
Profile: USDC holder seeking rules‑based yield backed by staked NEAR.
Goals: Predictable APR; transparent recovery; low overhead.
Key actions: Browse requests; submit amount‑only counter‑offer via `ft_transfer_call` (escrow); if accepted, escrow becomes loan; others refunded/queued; pre‑deadline expect USDC+interest; post‑deadline call `process_claims`.
Decisions: Collateral coverage, duration, rate, exposure sizing.
Risks: Temporarily stuck funds (self‑triggered recovery); oracle risk (none).
Lender metrics: fill rate; realized vs quoted APR; recovery time; principal recovery rate.

---

## User needs

- **As a staker,** borrow USDC against staked NEAR **without leaving self-custody**, keeping validator choice and yield.
- **As a lender,** rely on **rules-based recovery** on default, no oracles, to assess risk deterministically.
- **As the deadline approaches,** use **automation or one-click actions** to repay or recover.

---

## Key entities & states

| Component | Purpose | Key methods / state |
|---|---|---|
| **Factory contract** | Mints keyless, non-upgradable vaults; enforces exact **10 NEAR** mint fee | `mint_vault`, `withdraw_balance`, `get_contract_state` |
| **Vault contract** | Delegation, requests/offers, repayments, liquidation, refund retries | `delegate`, `undelegate`, `request_liquidity`, `accept_best_offer`, `process_claims`, `cancel_liquidity_request` |
| **Validators (`staking_pool.wasm`)** | Native staking ops; auto-restake rewards; 4-epoch unlock | `deposit_and_stake`, `unstake`, `withdraw_all`, `get_account` |
| **USDC (NEP-141)** | Loan/offer escrow and refunds | `ft_transfer_call`, `ft_transfer` |
| **State fields** | Track offers, accepted offer, unstake entries, refunds, liquidation progress | `counter_offers (top-10)`, `accepted_offer`, `unstake_entries`, `retry_entries`, `liquidated` |

---

## Core user flows

### Owner journey — vault -> loan

```mermaid
flowchart TD
    A["Connect wallet"] --> B["Mint vault (exact 10 NEAR)"]
    B --> C["Delegate to validators via staking_pool"]
    C --> D["Open liquidity request: USDC, amount, interest, duration, collateral"]
    D --> E["Offers arrive (amount-only); USDC escrowed on submission"]
    E --> F["Accept best offer"]
    F --> G["Loan active until deadline"]
    G --> H{"Repay before deadline?"}
    H -- "Yes" --> I["Owner repays owed (USDC)"]
    I --> J["Close loan & clear state"]
    H -- "No" --> K["Trigger liquidation via process_claims"]
```

### Lender journey — offer -> outcome

```mermaid
flowchart TD
    A["Connect wallet"] --> B["Browse open requests"]
    B --> C["Submit counter-offer amount (ft_transfer_call) -> escrow USDC"]
    C --> D{"Offer accepted?"}
    D -- "No" --> E["Refunded (or queued for retry if recipient unregistered)"]
    D -- "Yes" --> F["Escrowed USDC becomes funded loan"]
    F --> G["Wait until deadline"]
    G --> H{"Overdue?"}
    H -- "No" --> I["Receive USDC + interest"]
    H -- "Yes" --> J["Call process_claims to recover from NEAR"]
    J --> K["Complete when liquidated == liquidation_target_near"]
```

---

## Control flow

### Lifecycle: repay vs liquidate

```mermaid
flowchart TD
    A["Accepted offer"] --> B{"Before repayment deadline?"}
    B -- "Yes" --> C["Owner repays owed (USDC)"]
    C --> D["Transfer USDC; mark repaid"]
    D --> E["Close loan; clear state"]
    B -- "No" --> F["Trigger liquidation (owner/lender/agent)"]
    F --> G["Run process_claims"]
    G --> H["Follow liquidation sequence"]
    H --> I["Stop when liquidated == liquidation_target_near"]
    I --> J["Close liquidation"]
```

### Executor: `process_claims`

```mermaid
flowchart TD
    P0["process_claims (attach 1 yoctoNEAR)"] --> C1{"Deadline passed?"}
    C1 -- "No" --> X1["Abort (still within term)"]
    C1 -- "Yes" --> I0["Init liquidation if first run"]
    I0 --> L1["Use available NEAR balance"]
    L1 --> C2{"Reached target?"}
    C2 -- "Yes" --> Z["Transfer NEAR, update liquidated, close"]
    C2 -- "No" --> M1["Withdraw matured unstaked (withdraw_all)"]
    M1 --> R1["Reconcile unstake entries"]
    R1 --> C3{"Reached target?"}
    C3 -- "Yes" --> Z
    C3 -- "No" --> U1["Unstake partial remainder"]
    U1 --> W1["Wait 4 epochs; call again to withdraw matured"]
```

---

## Lender discovery & offer (sequence)

```mermaid
sequenceDiagram
    actor Lender
    participant UI as SudoStake UI or Agent
    participant Vault
    participant USDC as USDC NEP-141

    Lender->>UI: Browse open requests
    UI-->>Lender: Show terms and collateral coverage
    Lender->>USDC: ft_transfer_call amount with CounterOffer
    USDC-->>Vault: ft_on_transfer escrow received
    Vault-->>Lender: Refund escrow if evicted/not accepted
    Vault-->>Lender: Loan funded when owner accepts best offer
```

---

## System context diagram

```mermaid
graph TD
    Owner["Vault owner (NEAR staker)"]
    Lender["USDC provider"]
    Agent["Automation agent"]
    Factory["Factory contract"]
    Vault["Vault contract"]
    SP["NEAR staking_pool.wasm"]
    Token["USDC (NEP-141)"]

    Owner -- Mint 10 NEAR --> Factory
    Factory -- Deploys --> Vault
    Owner -- Delegate / Undelegate --> Vault
    Vault -- deposit_and_stake / unstake / withdraw_all --> SP
    Owner -- Open request --> Vault
    Lender -- Counter-offer (USDC) --> Token
    Token -- ft_on_transfer --> Vault
    Agent -- Trigger repay or liquidation --> Vault
    Vault -- Transfers NEAR / Refunds USDC --> Lender
```
---

## UI state model

| State | Meaning | Primary actions |
|---|---|---|
| **Active** | Vault exists; no open request | Delegate/undelegate; open request |
| **Request Open** | Accepting amount-only offers | Accept best; cancel request |
| **Accepted** | Loan active; countdown until deadline | Repay `owed (USDC)` |
| **Repaid** | Loan closed; state cleared | — |
| **Liquidation Active** | Deadline passed; deterministic recovery in progress | Run `process_claims` until `liquidated == liquidation_target_near` |
| **Closed** | No active loan; normal vault ops | Delegate/undelegate; open new request |

---

## Edge cases & recovery

- **Failed USDC refunds:** append to `retry_entries`; allow retries by owner/proposer; emit logs.
- **Typical refund failures:** recipient unregistered or lacks storage deposit on USDC token.
- **Storage/gas safety:** enforce storage buffer (e.g., **0.01 NEAR**) and fixed gas in integration paths.
- **Validator stake = 0:** prune from active set during checks.
- **Over-unstake attempts:** rely on `staking_pool` errors; vault surfaces failure cleanly.
- **Takeover (future):** allowed only when no active validators and no pending unstake entries; blocks new delegations while listed.

---

## KPIs

| Track | Metrics |
|---|---|
| **Owner** | median mint time; request->accept time; on-time repay rate; % with clear validator sets |
| **Lender** | fill rate; realized vs quoted APR; median liquidation duration; principal recovery rate |
| **System** | failed refund rate; automation coverage; revert rate per method |

## Related Documents
- [SudoStake Roadmap — NEAR MVP & Launch](../execution/sudostake-roadmap-near-mvp.md)
- [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)
- [Lean Canvas — SudoStake on NEAR](./lean-canvas-sudostake-near.md)

## Next Review
- Revisit after the 2025-10-15 risk register update or when user flows change materially.
