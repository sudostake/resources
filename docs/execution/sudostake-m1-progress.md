---
Purpose: Record SudoStake NEAR MVP Step 1 outcomes and guardrails.
Owner: Product & Delivery (TBD)
Last Updated: 2025-10-08
Primary Audience: Contributors, Investors & VCs, Internal Stakeholders
---

# SudoStake NEAR MVP — Step 1 Progress

Date: 2025-09-23  •  Definition: Testnet Flow Validation (formerly Milestone 1 — Web Testnet Feature-Complete, Target: 2025-09-30)  •  Reference: [SudoStake Action Plan — NEAR MVP & Launch](./sudostake-action-plan-near-mvp.md)

## Summary
- Step 1 delivered on 2025-09-23, ahead of the September 30 target.
- End-to-end flows validated on testnet: mint → delegate/undelegate → request → accept → repay → liquidation → claim.
- Marketplace live for lender discovery; counter-offers (amount-only) deferred without impacting scope.

## Scope Completed
- Connect NEAR wallet.
- Vault dashboard and detail views (deposit/withdraw).
- Staking management: delegate, undelegate, claim unstaked.
- Loan lifecycle: request, accept (USDC transfer to vault), repay principal + agreed premium before deadline.
- Post-deadline liquidation: liquid funds → matured unstaked → targeted unstake, halting exactly at the owed amount.
- Lender marketplace surfacing open requests with links to vaults.

## Exceptions
- Counter-offers (amount-only) deferred; planned for follow-up work after Step 1.

## Guardrails
- Oracle-less execution; all actions are explicitly triggered.
- No protocol fees on loan activity during Step 1.
- Collateral limited to staked NEAR; liquid balances excluded at request time.
- Credit lines enforce deadlines that gate liquidation eligibility.

## Related Documents
- [Progress Report 3](./progress-report-3.md)
- [SudoStake Action Plan — NEAR MVP & Launch](./sudostake-action-plan-near-mvp.md)
- [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Confirm Step 2 dependencies during the next roadmap checkpoint (target 2025-10-07).
