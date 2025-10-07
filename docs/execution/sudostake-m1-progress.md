---
Purpose: Record SudoStake NEAR MVP Milestone 1 outcomes and guardrails.
Owner: Product & Delivery (TBD)
Last Updated: 2025-09-29
Primary Audience: Contributors, Investors & VCs, Internal Stakeholders
---

# SudoStake NEAR MVP — Milestone 1 Progress

Date: 2025-09-23  •  Definition: M1 (Target: 2025-09-30)  •  Reference: [sudostake-roadmap-near-mvp.md](./sudostake-roadmap-near-mvp.md)

## Summary
- M1 delivered on 2025-09-23, ahead of the September 30 target.
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
- Counter-offers (amount-only) deferred; will return when bandwidth allows.

## Guardrails
- Oracle-less execution; all actions are explicitly triggered.
- No protocol fees on loan activity during M1.
- Collateral limited to staked NEAR; liquid balances excluded at request time.
- Credit lines enforce deadlines that gate liquidation eligibility.

## Related Documents
- [progress-report-3.md](./progress-report-3.md)
- [sudostake-roadmap-near-mvp.md](./sudostake-roadmap-near-mvp.md)
- [sudostake-core-infra-on-near.md](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Confirm M2 dependencies during the next roadmap checkpoint (target 2025-10-07).
