# SudoStake Roadmap — NEAR MVP & Launch

Status (as of Sep 26, 2025)
- M1 — Web Testnet Feature‑Complete: Completed on Sep 23, 2025 (ahead of target)
- M2 — Factory Optimization (Optimized Path): In progress; target Nov 15, 2025 (near-sdk-rs PR #1369 merged)

## Quarterly Summary

**Q3 2025**

- **M1 — Web Testnet Feature‑Complete** — Completed ahead of target (Sep 23, 2025)

**Q4 2025**

- **M2 — Factory Optimization • Optimized Path** *(Target: Nov 15, 2025; blocker resolved — near-sdk-rs PR #1369 merged)*
- **M3 — Mainnet Candidate Behind Flags** *(Target: Nov 30, 2025; after M2)*
- **M4 — Year‑End Beta Stability** *(Target: Dec 20, 2025; after M3)*

**Q1 2026**

- **M5 — Staged Mainnet Launch (Wave 1)** *(Target: Mar 31, 2026; after M4)*

**Q2 2026**

- **M6 — Staged Mainnet Launch (Wave 2) & Stability** *(Target: Jun 30, 2026)*

---

## Milestones

### **M1 — Web Testnet Feature‑Complete**

**Target:** **Sep 30, 2025**  •  **Status:** Completed Sep 23, 2025 (ahead of target)

**Scope:** Ship the SudoStake **web app** for NEAR **testnet** end‑to‑end: mint vault → delegate/undelegate → request liquidity → accept best offer (amount‑only) → **repay loan** (before deadline) → process claims (liquid → matured unstaked → fallback unstake).

- **Includes (user‑facing features):**
  1. Connect a **NEAR wallet**.
  2. **Manage vaults** dashboard.
  3. **Dedicated vault page**: deposit and withdraw.
  4. **Manage stake** from your vault: delegate, undelegate, **claim unstaked**.
  5. **Request a loan**.
  6. **Lender accepts** a loan request.
  7. **Repay** a loan (before the deadline).
  8. **Liquidate collateral** (after a missed deadline).
  9. **Marketplace** for lenders to discover open loan requests.
  10. **Counter‑offers** (amount‑only), time permitting — Deferred (not required for M1 completion).


---

### **M2 — Factory Optimization • Optimized Path**

**Target:** **Nov 15, 2025**  •  **Status:** In progress (blocker resolved)

**Scope:** Proceed via the optimized path now that **near‑sdk‑rs PR #1369** has merged. Implement the **code‑hash registry** and WASM size reductions; deploy the **SudoStake Vault** as a global contract and provide a smooth migration from per‑vault instances, with changes rolled out behind flags.

**Checkpoint:** Nov 1, 2025 readiness check to validate optimized path milestones; fallback to embedded `vault.wasm` in Factory remains documented but is not expected.

- **Includes:** End‑to‑end tests, before/after size‑and‑cost report, no breaking changes to public views, migration plan from per‑vault instances to the global vault contract, and feature flags for safe rollout.

---

### **M3 — Mainnet Candidate Behind Flags**

**Target:** **Nov 30, 2025**

**Scope:** Deploy contracts & web as **mainnet‑candidate**, feature‑flagged; invite a closed beta cohort.

- **Includes:** Feature flags to safely turn features on/off, basic health checks on the candidate deployment, and simple dashboards to watch activity.

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
