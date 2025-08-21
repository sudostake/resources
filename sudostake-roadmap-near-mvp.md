# SudoStake Roadmap — NEAR MVP & Launch

## Quarterly Summary

**Q3 2025**

- **M1 — Web Testnet Feature‑Complete** *(Target: Sep 30, 2025)*

**Q4 2025**

- **M2 — Factory Optimization • Complete or Fallback Decision** *(Target: Nov 15, 2025; **blocked on** near-sdk-rs PR #1369)*
- **M3 — Mainnet Candidate Behind Flags** *(Target: Nov 30, 2025; after M2)*
- **M4 — Year‑End Beta Stability** *(Target: Dec 20, 2025; after M3)*

**Q1 2026**

- **M5 — Staged Mainnet Launch (Wave 1)** *(Target: Mar 31, 2026; after M4)*

**Q2 2026**

- **M6 — Staged Mainnet Launch (Wave 2) & Stability** *(Target: Jun 30, 2026)*

---

## Milestones

### **M1 — Web Testnet Feature‑Complete**

**Target:** **Sep 30, 2025**

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
  10. **Counter‑offers** (amount‑only), time permitting.


---

### **M2 — Factory Optimization • Complete or Fallback Decision**

**Target:** **Nov 15, 2025**

**Scope:** Complete **Factory** optimization (code‑hash registry, WASM size reductions). Upstream **near‑sdk-rs PR #1369** is a **blocker** (https://github.com/near/near-sdk-rs/pull/1369). Plan around it with two tracks:
- **Optimized path:** if PR #1369 merges in time, implement the code‑hash registry and size reductions, then migrate.
- **Fallback path:** if PR #1369 is not merged by the checkpoint, proceed with the embedded `vault.wasm` in the **Factory** pattern and document the rationale.

**Checkpoint:** Decide path **two weeks before** the target date to preserve the M3 candidate timeline.

- **Includes:** End‑to‑end tests, a before/after size‑and‑cost report, no breaking changes to public views, and a migration plan or fallback note.

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
