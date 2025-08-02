# SudoStake Project Charter

## 1. Title
**The liquidity protocol for stakers**

## 2. Purpose / Business Case

SudoStake is a protocol that lets stakers borrow stablecoins without unstaking or giving up control of their tokens.

Users create self-owned vaults that hold their staked assets. These vaults can request stablecoin loans backed by that stake. Lenders fund the loans in exchange for fixed interest or the right to claim the collateral if the loan isn’t repaid.

Everything is handled fully on-chain:
- No synthetic tokens  
- No price oracles  
- No protocol-issued token  
- No need to trust a custodian

As staking becomes a dominant capital activity in PoS ecosystems, **SudoStake fills a critical gap: enabling composable credit markets directly on top of native staking.**

## 3. Objectives

- Provide a fully non-custodial borrowing system for stakers
- Support permissionless lending via counter-offers
- Avoid synthetic tokens and oracles entirely
- Launch a working MVP on NEAR Protocol
- Build a usable interface (web + AI) for vault interactions

## 4. Scope

### ✅ What’s Included in This Phase
- Use of fully working first iteration of the [SudoStake NEAR smart contracts](https://github.com/sudostake/sudostake_contracts_near)
- A [web interface](https://www.sudostake.com) where users can:
  - Create vaults  
  - Stake NEAR  
  - Request stablecoin loans  
  - Repay or trigger liquidation
- A chat-based [SudoStake AI agent](https://github.com/sudostake/sudostake_agent_near) that supports the same features as the web app
- Full support for the entire vault lifecycle — from staking to borrowing, repayment, and liquidation
- Lending and repayment handled using NEP-141 tokens (like USDC)
- Vault resale (takeover) feature is implemented but treated as optional in this MVP

### ❌ Not Included in This Phase
- Liquidation is not automated — it must be triggered manually or by external tools (like bots or agents)

## 5. Deliverables

This MVP phase will produce the following key components:

- **NEAR smart contracts deployed to testnet**  
  Includes the vault and factory contracts. Supports delegation, borrowing, repayment, and liquidation

- **Web app interface for NEAR users**  
  Create vaults, manage stake, request loans, and repay or liquidate

- **AI agent for vault interaction**  
  Chat-based interface that mirrors the web app's core functionality

- **Manual liquidation system**  
  Liquidation must be triggered manually or externally. Fully on-chain and oracle-free

- **Counter-offer lending mechanism**  
  Lenders can submit counter-offers that change the **loan amount only**. All other terms (interest, duration, collateral) are fixed by the vault owner. Only the best offer is accepted; others are **refunded and dropped**

- **Optional: Vault resale (takeover)**  
  Vaults can be listed for resale, but this is not required for MVP launch. May be revised in future contract versions

## 6. Stakeholders

| Role                  | Description                                                                  |
|-----------------------|------------------------------------------------------------------------------|
| **Muhammed Ali**      | Project Lead — smart contracts, frontend, AI agent                           |
| **NEAR Testnet Users**| Early adopters testing vault creation, lending, and liquidation              |
| **NEAR Community**    | Validators, stakers, and ecosystem contributors                              |
| **Archway Users**     | Users from the initial Cosmos-based deployment, serving as multichain proof  |

## 7. Project Manager and Authority

**Project Manager:** *Muhammed Ali*

- Oversees smart contracts, frontend, and AI development
- Has full authority over scope, technical direction, and delivery for this MVP
- Decisions are centralized for speed and simplicity — no DAO or multisig involved
- Governance models may be explored in a future phase after contract rewrite

## 8. Milestones

| Milestone                          | Status         |
|-----------------------------------|----------------|
| NEAR contracts deployed to testnet| ✅ Complete     |
| Web MVP goes live                 | 🔄 In Progress  |
| AI agent reaches feature parity   | 🔄 In Progress  |
| First lender interaction on testnet| 🔜 Expected soon|
| MVP retrospective and scope review| 🔜 Post-launch  |

## 9. Budget Estimate

- Funded by the **NEAR Foundation**
- Part of the **NEAR Protocol Rewards Cohort 2**
- Budget supports engineering, infrastructure, and delivery of the NEAR MVP and AI agent
- No protocol token, no external fundraising during this phase
- Focused on efficient delivery with minimal overhead

## 10. Risks and Assumptions

### ⚠️ Risks

- **User comprehension barrier**: The concept of vault-based lending, manual liquidation, and non-custodial delegation may be unfamiliar or intimidating to new users
- **Low initial liquidity**: Early-stage adoption could be limited by lack of stablecoin lenders willing to participate before trust is established
- **Action-dependent liquidation**: Loan liquidations must be explicitly triggered — either by the vault owner or the lender. If both parties fail to act, liquidation is delayed (but not blocked)
- **Smart contract bugs**: Despite thorough testing, bugs or unexpected edge cases in vault or counter-offer logic could impact reliability
- **Limitations of NEAR staking design**: NEAR’s use of `staking_pool.wasm` restricts some advanced features (e.g., governance delegation, reward claiming)
- **AI agent limitations**: The AI interface is new and evolving; any bugs or downtime here could reduce accessibility

### ✅ Assumptions

- The core protocol is fully **oracle-less**, but external automation tools (like bots or AI agents) can be built on top
- There is strong interest in borrowing against staked NEAR while keeping validator control
- The initial web and AI interfaces are starting points — other interfaces and integrations can be added as needed
- The current MVP is just the **first iteration** — reproducible builds are planned and expected as the next step in the protocol’s evolution
- NEAR Protocol will remain stable, decentralized, and compatible with non-custodial smart contract systems

