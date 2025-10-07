---
Purpose: Equip builders and integration partners with integration steps, API references, and support contacts.
Owner: Ecosystem & Partner Engineering (TBD)
Last Updated: 2025-09-30
Primary Audience: Ecosystem Partners & Builders, Researchers & Technical Reviewers
---

# Builder Integration Guide — SudoStake on NEAR

## Quick Facts
- Contracts: Factory + Vault (Rust/near-sdk) on NEAR testnet (mainnet candidate in M3).
- Collateral: Staked NEAR via `staking_pool.wasm`; loans in native USDC (NEP-141).
- Events: `EVENT_JSON` logs for request, accept, repay, liquidation actions.
- Flags: Global vault rollout and counter-offers (amount-only) behind flags in M2.

## Prerequisites
- Familiarity with NEP-141 (`ft_transfer_call` callbacks) and `staking_pool.wasm` interfaces.
- Ability to consume `EVENT_JSON` logs and schedule on-chain actions (agents/intents).

## Integration Steps
1. Review architecture and roadmap: `../systems/sudostake-core-infra-on-near.md`, `../execution/sudostake-roadmap-near-mvp.md`.
2. Implement USDC offer flow using `ft_transfer_call` to escrow funds to a vault.
3. Subscribe to `sudostake.vault.*` events; map IDs to UI and automation.
4. Add automation for `process_claims` post-deadline (optional but recommended).
5. Coordinate beta access, addresses, and feature flags with the team.

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

## Observability
- Subscribe to `EVENT_JSON` namespaces (`sudostake.vault.*`).
- Monitor vault registry updates for new deployments (code-hash registry in M2).
- Track metrics (vault count, active loans, repayment rates) via NPR trackers.

## Support & Contact
- hello@sudostake.com for onboarding.
- Join the builders channel (Discord/Telegram TBD) for API updates and feature-flag announcements.
- Progress reports: [progress-report-3.md](../execution/progress-report-3.md), [progress-report-2.md](../execution/progress-report-2.md).

## Related Documents
- [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)
- [SudoStake Risk Register](../execution/sudostake-risk-register.md)
- [Investor & Partner Brief](./investor-partner-brief.md)

## Next Review
- Update after the M2 factory rollout or sooner if contract interfaces change.
