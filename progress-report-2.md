# SudoStake — Progress Report 2

Date: 2025-09-23

Roadmap Reference: `sudostake-roadmap-near-mvp.md`

## Executive Summary

- M1 (Web Testnet Feature‑Complete; target Sep 30, 2025) is functionally complete ahead of target.
- All user‑facing M1 deliverables are shipped to NEAR testnet, except the optional "Counter‑offers (amount‑only)" item which was explicitly scoped as time‑permitting.
- Core end‑to‑end flows are validated on testnet: mint vault → delegate/undelegate → request liquidity → accept best offer (amount‑only) → repay before deadline → process claims.
- M2 prerequisites resolved: near‑sdk‑rs PR #1369 has merged; begin optimized path with global SudoStake vault contract deployment.

## Alignment to M1 Scope

The roadmap lists the following M1 features. Status is shown per item:

1. Connect a NEAR wallet — Completed
2. Manage vaults dashboard — Completed
3. Dedicated vault page: deposit and withdraw — Completed
4. Manage stake from your vault: delegate, undelegate, claim unstaked — Completed
5. Request a loan — Completed
6. Lender accepts a loan request — Completed
7. Repay a loan (before the deadline) — Completed
8. Liquidate collateral (after a missed deadline) — Completed
9. Marketplace for lenders to discover open loan requests — Completed
10. Counter‑offers (amount‑only), time permitting — Deferred (time‑permitting; not required for M1 completion)

## Evidence & Notes

- Testnet build includes the full borrower and lender flows above and has been exercised end‑to‑end.
- Validation covers normal repayment and post‑deadline liquidation, plus state transitions for claims (liquid → matured unstaked → fallback unstake) as per roadmap narrative.
- Any follow‑up UX polish items are tracked separately and do not affect M1 functional completeness.

## Exceptions

- Counter‑offers (amount‑only): intentionally left out of M1 as it was scoped as "time permitting". Deferral does not impact core borrowing/lending flows validated in M1.

## Risks & Mitigations

- No M1‑blocking risks remain. The optional counter‑offers feature can be re‑considered for a future milestone without affecting stability.
- M2 blocker resolved (near‑sdk‑rs PR #1369 merged). Proceed via the optimized path with changes rolled out behind flags to mitigate integration risk.

## Next Steps (Toward M2)

- Begin M2 (Factory Optimization • Complete or Fallback Decision; target Nov 15, 2025). Dependency resolved: near‑sdk‑rs PR #1369 has merged.
- Maintain Nov 1, 2025 checkpoint to validate optimized path readiness; fallback remains documented but is not expected.
- Kick off optimized path: deploy the SudoStake vault contract as a global contract, implement the code‑hash registry, and run size/cost baseline with end‑to‑end tests.
- Draft migration plan from per‑vault instances to the global contract with no breaking changes to public views.

## Appendix

- M1 Target: Sep 30, 2025
- Roadmap Doc: `sudostake-roadmap-near-mvp.md`
