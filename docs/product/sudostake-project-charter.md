---
Purpose: Capture scope, objectives, and governance for the SudoStake MVP.
Owner: Muhammed Ali
Last Updated: 2025-10-08
Primary Audience: Internal Stakeholders, Contributors
---

# SudoStake Project Charter

## Overview
- **Product:** Liquidity protocol for stakers; users borrow stablecoins without unstaking or handing over control.
- **Approach:** User-owned vaults manage staking, credit requests, repayments, and deterministic liquidations. No synthetics, oracles, custodians, or protocol token.
- **Outlook:** As staking grows, SudoStake enables native, composable credit markets on NEAR.

## Objectives
- Deliver non-custodial borrowing for stakers.
- Enable permissionless lending via counter-offers.
- Maintain an oracle-less design with strict lifecycle rules.
- Launch the MVP on NEAR with both web and AI interfaces.

## Scope

### In Scope
- NEAR contracts (factory + vault) hosted at https://github.com/sudostake/sudostake_contracts_near.
- Web interface for vault creation, staking, borrowing, repayment, liquidation triggers.
- Chat-based AI agent mirroring web functionality.
- Full vault lifecycle: staking → borrowing → repayment → liquidation.
- NEP-141 assets (e.g., USDC) for lending and repayment.
- Vault resale/takeover when risk thresholds allow.

### Out of Scope
- Automated liquidations (manual triggers or external tools only).

## Deliverables
- Testnet-ready NEAR smart contracts (vault + factory, delegation, borrowing, repayment, liquidation).
- NEAR web app covering vault management, staking operations, and lending flows.
- AI agent with feature parity to the web app.
- Manual liquidation tooling compatible with the oracle-less design.
- Counter-offers (amount-only) with best-offer selection and clean fallbacks.
- Optional vault resale flow for safe takeover scenarios.

## Stakeholders & Roles
- **Muhammed Ali** — Project lead (contracts, frontend, AI).
- **NEAR testnet users** — Early adopters and feedback loop.
- **NEAR community** — Validators, stakers, contributors.
- **Archway users** — Provide multi-chain validation and proof points.

## Governance & Authority
- Project manager: Muhammed Ali.
- Decision model: centralized for MVP speed; governance expansion explored after rewrite.

## Action Sequence
- NEAR contracts deployed to testnet — ✅ Complete.
- Web MVP live — 🚧 In progress.
- AI agent feature parity — 🚧 In progress.
- First lender interaction on testnet — 🔜 Upcoming.
- MVP retrospective and scope review — 🔜 Post-launch.

## Budget & Funding
- Funded by NEAR Foundation (Protocol Rewards Cohort 2).
- Covers engineering, infrastructure, NEAR MVP, and AI agent.
- No protocol token or external fundraising this phase.
- Emphasis on efficient delivery and minimal overhead.

## Risks & Assumptions
- **Risks:** User comprehension gaps; limited initial liquidity; manual liquidation requirements; smart-contract vulnerabilities; staking_pool.wasm constraints; AI agent maturity.
- **Assumptions:** Oracle-less core remains viable; demand for borrow-against-stake exists; web/AI clients serve as launch surfaces; reproducible builds arrive next; NEAR ecosystem support and compatibility persist.

## Related Documents
- [sudostake-action-plan-near-mvp.md](../execution/sudostake-action-plan-near-mvp.md)
- [sudostake-core-infra-on-near.md](../systems/sudostake-core-infra-on-near.md)
- [project-one-pager-sudostake-near.md](../overview/project-one-pager-sudostake-near.md)

## Next Review
- Revisit during the MVP retrospective or when scope materially changes.
