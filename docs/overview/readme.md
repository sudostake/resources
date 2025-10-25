---
Purpose: Serve as the entry point for SudoStake documentation on NEAR.
Owner: Docs Lead (TBD)
Last Updated: 2025-10-08
Primary Audience: Investors & VCs, Researchers & Technical Reviewers, Ecosystem Partners & Builders, Community & Prospective Users, Contributors, Internal Stakeholders
---

# SudoStake on NEAR — Documentation Hub

Use this hub to land in the right document in seconds. Pick your audience view, pull a diligence kit, and keep sources of truth updated before touching summaries.

## Quick Start

| Need | Action |
| --- | --- |
| “Where do I start?” | Match your role to the **Audience Landing Zones** table. |
| “What should I read for X?” | Pull the relevant **Concept Kit** for a curated list. |
| “Which doc do I edit first?” | Check **Sources of Truth** before touching summaries or collateral. |
| “What’s the current timeline?” | Open the [Action Plan timeline snapshot](../execution/sudostake-action-plan-near-mvp.md#timeline-snapshot). |
| “What changed recently?” | Check the **Step Status Overview** inside the [Action Plan](../execution/sudostake-action-plan-near-mvp.md). |
| “How do I keep links healthy?” | Run `scripts/check-links.sh` after structural changes. |

## Timeline & Scope

We track every scope- or deadline-driven artifact separately from concept docs. Start with the tracker, then drill into the specific file you need.

| Artifact | Use | Cadence |
| --- | --- | --- |
| [Action Plan — Timeline & Scope](../execution/sudostake-action-plan-near-mvp.md#timeline-snapshot) | Single index of step status, design reviews, and risk references. | Update whenever a milestone doc lands. |
| [SudoStake Action Plan — NEAR MVP & Launch](../execution/sudostake-action-plan-near-mvp.md) | Source of truth for Step 1–6 sequencing, status, and targets. | Refresh after each execution review (next readiness checkpoint 2025-11-01). |
| [SudoStake Risk Register](../execution/sudostake-risk-register.md) | Live list of execution risks, mitigations, and owners. | Review biweekly. |

## Audience Landing Zones

| Audience | Start Here | Key Questions Answered |
| --- | --- | --- |
| Investors & VCs | [Investor & Partner Brief](./investor-partner-brief.md) · [Project One-Pager](./project-one-pager-sudostake-near.md) · [Action Plan — NEAR MVP & Launch](../execution/sudostake-action-plan-near-mvp.md) | Traction, roadmap, capital asks. |
| Researchers & Technical Reviewers | [Core Infrastructure Overview](../systems/sudostake-core-infra-on-near.md) · [Risk Register](../execution/sudostake-risk-register.md) · [Personas & Flows](../product/personas-and-flows.md) | Architecture, threat model, lifecycle. |
| Ecosystem Partners & Builders | [Builder Integration Guide](./builder-integration-guide.md) · [Core Infrastructure Overview](../systems/sudostake-core-infra-on-near.md) · [Lean Canvas — NEAR](../product/lean-canvas-sudostake-near.md) | Integration scope, APIs, business fit. |
| Community & Prospective Users | [Community Snapshot](./community-snapshot.md) · [Project One-Pager](./project-one-pager-sudostake-near.md) · [Action Plan — Step 2 Snapshot](../execution/sudostake-action-plan-near-mvp.md#step-2--shared-vault-deployment-target-2025-11-15) | Why it matters, what is live, next updates. |
| Contributors & Team | [Contributing Guide](../team/contributing.md) · [Documentation Strategy](../meta/documentation-strategy.md) · [Documentation Inventory](../meta/documentation-inventory.md) | Standards, ownership, open work. |

## Concept Kits

| Goal | Pull These Docs | Why |
| --- | --- | --- |
| Product-market fit | [Project One-Pager](./project-one-pager-sudostake-near.md) · [Lean Canvas — NEAR](../product/lean-canvas-sudostake-near.md) · [Community Snapshot](./community-snapshot.md) | Problem, audience, traction signals. |
| Technical soundness | [Core Infra Overview](../systems/sudostake-core-infra-on-near.md) · [Risk Register](../execution/sudostake-risk-register.md) · [Personas & Flows](../product/personas-and-flows.md) | Contracts, invariants, mitigations. |
| Integration planning | [Builder Integration Guide](./builder-integration-guide.md) · [Core Infra Overview](../systems/sudostake-core-infra-on-near.md) · [Documentation Inventory](../meta/documentation-inventory.md) | API surface, events, update cadence. |

## Sources of Truth

| Topic | Document | Cadence |
| --- | --- | --- |
| Execution & timelines | [sudostake-action-plan-near-mvp.md](../execution/sudostake-action-plan-near-mvp.md) | Update after each execution review. |
| Product spec & flows | [personas-and-flows.md](../product/personas-and-flows.md) | Refresh when rules, KPIs, or flows change. |
| Step retrospectives | [Action Plan — Step 1 entry](../execution/sudostake-action-plan-near-mvp.md#step-1--testnet-flow-validation-target-2025-09-30) | Log each completed step once delivered. |
| Infrastructure | [sudostake-core-infra-on-near.md](../systems/sudostake-core-infra-on-near.md) | Review at readiness checkpoints or post-release. |
| Risk management | [sudostake-risk-register.md](../execution/sudostake-risk-register.md) | Track via weekly sync; formal check biweekly. |
| Team & org | [sudostake-team-org-details.md](../team/sudostake-team-org-details.md) | Update whenever ownership or staffing shifts. |

## Repository Map

| Area | Files |
| --- | --- |
| Overview & Narrative | [Project One-Pager](./project-one-pager-sudostake-near.md) · [Pitch Deck (Text)](./pitch-deck-sudostake-near.md) · [Investor & Partner Brief](./investor-partner-brief.md) · [Community Snapshot](./community-snapshot.md) |
| Execution & Status | [Action Plan](../execution/sudostake-action-plan-near-mvp.md) · [Risk Register](../execution/sudostake-risk-register.md) |
| Product & Users | [Project Charter](../product/sudostake-project-charter.md) · [Lean Canvas — NEAR](../product/lean-canvas-sudostake-near.md) · [Lean Canvas — Generic](../product/lean-canvas-sudostake-generic.md) · [Personas & Flows](../product/personas-and-flows.md) |
| Systems & Research | [Core Infra Overview](../systems/sudostake-core-infra-on-near.md) · [Builder Integration Guide](./builder-integration-guide.md) · [Expanded Competitive Analysis](../research/expanded-competitive-analysis.md) |
| Team & Operations | [Team & Org Details](../team/sudostake-team-org-details.md) · [Contributing Guide](../team/contributing.md) · [Documentation Strategy](../meta/documentation-strategy.md) · [Documentation Inventory](../meta/documentation-inventory.md) · [Documentation Refactor Tracker](../meta/documentation-refactor-tracker.md) · [Information Architecture Plan](../meta/information-architecture-plan.md) |

## Maintenance Checklist
- **Align terms first:** Review the [Contributing Guide](../team/contributing.md) for naming, scope order, and review gates.
- **Edit at the source:** Update the canonical doc (action plan, risk register, infra overview) before touching summaries.
- **Sync execution artifacts:** Record roadmap or risk changes in the execution docs prior to updating briefs or decks.
- **Track follow-ups:** Capture stale areas or owners in the [Documentation Inventory](../meta/documentation-inventory.md).
- **Verify links:** Run `scripts/check-links.sh` after structural edits or file moves.

## Contact & Feedback
- Email [hello@sudostake.com](mailto:hello@sudostake.com) for external questions.
- For doc updates, open an issue or PR referencing the [Documentation Inventory](../meta/documentation-inventory.md).
