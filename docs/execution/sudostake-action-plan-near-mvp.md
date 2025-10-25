---
Purpose: Provide the authoritative action plan for SudoStake’s NEAR MVP and launch.
Owner: Product & Delivery (TBD)
Last Updated: 2025-10-08
Primary Audience: Contributors, Investors & VCs, Ecosystem Partners & Builders
---

# SudoStake Action Plan — NEAR MVP & Launch

## Step Status Overview

_Last updated: 2025-10-08_

| Step | Target | Status | Highlights |
| --- | --- | --- | --- |
| Step 1 — Testnet Flow Validation | 2025-09-30 | ✅ Complete — 2025-09-23 | Full wallet → vault → loan lifecycle live on testnet; counter-offers deferred without blocking scope. |
| Step 2 — Shared Vault Deployment | 2025-11-15 | 🔄 In design (review 2025-10-14) | Shared code-hash registry, artifact publishing, migration guardrails. |
| Step 3 — Mainnet Candidate Release | 2025-11-30 | ◻ Planned | Promote optimized contracts to monitored candidate; invite closed beta cohort. |
| Step 4 — Beta Stabilization | 2025-12-20 | ◻ Planned | Reliability targets, UX polish, support playbooks. |
| Step 5 — Mainnet Launch Wave 1 | 2026-03-31 | ◻ Planned | Limited-access launch with dashboards, alerts, and incident response tooling. |
| Step 6 — Mainnet Launch Wave 2 & Scale | 2026-06-30 | ◻ Planned | Broader access plus scalability/observability tuning. |

## Timeline Snapshot
- Step 1 (Testnet Flow Validation) closed 2025-09-23; only a credentialed rehearsal remains for completeness.
- Step 2 (Shared Vault Deployment) targets 2025-11-15 with the shared code-hash registry design review on 2025-10-14.
- Steps 3–6 unlock after the shared vault architecture ships; sequencing below assumes Step 2 lands on schedule.

## Milestone Index
| Artifact | Scope | Target / Cadence | Status |
| --- | --- | --- | --- |
| Action Plan (this document) | End-to-end sequencing for MVP launch (Steps 1–6). | Update after each execution review; next readiness checkpoint 2025-11-01. | Authoritative timeline and burndown. |
| [Step 1 — Testnet Flow Validation](#step-1--testnet-flow-validation-target-2025-09-30) | Retrospective + cleanup items for the completed testnet scope. | Locked on completion (2025-09-23). | Delivered. |
| [Step 2 — Shared Vault Deployment](#step-2--shared-vault-deployment-target-2025-11-15) | Registry design/implementation, artifact publishing, migration plan. | Design review 2025-10-14; delivery 2025-11-15. | In progress. |
| [Factory Optimization — Design Review (2025-10-14)](./factory-registry-design-review.md) | Decision forum for the shared vault registry. | One-time (2025-10-14). | Scheduled. |
| [SudoStake Risk Register](./sudostake-risk-register.md) | Identified risks, owners, mitigations. | Formal check every two weeks. | Live tracker. |

## Upcoming Checkpoints
- 2025-10-14 — Factory optimization design review (shared vault registry).
- 2025-11-01 — Step 2 readiness checkpoint.
- 2025-11-15 — Shared Vault Deployment delivery target.

## Using This Plan
1. Review the **Step Status Overview** for a quick health check.
2. Scan the **Timeline Snapshot** and **Milestone Index** to see which artifacts are authoritative for each phase.
3. Dive into the relevant step section (below) for scope, risks, and next actions.
4. Cross-reference the [Risk Register](./sudostake-risk-register.md) when highlighting blockers or mitigations.

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
- **Status:** ✅ Complete — 2025-09-23. Credentialed rehearsal remains a formality before sign-off.
- **Delivered scope:**
  - Wallet connect, vault dashboard/detail views, deposit/withdraw flows.
  - Staking management (delegate, undelegate, claim) plus deterministic liquidation order (liquid funds → matured unstake → targeted unstake).
  - Loan lifecycle (request → accept via `ft_transfer_call` → repay) with lender marketplace surfacing vault offers.
- **Notes:**
  - Counter-offers (amount-only) deferred; marketplace UX is stable without them.
  - Merged [near-sdk-rs PR #1369](https://github.com/near/near-sdk-rs/pull/1369) unblocked the shared vault path needed for Step 2.
- **Cleanup:** Run mint → liquidation using live Firebase Admin + RPC keys, capture any doc/code fixes, and archive the rehearsal log.

### Step 2 — Shared Vault Deployment (Target 2025-11-15)
- **Status:** 🔄 In design. Factory optimization review on 2025-10-14.
- **Objectives:**
  - Approve the shared code-hash registry architecture and baseline current deploy costs (~10 NEAR, 301 962-byte `vault.wasm`).
  - Implement registry + shared artifact publishing, update factory, web, and agent configurations, and add metrics for size/gas regression tracking.
  - Rehearse migration (mint → migrate → verify) with rollback tooling, then document customer-facing steps.
- **Risks & mitigations:**
  - Vault mint fees remain high until shared hash ships → prioritize registry implementation and artifact pipeline.
  - Firebase/Vercel configuration drift could block dashboards/agent indexing → maintain shared credential checklist before rehearsals.
  - Registry migration mistakes could stall vault mints → require dry runs plus rollback scripts before rollout.

### Step 3 — Mainnet Candidate Release (Target 2025-11-30)
- Promote optimized artifacts to a monitored mainnet candidate and invite a closed beta cohort.

### Step 4 — Beta Stabilization (Target 2025-12-20)
- Hit reliability goals, tighten UX copy, and expand support playbooks while beta remains gated.

### Step 5 — Mainnet Launch Wave 1 (Target 2026-03-31)
- Limited-access launch with dashboards, alerts, and incident response tooling live.

### Step 6 — Mainnet Launch Wave 2 & Scale (Target 2026-06-30)
- Broader access plus scalability and observability tuning for sustained operation.
