# SudoStake Roadmap — NEAR MVP & Launch

Status (Sep 26, 2025)
- M1 — Web Testnet Feature‑Complete: completed Sep 23, 2025 (ahead of target)
- M2 — Factory Optimization (Optimized Path): in progress; target Nov 15, 2025 (near-sdk-rs PR #1369 merged)

## Quarterly Summary

**Q3 2025**

- **M1 — Web Testnet Feature‑Complete** — Completed ahead of target (Sep 23, 2025)

**Q4 2025**
- M2 — Factory Optimization • Optimized Path (Target: Nov 15; blocker resolved)
- M3 — Mainnet Candidate Behind Flags (Target: Nov 30; after M2)
- M4 — Year‑End Beta Stability (Target: Dec 20; after M3)

**Q1 2026**
- M5 — Staged Mainnet Launch (Wave 1) (Target: Mar 31; after M4)

**Q2 2026**
- M6 — Staged Mainnet Launch (Wave 2) & Stability (Target: Jun 30)

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
