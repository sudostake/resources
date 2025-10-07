---
Purpose: Provide community members with a digestible snapshot of benefits, status, and how to stay involved.
Owner: Community Lead (TBD)
Last Updated: 2025-10-01
Primary Audience: Community & Prospective Users
---

# Community Snapshot — SudoStake on NEAR

## TL;DR
- Keep staking rewards while accessing USDC liquidity.
- Rules-based lifecycle (request → accept → repay → liquidation); no custodians.
- Friendly automation via NEAR intents/agents.

## Status
- **Milestone 1 — Web Testnet Feature-Complete:** Delivered 2025-09-23 with full borrow/lend flows live on NEAR testnet.
- **Now Working On:** Milestone 2 — Factory Optimization (global vault rollout, code-hash registry) targeting 2025-11-15.
- **Next Updates:** Roadmap checkpoint on 2025-10-07; next progress report by 2025-10-03.

## What’s Live Today
- Vault minting (10 NEAR fee) and staking management (delegate, undelegate, claim).
- Request/accept/repay with USDC.
- Manual liquidation (anyone can trigger after deadline) with clear on-chain events.

## Coming Soon
- Counter-offer (amount-only) improvements now that Milestone 1 is complete.
- Global vault deployment (single code hash) controlled by feature flags.
- Beta cohorts for lenders and community testers once Milestone 2 reaches readiness.

## Stay in the Loop
- Progress updates: [progress-report-3.md](../execution/progress-report-3.md) · [progress-report-2.md](../execution/progress-report-2.md)
- Roadmap: [sudostake-roadmap-near-mvp.md](../execution/sudostake-roadmap-near-mvp.md)
- Join the mailing list/Telegram (TBD) for launch notifications.

## How to Get Involved
- Share feedback via hello@sudostake.com.
- Register interest for beta access (link coming with the Milestone 2 readiness checkpoint).
- Follow roadmap milestones to track launch phases.

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
