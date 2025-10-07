---
Purpose: Provide the authoritative roadmap for SudoStake’s NEAR MVP and launch milestones.
Owner: Product & Delivery (TBD)
Last Updated: 2025-10-01
Primary Audience: Contributors, Investors & VCs, Ecosystem Partners & Builders
---

# SudoStake Roadmap — NEAR MVP & Launch

## TL;DR
- Milestone 1 finished ahead of plan on 2025-09-23.
- Milestone 2 is live: build the code-hash registry, deploy the shared vault contract, and cut vault-creation costs.
- Next in line: Milestone 3 (mainnet candidate) → Milestone 4 (beta stability) → Milestones 5–6 (staged mainnet launches in the first half of 2026).

## Snapshot (2025-09-30)
- **Milestone 1 — Web Testnet Feature-Complete:** Delivered Sep 23, 2025 (ahead of target).
- **Milestone 2 — Factory Optimization (Optimized Path):** In progress; target Nov 15, 2025; [near-sdk-rs PR #1369](https://github.com/near/near-sdk-rs/pull/1369) merged to remove the last dependency.
- Upcoming sequencing: Milestone 3 (Mainnet Candidate Behind Feature Flags) → Milestone 4 (Year-End Beta Stability) → Milestones 5 and 6 (Staged Mainnet Launch Waves).

### Milestone Overview
| Milestone | Target Date | Status | Dependencies | Notes |
| --- | --- | --- | --- | --- |
| Milestone 1 — Web Testnet Feature-Complete | 2025-09-30 | ✅ Delivered (2025-09-23) | None | Testnet lifecycle validated end-to-end. |
| Milestone 2 — Factory Optimization (Optimized Path) | 2025-11-15 | 🚧 In progress | Milestone 1 | Global vault code-hash path behind flags; NPR metrics hooks. |
| Milestone 3 — Mainnet Candidate Behind Feature Flags | 2025-11-30 | 🔜 Planned | Milestone 2 | Closed beta cohort, monitoring stack. |
| Milestone 4 — Year-End Beta Stability | 2025-12-20 | 🔜 Planned | Milestone 3 | Reliability targets, UX polish for beta. |
| Milestone 5 — Staged Mainnet Launch (Wave 1) | 2026-03-31 | 🔜 Planned | Milestone 4 | Limited-access mainnet rollout with dashboards. |
| Milestone 6 — Staged Mainnet Launch (Wave 2) & Stability | 2026-06-30 | 🔜 Planned | Milestone 5 | Broader access, scaling and reliability tuning. |

## Current Status & Checkpoints (as of 2025-09-30)
- **Milestone 1 wrap-up:** All testnet flows are validated. Counter-offers (amount-only) moved to the backlog without blocking scope. Follow-up tasks are in the progress reports.
- **Milestone 2 execution:** Building the code-hash registry, tracking WASM size, and wiring the factory to the shared vault behind feature flags.
- **Upcoming gates:**
  - **2025-10-07 — Roadmap review:** Confirm Milestone 2 burndown and adjust if new blockers appear.
  - **2025-11-01 — Milestone 2 readiness checkpoint:** Check optimized-path metrics and migration rehearsals before setting launch dates.
- **Risks in focus:** Shared-vault migration complexity, possible optimization regressions, and liquidity partner onboarding. Details live in the risk register.

## Quarterly Summary

**Q3 2025**
- **Milestone 1 — Web Testnet Feature-Complete:** Completed ahead of target (Sep 23, 2025).

**Q4 2025**
- Milestone 2 — Factory Optimization (Target: Nov 15; blocker resolved).
- Milestone 3 — Mainnet Candidate Behind Feature Flags (Target: Nov 30; contingent on Milestone 2).
- Milestone 4 — Year-End Beta Stability (Target: Dec 20; contingent on Milestone 3).

**Q1 2026**
- Milestone 5 — Staged Mainnet Launch (Wave 1) (Target: Mar 31; contingent on Milestone 4).

**Q2 2026**
- Milestone 6 — Staged Mainnet Launch (Wave 2) & Stability (Target: Jun 30).

---

## Milestones

### **Milestone 1 — Web Testnet Feature‑Complete**

**Target:** Sep 30, 2025  •  **Status:** Completed Sep 23, 2025 (ahead of target)

**Scope:** Ship the SudoStake web app on NEAR testnet end-to-end: mint → delegate/undelegate → request → accept (amount-only) → repay (before deadline) → claims (liquid → matured unstaked → fallback).

- Includes (user features):
  1) Connect wallet
  2) Vaults dashboard
  3) Vault page: deposit/withdraw
  4) Stake mgmt: delegate/undelegate/claim‑unstaked
  5) Request loan
  6) Lender accepts request
  7) Repay before deadline
  8) Liquidate after missed deadline
  9) Lender marketplace
  10) Counter-offers (amount-only) — deferred


---

### **Milestone 2 — Factory Optimization • Optimized Path**

**Target:** Nov 15, 2025  •  **Status:** In progress (blocker resolved)

**Scope:** Complete the optimized path (enabled by [near-sdk-rs PR #1369](https://github.com/near/near-sdk-rs/pull/1369)): add the code-hash registry, shrink the contracts, deploy a shared SudoStake Vault, and migrate from per-vault instances using feature flags.

**Checkpoint:** Nov 1, 2025 readiness check to confirm milestones and keep the embedded `vault.wasm` fallback on standby.

- Includes: end-to-end tests, before/after size and cost report, public view compatibility, migration guide, and feature flags.

#### Execution Plan — Next Steps

1. Activate NPR trackers in `near_vault_factory` and `near_vault` to capture protocol rewards metrics.
2. Publish a reproducible build of the standalone `near_vault` contract.
3. Deploy `near_vault` as a shared contract and keep public views intact.
4. Update `near_vault_factory` to pull from the shared contract through the code-hash registry.
5. Ship the new factory to testnet.
6. Point `sudostake_web_near` and `sudostake_agent_near` at the updated factory and counter-offer flow.
7. Run testnet verification, release the size/cost report, and finalize the migration guide.

Notes
- Steps 1–7 finish Milestone 2 on testnet with feature-flag protection.
- Counter-offers stay amount-only in this phase; enhancements land after Milestone 3.

#### Milestone 2 Burndown (Updated Weekly)
| Workstream | Owner | Status | Notes / Next Action |
| --- | --- | --- | --- |
| Global `near_vault` build & release pipeline | Protocol Eng (Muhammed Ali) | In progress | Reproducible build script drafted; awaiting code review. |
| Code-hash registry + feature flags | Protocol Eng | In progress | Registry schema locked; feature flag wiring lands with factory update. |
| Size & cost baselines | Protocol Eng | Planned | Capture before/after metrics once new WASM deployed to testnet. |
| Client integrations (`sudostake_web_near`, `sudostake_agent_near`) | App Eng (Muhammed Ali) | Planned | Begin after factory deployment (Step 4). |
| Migration guide & testnet rehearsal | Product/Ops (Muhammed Ali) | Planned | Draft outline by 2025-10-10; rehearsal scheduled post-registry validation. |

---

### **Milestone 3 — Mainnet Candidate Behind Feature Flags**

**Target:** Nov 30, 2025

**Scope:** Deploy contracts & web as mainnet‑candidate, feature‑flagged; invite a closed beta cohort.

- Includes: feature flags; basic health checks; simple activity dashboards.

#### Execution Plan — Next Steps
8. Promote testnet‑validated artifacts to a mainnet‑candidate deployment behind flags.
9. Run controlled test groups (closed beta cohort) with monitoring and rollback safeguards.
10. Prepare public documentation and support playbooks for broader access (feeds into M4).

---

### **Milestone 4 — Year‑End Beta Stability**

**Target:** **Dec 20, 2025**

**Scope:** Run a stable beta with real users under flags.

- **Includes:** Agreed reliability targets, clearer “what happens next” messages, and friendlier empty/error states.

---

### **Milestone 5 — Staged Mainnet Launch (Wave 1)**

**Target:** **Mar 31, 2026**

**Scope:** Open limited access on **NEAR mainnet** to mint → borrow/lend → liquidation flows; monitor real usage.

- **Includes:** Live dashboards and alerts, plus straightforward support playbooks.

---

### **Milestone 6 — Staged Mainnet Launch (Wave 2) & Stability**

**Target:** **Jun 30, 2026**

**Scope:** Broaden access; maintain stability and correctness under higher load.

- **Includes:** Open access (with sensible limits), reliability tuning, and faster data loading.

---

## Related Documents
- [Milestone 1 Progress Review](./sudostake-m1-progress.md)
- [Progress Report 3](./progress-report-3.md)
- [Risk Register](./sudostake-risk-register.md)
- [Core Infrastructure Overview](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Conduct roadmap review by 2025-10-07 and update status, dependencies, and checkpoints accordingly.
