---
Purpose: Provide the authoritative action plan for SudoStake’s NEAR MVP and launch.
Owner: Product & Delivery (TBD)
Last Updated: 2025-10-07
Primary Audience: Contributors, Investors & VCs, Ecosystem Partners & Builders
---

# SudoStake Action Plan — NEAR MVP & Launch

## TL;DR
- **Now:** Finish the credentialed testnet rehearsal so the full mint → liquidation loop is proven with real services.
- **Next:** Ship the shared vault code-hash registry to slash mint costs and unlock scalable deployments.
- **Then:** Promote the optimized stack to a monitored mainnet candidate, stabilize a closed beta, and roll out mainnet access in two controlled waves.

## Snapshot (2025-10-07)
- **Step 1 — Testnet Flow Validation:** Code-complete; credentialed rehearsal still pending.
- **Step 2 — Shared Vault Deployment:** Not started; registry design review scheduled for 2025-10-14.
- **Upcoming Steps:** Stand up a mainnet candidate, stabilize a beta cohort, launch wave 1, then expand to wave 2 by mid-2026.

### Action Overview
| Sequence | Target Date | Status | Dependencies | Key Outcomes |
| --- | --- | --- | --- | --- |
| Step 1 — Testnet Flow Validation | 2025-09-30 | 🟡 Code-complete (rehearsal pending) | None | Confirm mint → liquidation flow with Firebase + RPC credentials and finalize supporting docs. |
| Step 2 — Shared Vault Deployment | 2025-11-15 | ⏳ Not started | Step 1 | Implement code-hash registry, publish shared vault artifact, reduce mint fees to <0.5 NEAR. |
| Step 3 — Mainnet Candidate Release | 2025-11-30 | 🔜 Planned | Step 2 | Bring optimized stack to mainnet candidate with monitoring and controlled access. |
| Step 4 — Beta Stabilization | 2025-12-20 | 🔜 Planned | Step 3 | Hit reliability goals, polish UX, and prepare support playbooks. |
| Step 5 — Mainnet Launch Wave 1 | 2026-03-31 | 🔜 Planned | Step 4 | Limited-access mainnet rollout with dashboards and incident response. |
| Step 6 — Mainnet Launch Wave 2 & Scale | 2026-06-30 | 🔜 Planned | Step 5 | Expand access, tune scalability, and lock long-term reliability targets. |

## Current Status & Checkpoints (as of 2025-10-07)
- **Step 1 status:** Web app, contracts, and agent are code-complete; need a live testnet rehearsal using Firebase Admin keys.
- **Step 2 preparation:** Factory still embeds `vault.wasm`; registry/optimization design unstarted. Mint fee remains ~10 NEAR.
- **Upcoming checkpoints:**
  - **2025-10-14** — Shared vault design review (lock code-hash registry approach and rollout plan).
  - **2025-11-01** — Shared vault readiness checkpoint (confirm migration tooling and metrics before rollout).
- **Top risks:** Migration safety for the shared vault path, user friction from high minting costs until optimization lands, and reliance on Firebase/Vercel availability. See the risk register for owners and mitigations.

## Quarterly Summary

**Q3 2025**
- Step 1 core implementation landed ahead of target (Sep 23); sign-off pending rehearsal.

**Q4 2025**
- Execute Step 2 (shared vault deployment) and Step 3 (mainnet candidate).
- Stabilize beta experiences during Step 4.

**Q1 2026**
- Deliver Step 5 limited mainnet access with dashboards and incident response.

**Q2 2026**
- Complete Step 6 broader launch and reliability hardening.

---

## Step 1 — Testnet Flow Validation

- **Target:** 2025-09-30
- **Status:** Code-complete; credentialed rehearsal pending.
- **Scope:** Validate mint → delegate/undelegate → request → accept → repay/liquidate flow on testnet with real Firebase + RPC credentials.
- **Outstanding actions:**
  - Run the credentialed rehearsal (mint through liquidation) and capture a run log.
  - Close out any issues discovered and update supporting docs.

---

## Step 2 — Shared Vault Deployment

- **Target:** 2025-11-15
- **Status:** Not started.
- **Scope:** Implement the shared vault code-hash registry in the Rust factory, publish shared artifacts, and update clients to use the new path while cutting the mint fee by >90%.
- **Actions:**
  1. Baseline current factory costs and publish a reproducible build summary for `res/vault.wasm`.
  2. Design and implement the code-hash registry (storage accounting, configuration hooks).
  3. Produce a shared vault artifact and update the factory to deploy via the registry.
  4. Update `sudostake_web_near` and `sudostake_agent_near` configuration to work with the shared path.
  5. Run migration rehearsals on testnet (mint → migrate → verify), recording size/gas deltas.
  6. Finalize migration guide, rollback steps, and public comms.
- **Workstream tracker (updated weekly):**
  | Workstream | Owner | Status | Notes / Next Action |
  | --- | --- | --- | --- |
  | Shared vault artifact & build pipeline | Protocol Eng (Muhammed Ali) | Not started | Capture current WASM metrics and script artifact publishing. |
  | Code-hash registry implementation | Protocol Eng | Not started | Kick off design review on 2025-10-14. |
  | Size & cost baselines | Protocol Eng | Blocked on registry | Prepare measurement harness once shared path compiles. |
  | Client integrations (web + agent) | App Eng (Muhammed Ali) | Pending | Update configuration after factory changes land. |
  | Migration guide & rehearsal | Product/Ops (Muhammed Ali) | Pending | Schedule rehearsal once registry merges to main. |

---

## Step 3 — Mainnet Candidate Release

- **Target:** 2025-11-30
- **Status:** Planned.
- **Scope:** Promote the optimized stack to a mainnet candidate with controlled access and monitoring.
- **Actions:**
  1. Deploy testnet-validated artifacts to the mainnet candidate environment.
  2. Run closed beta cohorts with monitoring dashboards and rollback safeguards.
  3. Publish user-facing documentation and support playbooks feeding into Step 4.

---

## Step 4 — Beta Stabilization

- **Target:** 2025-12-20
- **Status:** Planned.
- **Scope:** Maintain a stable beta with real users, hitting agreed reliability targets and improving guidance.
- **Focus areas:** Reliability goals, “what happens next” messaging, and friendlier empty/error states.

---

## Step 5 — Mainnet Launch Wave 1

- **Target:** 2026-03-31
- **Status:** Planned.
- **Scope:** Limited-access mainnet rollout covering mint → borrow/lend → liquidation flows.
- **Focus areas:** Live dashboards, alerts, and ready incident response playbooks.

---

## Step 6 — Mainnet Launch Wave 2 & Scale

- **Target:** 2026-06-30
- **Status:** Planned.
- **Scope:** Expand mainnet access, maintain stability under higher load, and lock long-term reliability targets.
- **Focus areas:** Scalability tuning, ecosystem onboarding, and sustained observability.

---

## Related Documents
- [Step 1 Progress Review](./sudostake-m1-progress.md)
- [Progress Report 3](./progress-report-3.md)
- [Risk Register](./sudostake-risk-register.md)
- [Core Infrastructure Overview](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Revisit this action plan by 2025-10-14 (post design review) or sooner if sequencing changes.
