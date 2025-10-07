---
Purpose: Provide the authoritative action plan for SudoStake’s NEAR MVP and launch.
Owner: Product & Delivery (TBD)
Last Updated: 2025-10-07
Primary Audience: Contributors, Investors & VCs, Ecosystem Partners & Builders
---

# SudoStake Action Plan — NEAR MVP & Launch

## Quick View (as of 2025-10-07)
- **Step 1 — Testnet Flow Validation:** Code-complete. Credentialed rehearsal with Firebase Admin + RPC keys remains.
- **Step 2 — Shared Vault Deployment:** Design review booked for 2025-10-14; implementation has not started.
- **Steps 3–6:** Mainnet candidate → beta stabilization → launch wave 1 → launch wave 2. Each depends on the shared vault path landing first.

## Current Focus (Next 2 Weeks)
- Run the full rehearsal for Step 1 and capture any fixes.
- Finalize the shared vault registry design and baseline current factory costs.
- Draft the build + artifact publishing script for the shared vault.
- Lock the migration/rehearsal plan so Step 2 work can start immediately after the design review.

## Watchlist
- **High mint fee (~10 NEAR):** stays until Step 2 ships; keep optimization top priority.
- **Shared vault migration:** requires rehearsals plus rollback tooling.
- **Firebase/Vercel availability:** failures block indexing; monitor service health during rehearsal.

## Step-by-Step Plan

### Step 1 — Testnet Flow Validation (Target 2025-09-30)
- Status: ✅ Code ready, 🔄 rehearsal outstanding.
- Finish: run mint → liquidation with real credentials, log outcomes, patch docs as needed.

### Step 2 — Shared Vault Deployment (Target 2025-11-15)
- Status: 🕓 Pending design approval.
- Key actions:
  - Approve registry design (10 Oct review) & baseline deploy costs.
  - Implement registry + shared artifact, update factory, web, and agent configs.
  - Rehearse migration (mint → migrate → verify) and publish migration/rollback notes.

### Step 3 — Mainnet Candidate Release (Target 2025-11-30)
- Promote optimized artifacts to a monitored mainnet candidate and invite a closed beta cohort.

### Step 4 — Beta Stabilization (Target 2025-12-20)
- Hit reliability goals, tighten UX copy, and expand support playbooks while beta remains gated.

### Step 5 — Mainnet Launch Wave 1 (Target 2026-03-31)
- Limited-access launch with dashboards, alerts, and incident response tooling live.

### Step 6 — Mainnet Launch Wave 2 & Scale (Target 2026-06-30)
- Broader access plus scalability and observability tuning for sustained operation.

## Related Documents
- [Step 1 Progress Review](./sudostake-m1-progress.md)
- [Progress Report 3](./progress-report-3.md)
- [Risk Register](./sudostake-risk-register.md)
- [Core Infrastructure Overview](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Refresh this plan after the 2025-10-14 design review or sooner if sequencing changes.
