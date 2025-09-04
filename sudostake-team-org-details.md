
# SudoStake — Team & Organizational Details

**One‑liner:** *Stake. Earn. Trade.* Native staking, composable credit.

**Current focus:** Active on **Archway**; expanding to **NEAR** (Rust/NEAR‑SDK contracts) with a **Next.js/React** frontend.

---

## TL;DR
- Open‑source, non‑custodial protocol for staked assets using on‑chain **Vaults** (no price oracles).
- Solo‑maintained by **Muhammed Ali**; contributors welcome via GitHub.
- Proven usage on Archway (**~231 vaults**). Building a NEAR‑native MVP next.
- Security first: reproducible builds, signed releases, integration tests; audit + bounty planned before scaling.

---

## At a Glance
- **Name:** SudoStake  
- **Status:** Open‑source protocol (no client funds held)  
- **Entity:** None yet (solo maintainer). Incorporation planned.  
- **Maintainer:** Muhammed Ali  
- **Location/Timezone:** Africa/Lagos (UTC+1)  
- **Contact:** codemuhammed@gmail.com • alt: hello@sudostake.com • Telegram: https://t.me/palingram  
- **Website:** https://sudostake.com  
- **GitHub (org):** https://github.com/sudostake  

---

## 1) Team Summary
- **Headcount:** 1 (solo maintainer) + open‑source collaborators (recruiting)
- **Contribution areas:** Rust/NEAR contracts, Next.js/React frontend, DevOps/release, docs/community
- **Working model:** Public roadmap/issues; PR‑driven; lightweight contributor agreements for significant code

---

## 2) Core Team & Roles
### Muhammed Ali — Founder, Maintainer & Lead Protocol Engineer
- **Focus:** Protocol architecture; Rust smart contracts (NEAR‑SDK, prior CosmWasm); CI/CD; product & roadmap
- **Highlights:**
  - Oracle‑less vault‑based credit flows (state + staking rewards; no external price oracles).
  - Reproducible WASM builds with `cargo-near` + GitHub Actions; GPG‑signed commits/tags.
  - Unit/integration tests with `near-workspaces` for vault lifecycle and settlement paths; basic gas profiling.
  - Ported core logic from CosmWasm → NEAR SDK while keeping deterministic build/test pipelines.
  - Governance migration path documented (single maintainer → 2‑of‑3 multi‑sig when ≥2 maintainers join).

### Open Contributors (now recruiting)
- **Smart contracts (Rust/NEAR‑SDK)**
- **Frontend (Next.js/React/Tailwind/shadcn)**
- **DevOps/Infra**
- **Docs & Community**

> Participate via GitHub issues/PRs; bounties will be posted as funding permits.

---

## 3) Advisors & Partners
- **Advisors:** None formally engaged to date; receiving informal ecosystem feedback.
- **Security reviewers:** External Rust/NEAR security reviewers to be contracted per milestone (vendor TBD).
- **Validator partners:** Evaluating prospective partners; not finalized.

---

## 4) Organizational Structure
- **Operating model:** Solo maintainer + open‑source contributions via PRs/issues
- **Governance (roadmap):** Single maintainer today → 2‑of‑3 multi‑sig once ≥2 maintainers join; on‑chain parameterization where feasible
- **Cadence:** Public backlog/roadmap; release notes per milestone
- **Licensing:** Open‑source; Contributor License Agreements may be requested for significant contributions

---

## 5) Legal & Compliance
- **Entity:** None yet (solo maintainer). Incorporation planned.
- **Posture:** Non‑custodial software; no client funds or fiat handling by the project.
- **Data:** Minimal collection; privacy‑preserving analytics only if/when added.
- **Jurisdiction:** Options under evaluation; will update upon registration.

---

## 6) Security Practices
**Current**
- Deterministic/reproducible WASM builds with `cargo-near` and GitHub Actions.
- GPG‑signed commits/tags; protected branches; review‑required PRs.
- Unit + integration tests using `near-workspaces` covering vault create, borrow/rent, repay/settlement, and liquidation; basic gas profiling.
- MEV‑aware contract design.

**Planned next**
- Third‑party security audit (vendors being shortlisted).
- Public bug bounty after audit.
- Expand fuzz/property tests; increase scenario coverage; formalize incident runbooks.

---

## 7) Track Record & Proof of Execution
- **Archway (active):** ~231 vaults created (aggregate staked volume TBD).
- **NEAR (expanding):** MVP under development; CosmWasm → NEAR SDK port; deterministic builds & CI tests in place.
- **Tooling:** `near-workspaces` integration tests; GitHub Actions builds; GPG‑signed releases.

---

## 8) Responsibility Map (current & open)
| Workstream | Muhammed (current) | External contributors (open) |
|---|:--:|:--:|
| Protocol design & specs | R/A | C |
| Smart contracts (NEAR) | R/A | C |
| Front‑end (Next.js/React) | R/A | C |
| CI/CD & releases | R/A | C |
| Security & audits | R/A | C |
| Partnerships & grants | R/A | C |
| Community & docs | R/A | C |

Legend: **R**=Responsible, **A**=Accountable, **C**=Consulted.

---

## 9) Contributors & Future Hiring
- **Open‑source contributors:** Welcoming contributions in Rust/NEAR, Next.js/React, DevOps, and documentation/community.
- **Good‑first‑issues & bounties:** To be posted in the GitHub org; milestones/grants may fund discrete bounties.
- **Future hires (as funding allows):** Smart Contract Engineer (Rust/NEAR), Front‑end Engineer (Next.js/React), DevOps/Infra.
- **Budget approach:** Milestone‑backed grants + protocol revenue; transparent rates/deliverables.
