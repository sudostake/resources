---
Purpose: Document the architecture, contracts, and operational model for SudoStake on NEAR.
Owner: Protocol Engineering (TBD)
Last Updated: 2025-09-29
Primary Audience: Researchers & Technical Reviewers, Ecosystem Partners & Builders, Contributors
---

# SudoStake: Core Infrastructure on NEAR

## Executive Summary
- SudoStake delivers a reusable, staking-backed credit vault system with deterministic, oracle-less settlement.
- Core deliverables (factory, vault, lifecycle interfaces) ship under a public-good license; reference UIs and agents illustrate integration paths but remain non-core.
- The design emphasizes reproducible deployments via code-hash registry, stable NEP-141 interfaces, and rich EVENT_JSON logs for automation.

## System Overview
| Component | Responsibility | Key Interfaces |
| --- | --- | --- |
| `near_vault_factory` | Deploys user-owned vault contracts, maintains code-hash registry, exposes vault discovery views. | `create_vault`, `list_vaults`, registry getters |
| `near_vault` | Manages collateral staking, credit lifecycle, repayments, and liquidation state machine. | `deposit`, `withdraw`, `request_credit`, `accept_credit`, `repay`, `liquidate` |
| Staking Pool Contracts | Native NEAR staking operations delegated per user choice. | `deposit_and_stake`, `unstake`, `withdraw_all` |
| NEP-141 Assets (USDC) | Credit settlement asset with callback-driven accounting. | `ft_transfer_call`, `ft_on_transfer` |

### Architecture Flow (Text Diagram)
```
Client / Agent
    │
    ├─ create_vault ──▶ near_vault_factory ── deploys ──▶ near_vault (user-owned)
    │                                                        │
    │                             staking ops ───────────────┼─▶ NEAR Staking Pool(s)
    │                                                        │
    ├─ request_credit / accept_credit ──▶ near_vault ◀── USDC ft_transfer_call
    │                                                        │
    └─ repay / liquidate ──▶ near_vault ── EVENT_JSON ──▶ Indexers / Observability
```

## Lifecycle & State Machine
1. **Vault Initialization:** Factory deploys a vault with user-specified parameters; code hash tracked for integrity.
2. **Collateral Management:** Vault stakes NEAR via approved pools, tracking liquid, matured, and pending unstaked funds.
3. **Credit Issuance:** Borrower requests credit (amount, deadline). Lender accepts amount-only counter-offer to lock USDC.
4. **Repayment:** Borrower repays principal + agreed premium before deadline via NEP-141 callbacks; vault releases collateral.
5. **Liquidation:** After deadline, any actor can trigger liquidation following the enforced order: liquid NEAR → matured unstake → targeted unstake across validators until obligations are met.

## Interfaces & Events
- All public methods return deterministic responses and emit structured `EVENT_JSON` logs (request lifecycle, repayments, liquidation outcomes).
- Indexer guidance: subscribe to vault factory registry updates for discovery; filter events by `sudostake.vault.<event>` namespaces.
- Feature flags stored on factory to enable gradual rollout of optimized paths (global vault code) and counter-offer enhancements.

## Security & Risk Controls
- Oracle-less design removes external price dependencies; credit risk is time-bound and staked collateral-backed.
- Processing lock prevents concurrent state mutation; storage reserves protect against rent exhaustion.
- Built-in assertions enforce validator lists and epoch timing to avoid stuck funds.
- Security roadmap: integrate protocol-level metrics (vault count, repayment ratio), commission third-party audit before mainnet, maintain bug bounty channel.

## Operations & Monitoring
- **Metrics Hooks:** NPR trackers in `near_vault_factory` and `near_vault` capture vault creation, active credit lines, and repayment outcomes.
- **Runbooks:** Liquidation watchers evaluate deadlines; automation agents can trigger repay reminders or execute liquidations within safe gas limits.
- **Observability Needs:** Partner with indexers for event ingestion; expose Grafana-ready JSON endpoints once deployed to mainnet candidate.

## Ecosystem Impact
- Wallets and super-apps enable one-tap borrow/repay experiences without relinquishing staking rewards.
- Agent frameworks can monitor vault health, refinance credit lines, or operate liquidation bots.
- Protocols gain a shared, audited collateral primitive to extend credit markets or structured products around native staking.

## Current Status (Milestone M1)
- Delivered: wallet connection, vault dashboards, deposit/withdraw, delegate/undelegate, claim-unstaked balances, request/accept/repay flows.
- In progress: global vault deployment behind flags (Milestone M2) with code-hash registry and cost optimizations.

## Open Requests to Infra & Rewards Committees
- Register intents for credit actions (create vault, accept, repay, liquidate) to streamline automation tooling.
- Provide indexing and observability support for lifecycle events and NPR metrics.
- Coordinate independent security review and disclosure guidelines ahead of mainnet beta.

## Key Metrics to Track
- **Adoption:** number of active vaults, total NEAR staked via SudoStake.
- **Credit Throughput:** USDC borrowed vs. repaid, liquidation frequency.
- **Integrator Footprint:** wallets/agents/dApps live on the primitive.
- **Reliability:** settlement success rate, median repay/liquidate time-to-finality.

## References
- NEAR Intents Overview — https://docs.near.org/chain-abstraction/intents/overview
- NEAR Intents (developer) — https://docs.near-intents.org/near-intents
- Chain Signatures — https://docs.near.org/chain-abstraction/chain-signatures
- Staking — https://docs.near.org/protocol/network/staking
- Staking-Pool Core Contract — https://github.com/near/core-contracts/tree/master/staking-pool
- NEP-141 FT Standard — https://nomicon.io/Standards/Tokens/FungibleToken/Core
- Native USDC — https://pages.near.org/blog/usdc-launches-natively-on-the-near-protocol/

## Related Documents
- [Roadmap — NEAR MVP & Launch](../execution/sudostake-roadmap-near-mvp.md)
- [Milestone M1 Progress Report](../execution/sudostake-m1-progress.md)
- [Risk Register](../execution/sudostake-risk-register.md)

## Next Review
- Review architecture notes and integration status by 2025-10-20 or after Milestone M2 readiness check.

Contact: hello@sudostake.com • https://sudostake.com
