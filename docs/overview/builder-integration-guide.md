---
Purpose: Equip builders and integration partners with integration steps, API references, and support contacts.
Owner: Ecosystem & Partner Engineering (TBD)
Last Updated: 2025-10-01
Primary Audience: Ecosystem Partners & Builders, Researchers & Technical Reviewers
---

# Builder Integration Guide — SudoStake on NEAR

## Quick Facts
- Contracts: Factory + Vault (Rust/near-sdk) live on NEAR testnet; mainnet candidate ships in Milestone 3 — Mainnet Candidate Behind Feature Flags.
- Collateral: Staked NEAR via `staking_pool.wasm`; loans settle in native USDC (NEP-141).
- Events: `EVENT_JSON` logs for request, accept, repay, and liquidation actions.
- Feature flags: Shared vault rollout and amount-only counter-offers unlock during Milestone 2 — Factory Optimization.

## Prerequisites
- Familiarity with NEP-141 (`ft_transfer_call` callbacks) and `staking_pool.wasm` interfaces.
- Ability to consume `EVENT_JSON` logs and schedule on-chain actions (agents/intents).

## Integration Steps
1. Review the architecture and roadmap: [Core Infrastructure Overview](../systems/sudostake-core-infra-on-near.md), [Roadmap — NEAR MVP & Launch](../execution/sudostake-roadmap-near-mvp.md).
2. Implement the USDC offer flow with `ft_transfer_call` so lenders escrow funds into the vault.
3. Subscribe to `sudostake.vault.*` events and map IDs to your UI and automation.
4. Add automation for `process_claims` after deadlines (strongly recommended).
5. Sync on beta access, contract addresses, and feature flags with the team.

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
- Subscribe to `EVENT_JSON` namespaces (`sudostake.vault.*`) to follow vault activity.
- Monitor vault registry updates for new deployments once the Milestone 2 code-hash registry ships.
- Track metrics such as vault count, active loans, and repayment rates via NPR trackers exposed in the contracts.

## Support & Contact
- Email hello@sudostake.com for onboarding.
- Builders channel (Discord/Telegram TBD) will host API updates and feature-flag notices.
- Progress reports: [progress-report-3.md](../execution/progress-report-3.md), [progress-report-2.md](../execution/progress-report-2.md).

## Related Documents
- [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)
- [SudoStake Risk Register](../execution/sudostake-risk-register.md)
- [Investor & Partner Brief](./investor-partner-brief.md)

## Next Review
- Update after the Milestone 2 factory rollout or sooner if contract interfaces change.
