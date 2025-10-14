---
Purpose: Equip builders and integration partners with integration steps, API references, and support contacts.
Owner: Ecosystem & Partner Engineering (TBD)
Last Updated: 2025-10-08
Primary Audience: Ecosystem Partners & Builders, Researchers & Technical Reviewers
---

# Builder Integration Guide — SudoStake on NEAR

This guide is the single reference for partners preparing to integrate with the SudoStake contracts and supporting services.

## Integration Snapshot
- **Environment:** Factory + Vault (Rust/near-sdk) deployed on NEAR testnet; mainnet candidate will stage behind controlled access during Step 3.
- **Collateral & Settlement:** Staked NEAR via `staking_pool.wasm`; loans and repayments settle in native USDC (NEP-141).
- **Signals:** Structured `EVENT_JSON` logs for request, accept, repay, liquidation; NPR metrics for vault, loan, and repayment counts.
- **Upcoming Changes:** Shared vault rollout and amount-only counter-offers unlock during Step 2 — Shared Vault Deployment.

## Prerequisites
- Familiarity with NEP-141 (`ft_transfer_call` callbacks) and `staking_pool.wasm` interfaces.
- Ability to consume `EVENT_JSON` logs and schedule on-chain actions (agents/intents).

## Integration Readiness Checklist
| Step | Outcome | Owner |
| --- | --- | --- |
| Confirm contract addresses and deployment status. | Testnet + pending mainnet candidate endpoints recorded. | SudoStake team ↔ partner |
| Wire `ft_transfer_call` offer flow to escrow USDC. | Vault escrow lifecycle tested end to end. | Partner |
| Subscribe to `sudostake.vault.*` events. | UI/automation receives deterministic lifecycle logs. | Partner |
| Implement `process_claims` automation. | Post-deadline liquidations handled within gas/time limits. | Partner |
| Align on readiness checkpoints. | Shared beta timeline and rollback plan captured. | Joint |

## Suggested Implementation Path
1. Review system design and sequencing: [Core Infrastructure Overview](../systems/sudostake-core-infra-on-near.md), [Action Plan — NEAR MVP & Launch](../execution/sudostake-action-plan-near-mvp.md).
2. Stand up offer submission using `ft_transfer_call` and validate refund behavior for non-winning bids.
3. Map `sudostake.vault.*` event payloads into your indexing or alerting stack.
4. Automate `process_claims` or equivalent liquidation helper after loan expiry.
5. Schedule a joint execution review once Step 2 readiness is confirmed to plan mainnet rollout.

## APIs & Contracts
| Component | Contract | Key Methods |
| --- | --- | --- |
| Factory | `near_vault_factory` | `mint_vault`, `list_vaults`, registry getters |
| Vault | `near_vault` | `delegate`, `request_liquidity`, `accept_best_offer`, `process_claims` |
| USDC (NEP-141) | `usdc.fakes.testnet` (testnet) | `ft_transfer_call`, `ft_on_transfer` |
| Staking Pool | NEAR validators | `deposit_and_stake`, `unstake`, `withdraw_all` |

## Reference Flows
- Borrower: wallet/app → mint vault → delegate → request liquidity → accept best offer → repay via USDC.
- Lender: discover request → `ft_transfer_call` counter-offer → if accepted, escrow becomes loan → after deadline run `process_claims` if needed.
- Automation: agents/intents monitor deadlines, send reminders, and trigger liquidations.

## Due Diligence Pack
- Architecture & invariants: [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)
- Execution cadence: [SudoStake Action Plan — NEAR MVP & Launch](../execution/sudostake-action-plan-near-mvp.md), [Progress Report 3](../execution/progress-report-3.md)
- Risk posture: [SudoStake Risk Register](../execution/sudostake-risk-register.md)
- Integration inventory: [Documentation Inventory](../meta/documentation-inventory.md)

## Observability
- Subscribe to `EVENT_JSON` namespaces (`sudostake.vault.*`) to follow vault activity.
- Monitor vault registry updates for new deployments once the Step 2 code-hash registry ships.
- Track metrics such as vault count, active loans, and repayment rates via NPR trackers exposed in the contracts.

## Support & Contact
- Email hello@sudostake.com for onboarding.
- Builders channel (Discord/Telegram TBD) will host API updates and rollout notices.
- Progress reports: [progress-report-3.md](../execution/progress-report-3.md), [progress-report-2.md](../execution/progress-report-2.md).

## Related Documents
- [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)
- [SudoStake Risk Register](../execution/sudostake-risk-register.md)
- [Investor & Partner Brief](./investor-partner-brief.md)

## Next Review
- Update after the Step 2 factory rollout or sooner if contract interfaces change.
