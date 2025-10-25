---
Purpose: Unite the documentation strategy, information architecture, and refactor execution guardrails in one reference.
Owner: Docs Lead (TBD)
Last Updated: 2025-10-08
Primary Audience: Contributors, Internal Stakeholders
---

# SudoStake Documentation Program Playbook

Use this playbook to understand why the docs exist, how they are structured, and how ongoing improvements are coordinated.

## 1. Strategy Overview

### Objectives
1. Present an investor-ready narrative grounded in roadmap commitments and traction.
2. Publish technically rigorous content for researchers, validators, and integrators.
3. Offer onboarding-ready collateral for partners, community members, and prospective users.
4. Maintain a single source of truth for scope and execution; sync all summaries to it.

### Primary Audiences & Questions
| Audience | Goals | Key Questions |
| --- | --- | --- |
| Investors & VCs | Evaluate opportunity, team, and readiness. | Market sizing, traction, upcoming milestones, risk mitigations. |
| Researchers & Technical Reviewers | Assess protocol design & risk. | Architecture, assumptions, invariants, integration hooks. |
| Ecosystem Partners & Builders | Decide whether to integrate/collaborate. | Touchpoints, APIs, rollout plan, ownership. |
| Community & Prospective Users | Understand value and status. | Why it matters, what is live, how to participate. |
| Contributors & Internal Stakeholders | Keep docs accurate and efficient. | Source of truth, review order, ownership. |

### Tone & Voice
- Confident, plain language—layer depth with tables, diagrams, and callouts.
- Define new terminology inline; cross-link to glossary (once added).
- When summarizing scope, cite the authoritative doc (action plan, risk register, etc.).

### Structural Guidelines
- Every doc starts with front matter (Purpose, Owner, Last Updated, Primary Audience).
- Flow: summary → detail → references; keep sections scannable with bullets/tables.
- Add "Related Documents" or "Next Review" blocks when it clarifies maintenance.

### Maintenance & Cadence
- Quarterly documentation review led by Product/Ops; capture outputs here.
- Monthly alignment pass across roadmap, risk register, and action plan snapshots.
- Run `scripts/check-links.sh` after large edits or folder moves.

## 2. Information Architecture Blueprint

### Goals
- Readers should reach the right depth within two clicks.
- Navigation must highlight executive, technical, and community entry points.
- Folder moves should never break links; update inventory immediately after changes.

### Folder Map (Current)
- `overview/` — landing hub, one-pager, pitch collateral, community snapshot.
- `product/` — charter, personas, canvases, user-focused specs.
- `execution/` — action plan, risk register, step retrospectives, decision logs.
- `systems/` — core infra overview, builder guides, technical references.
- `research/` — competitive analysis, market notes, external studies.
- `team/` — org structure, contributor onboarding, contacts.
- `meta/` — strategy (this playbook), templates, inventory, operational notes.

### Document Map Reference
| Document | Location | Notes |
| --- | --- | --- |
| overview/readme.md | overview/ | Entry point that mirrors folder structure and audiences. |
| overview/project-one-pager-sudostake-near.md | overview/ | Investor/partner summary. |
| overview/builder-integration-guide.md | overview/ | Primary integration checklist. |
| product/lean-canvas-* | product/ | Business model assumptions (generic + NEAR). |
| product/personas-and-flows.md | product/ | User archetypes and journeys. |
| execution/sudostake-action-plan-near-mvp.md | execution/ | Source of truth for sequencing and progress. |
| execution/sudostake-risk-register.md | execution/ | Risk log with owners/mitigations. |
| systems/sudostake-core-infra-on-near.md | systems/ | Technical architecture deep dive. |
| research/expanded-competitive-analysis.md | research/ | Market positioning and competitor detail. |
| team/contributing.md | team/ | Contribution workflow and standards. |
| meta/documentation-program.md | meta/ | This playbook. |
| meta/documentation-inventory.md | meta/ | Live index of every doc. |
| meta/documentation-templates.md | meta/ | Front matter + report templates. |

### Navigation & Cross-Linking Guidelines
- Overview readme remains the canonical navigation table; update it when adding new guides.
- Use consistent heading IDs (kebab-case) if linking to specific sections.
- Add mini tables of contents for documents longer than ~700 words.
- Cite the origin when summarizing data (e.g., “See action plan §Step 2”).

### Implementation Guardrails
1. Publish navigation updates before large moves.
2. Introduce folder changes incrementally; after each move run `scripts/check-links.sh` and update the inventory.
3. Record follow-ups or stale areas in the documentation inventory.
4. Archive outdated plan notes once structure stabilizes.

### Historical Migration Log
| Wave | Date | Scope | Owners | Status |
| --- | --- | --- | --- | --- |
| Wave 1 | 2025-10-03 | Created `docs/` root + `overview/`, `meta/`; moved readme and meta set. | Docs Lead + Dev Tools | Completed. |
| Wave 2 | 2025-10-04 | Added `product/`, `execution/`, `systems/`; moved canvases, roadmap, risk register, infra overview. | Docs Lead + Protocol Eng delegate | Completed. |
| Wave 3 | 2025-10-05 | Added `research/`, `team/`; migrated competitive analysis and team/org docs. | Docs Lead + GTM Lead | Completed. |
| Wave 4 | 2025-10-06 | Prepared builder content placeholders; refreshed overview readme once moves finished. | Docs Lead | Completed (placeholder ready for future builder docs). |

### Edit Freeze Guidance
- Use a 24-hour soft freeze on affected files during each wave. Post updates as PRs once the move lands.
- Announce freezes 48 hours ahead (Discord + tracker). Emergency edits route through the Docs Lead.

### Verification Checklist
- Run `scripts/check-links.sh` after each wave.
- Update the documentation inventory and this playbook with completion notes.
- Capture any regressions or missing redirects as issues.

## 3. Refactor Execution Tracker

_Current lead: Muhammed Ali owns all phases until additional contributors onboard._

### Phase Summary
| Phase | Scope Highlights | Owner | Target Completion | Status | Notes |
| --- | --- | --- | --- | --- | --- |
| Phase 0 — Alignment | Confirm scope, publish tracker, outline guardrails. | Muhammed Ali | 2025-10-01 | In progress | Cadence + owner gaps captured below. |
| Phase 1 — Navigation | Create `docs/` tree, relocate readme, update inventory, add link checks. | Muhammed Ali | 2025-10-08 | Complete | Folder migration live; run link checks after future moves. |
| Phase 2 — Standardization | Apply front matter, add review blocks, publish templates. | Muhammed Ali | 2025-10-15 | Complete | Templates in meta folder; contributors notified. |
| Phase 3 — Role Guides | Build audience landing pages and cross-links. | Muhammed Ali | 2025-10-29 | In progress | Investor, builder, community briefs drafted; awaiting SME review. |
| Phase 4 — Depth & Assets | Enrich technical refs, diagrams, runbooks. | Muhammed Ali | 2025-11-12 | Planned | Coordinate with protocol partner for diagrams. |
| Phase 5 — Maintenance | Formalize review cadence and documentation ceremony checklist. | Muhammed Ali | 2025-11-22 | Planned | Converts to ongoing ritual once launched. |

### Owner & Cadence Matrix
| Audience Cluster | Primary Docs | Interim Owner | Cadence |
| --- | --- | --- | --- |
| Investors & VCs | Investor brief, one-pager, pitch deck | Muhammed Ali | Bi-weekly during fundraising. |
| Researchers & Technical Reviewers | Core infra overview, risk register, technical appendices | Muhammed Ali | At execution checkpoints; recruit protocol partner later. |
| Ecosystem Partners & Builders | Builder integration guide, roadmap snapshots, API notes | Muhammed Ali | Before each integration wave. |
| Community & Prospective Users | Community snapshot, FAQs, announcements | Muhammed Ali | Align with progress updates (monthly minimum). |
| Contributors & Internal Stakeholders | Contributing guide, inventory, playbook | Muhammed Ali | Bi-weekly self-review + quarterly ceremony. |

### Cadence Commitments
- **Weekly solo review (15 min):** Track progress vs. phases; log blockers here.
- **Bi-weekly planning block:** Reassess deliverables, flag bandwidth risks, recruit owners.
- **Quarterly documentation review:** Validate sources of truth, close stale follow-ups in the inventory, and summarize outcomes.

### Immediate Actions
1. Confirm capacity for upcoming Phase 3/4 deliverables; log risks if timelines slip.
2. Socialize the consolidated action plan + playbook so contributors know where to look.
3. Continue running `scripts/check-links.sh` after structural edits and capture issues in the inventory.
