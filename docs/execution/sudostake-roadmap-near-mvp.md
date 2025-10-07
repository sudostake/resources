---
Purpose: Provide the authoritative roadmap for SudoStake’s NEAR MVP and launch milestones.
Owner: Product & Delivery (TBD)
Last Updated: 2025-09-30
Primary Audience: Contributors, Investors & VCs, Ecosystem Partners & Builders
---

# SudoStake Roadmap — NEAR MVP & Launch

## TL;DR
M1 delivered early; M2 (optimized factory path) in progress; M3 mainnet candidate, M4 stability; staged mainnet waves in Q1/Q2.

## Snapshot (2025-09-30)
- **M1 — Web Testnet Feature-Complete:** Delivered Sep 23, 2025 (ahead of target).
- **M2 — Factory Optimization (Optimized Path):** In progress; target Nov 15, 2025; near-sdk-rs PR #1369 merged.
- Upcoming sequencing: M3 (Mainnet Candidate) → M4 (Beta Stability) → M5/M6 (Staged Launch Waves).

### Milestone Overview
| Milestone | Target Date | Status | Dependencies | Notes |
| --- | --- | --- | --- | --- |
| M1 — Web Testnet Feature-Complete | 2025-09-30 | ✅ Delivered (2025-09-23) | None | Testnet lifecycle validated end-to-end. |
| M2 — Factory Optimization (Optimized Path) | 2025-11-15 | 🚧 In progress | M1 | Global vault code-hash path behind flags; NPR metrics hooks. |
| M3 — Mainnet Candidate Behind Flags | 2025-11-30 | 🔜 Planned | M2 | Closed beta cohort, monitoring stack. |
| M4 — Year-End Beta Stability | 2025-12-20 | 🔜 Planned | M3 | Reliability targets, UX polish for beta. |
| M5 — Staged Mainnet Launch (Wave 1) | 2026-03-31 | 🔜 Planned | M4 | Limited-access mainnet rollout with dashboards. |
| M6 — Staged Mainnet Launch (Wave 2) & Stability | 2026-06-30 | 🔜 Planned | M5 | Broader access, scaling and reliability tuning. |

## Current Status & Checkpoints (as of 2025-09-30)
- **M1 wrap-up:** Testnet lifecycle validated; counter-offers (amount-only) deferred without blocking scope; post-mortem tasks logged in progress reports.
- **M2 execution:** Code-hash registry implementation and WASM size audit underway; factory + global vault integration staged behind feature flags.
- **Upcoming gates:**
  - **2025-10-07 — Roadmap review:** Confirm M2 burndown, adjust schedules if new blockers surface.
  - **2025-11-01 — M2 readiness checkpoint:** Verify optimized path metrics and migration rehearsal before locking launch date.
- **Risks being tracked:** Global vault migration complexity, optimization regressions, and liquidity partner onboarding; mitigations outlined in the risk register.

## Quarterly Summary

**Q3 2025**
- **M1 — Web Testnet Feature-Complete:** Completed ahead of target (Sep 23, 2025).

**Q4 2025**
- M2 — Factory Optimization • Optimized Path (Target: Nov 15; blocker resolved).
- M3 — Mainnet Candidate Behind Flags (Target: Nov 30; contingent on M2).
- M4 — Year-End Beta Stability (Target: Dec 20; contingent on M3).

**Q1 2026**
- M5 — Staged Mainnet Launch (Wave 1) (Target: Mar 31; contingent on M4).

**Q2 2026**
- M6 — Staged Mainnet Launch (Wave 2) & Stability (Target: Jun 30).

---

## Milestones

### **M1 — Web Testnet Feature‑Complete**

**Target:** Sep 30, 2025  •  **Status:** Completed Sep 23, 2025 (ahead of target)

**Scope:** Ship the SudoStake web app on NEAR testnet end‑to‑end: mint → delegate/undelegate → request → accept (amount‑only) → repay (pre‑deadline) → claims (liquid → matured unstaked → fallback).

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

### **M2 — Factory Optimization • Optimized Path**

**Target:** Nov 15, 2025  •  **Status:** In progress (blocker resolved)

**Scope:** Optimized path (near‑sdk‑rs PR #1369 merged): code‑hash registry, WASM size reductions, deploy global SudoStake Vault, smooth migration from per‑vault instances, all behind flags.

**Checkpoint:** Nov 1, 2025 readiness check to validate optimized path milestones; fallback to embedded `vault.wasm` in Factory remains documented but is not expected.

- Includes: E2E tests; before/after size & cost report; public view compatibility; migration plan; feature flags.

#### Execution Plan — Next Steps

0. Activate NPR tracker in `near_vault_factory` and `near_vault` (metrics/events for protocol rewards).
1. Re‑implement SudoStake `near_vault` as a stand‑alone, reproducible contract (clean build, deterministic release process).
2. Deploy SudoStake `near_vault` as a global contract (single code‑hash; retain public view compatibility).
3. Re‑implement SudoStake `near_vault_factory` to use the global `near_vault` to deploy new vaults (via code‑hash registry).
4. Deploy updated `near_vault_factory` to testnet.
5. Integrate new factory in `sudostake_web_near` and `sudostake_agent_near`.
6. Integrate the counter‑offers mechanism on clients (`sudostake_web_near`, `sudostake_agent_near`).
7. Testnet testing/audits; publish size/cost report and migration guide.

Notes
- Steps 0–7 complete M2 on testnet with flags for safe rollout.
- Counter-offers remains amount-only for this phase; extensions can follow post-M3.

#### M2 Burndown (Updated Weekly)
| Workstream | Owner | Status | Notes / Next Action |
| --- | --- | --- | --- |
| Global `near_vault` build & release pipeline | Protocol Eng (Muhammed Ali) | In progress | Reproducible build script drafted; awaiting code review. |
| Code-hash registry + feature flags | Protocol Eng | In progress | Registry schema locked; feature flag wiring lands with factory update. |
| Size & cost baselines | Protocol Eng | Planned | Capture before/after metrics once new WASM deployed to testnet. |
| Client integrations (`sudostake_web_near`, `sudostake_agent_near`) | App Eng (Muhammed Ali) | Planned | Begin after factory deployment (Step 4). |
| Migration guide & testnet rehearsal | Product/Ops (Muhammed Ali) | Planned | Draft outline by 2025-10-10; rehearsal scheduled post-registry validation. |

---

### **M3 — Mainnet Candidate Behind Flags**

**Target:** Nov 30, 2025

**Scope:** Deploy contracts & web as mainnet‑candidate, feature‑flagged; invite a closed beta cohort.

- Includes: feature flags; basic health checks; simple activity dashboards.

#### Execution Plan — Next Steps
8. Promote testnet‑validated artifacts to a mainnet‑candidate deployment behind flags.
9. Run controlled test groups (closed beta cohort) with monitoring and rollback safeguards.
10. Prepare public documentation and support playbooks for broader access (feeds into M4).

---

### **M4 — Year‑End Beta Stability**

**Target:** **Dec 20, 2025**

**Scope:** Run a stable beta with real users under flags.

- **Includes:** Agreed reliability targets, clearer “what happens next” messages, and friendlier empty/error states.

---

### **M5 — Staged Mainnet Launch (Wave 1)**

**Target:** **Mar 31, 2026**

**Scope:** Open limited access on **NEAR mainnet** to mint → borrow/lend → liquidation flows; monitor real usage.

- **Includes:** Live dashboards and alerts, plus straightforward support playbooks.

---

### **M6 — Staged Mainnet Launch (Wave 2) & Stability**

**Target:** **Jun 30, 2026**

**Scope:** Broaden access; maintain stability and correctness under higher load.

- **Includes:** Open access (with sensible limits), reliability tuning, and faster data loading.

---

## Related Documents
- [Milestone M1 Progress Report](./sudostake-m1-progress.md)
- [Progress Report 3](./progress-report-3.md)
- [Risk Register](./sudostake-risk-register.md)
- [Core Infrastructure Overview](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Conduct roadmap review by 2025-10-07 and update status, dependencies, and checkpoints accordingly.
