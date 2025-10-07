---
Purpose: Provide community members with a digestible snapshot of benefits, status, and how to stay involved.
Owner: Community Lead (TBD)
Last Updated: 2025-10-02
Primary Audience: Community & Prospective Users
---

# Community Snapshot — SudoStake on NEAR

## TL;DR
- Keep staking rewards and still borrow USDC.
- Lifecycle is rules-based (request → accept → repay → liquidation) with no custodians.
- Automation help comes from NEAR intents and agents.

## Status
- **Step 1 — Testnet Flow Validation:** Delivered 2025-09-23 with full borrow/lend flows live on NEAR testnet.
- **Now Working On:** Step 2 — Shared Vault Deployment (global vault rollout, code-hash registry) targeting 2025-11-15.
- **Next Updates:** Roadmap checkpoint on 2025-10-07; next progress report by 2025-10-03.

## What’s Live Today
- Mint a vault for 10 NEAR, then delegate, undelegate, or claim unstaked funds.
- Request, accept, and repay loans in USDC.
- Trigger manual liquidations after deadlines; every step emits clear on-chain events.

## Coming Soon
- Counter-offer (amount-only) improvements now that Step 1 is complete.
- Global vault deployment (single code hash) rolling out once the factory registry lands.
- Beta cohorts for lenders and community testers once Step 2 reaches readiness.

## Key Questions
- **Is anything automated?** No. Repay and liquidate actions are manual (you or an agent triggers them) to keep the system deterministic.
- **What do I need to interact?** A NEAR wallet, staked NEAR to collateralize, and USDC for repayments.
- **Who controls vaults?** Each borrower owns their vault; validators remain user-selected.

## Watchlist & Upcoming Actions
- 2025-10-03 — Next progress report with fresh metrics, readiness notes, and community tasks.
- 2025-10-07 — Roadmap checkpoint confirming Step 2 remains on track.
- 2025-11-01 — Step 2 readiness review unlocking shared vault rollout and beta invitations.

## Stay in the Loop
- Progress updates: [progress-report-3.md](../execution/progress-report-3.md) · [progress-report-2.md](../execution/progress-report-2.md)
- Action plan: [sudostake-action-plan-near-mvp.md](../execution/sudostake-action-plan-near-mvp.md)
- Mailing list or Telegram channel (TBD) coming alongside the next launch update.

## Participation Checklist
- Share feedback anytime via hello@sudostake.com.
- Register interest for beta access once the Step 2 readiness checkpoint opens sign-ups.
- Follow action-plan steps and progress reports to stay aligned with launch phases.

## FAQ
- Does anything happen automatically? No—repay/liquidate actions are explicit (you or an agent triggers them).
- How do I repay? Use USDC to pay the owed amount before the deadline; the vault releases collateral.
- Who can liquidate? Anyone, after the deadline, following the fixed liquidation order until obligations are met.

## Related Documents
- [Project One-Pager](./project-one-pager-sudostake-near.md)
- [Investor & Partner Brief](./investor-partner-brief.md)
- [Builder Integration Guide](./builder-integration-guide.md)

## Next Review
- Refresh after the next progress report (2025-10-03) or when beta access details are confirmed.
