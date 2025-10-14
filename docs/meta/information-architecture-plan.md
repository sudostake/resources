---
Purpose: Outline the proposed information architecture for the SudoStake documentation refactor.
Owner: Docs Lead (TBD)
Last Updated: 2025-10-08
Primary Audience: Contributors, Internal Stakeholders
---

# Information Architecture Plan

## Phase Goals
- Readers should land on the right depth of detail within two clicks.
- Navigation must surface clear entry points for executive, technical, and community audiences.
- Prepare for folder moves without breaking links during the transition.

## Proposed Folder Structure (Post-Refactor)
- `overview/` — readme, project one-pager, pitch collateral, press-ready summaries.
- `product/` — personas and flows, project charter, specifications, execution briefs.
- `execution/` — action plan, progress reports, step retrospectives, risk register.
- `systems/` — core infrastructure overview, technical references, integration guides.
- `research/` — competitive analysis, market notes, external studies.
- `team/` — organization details, contributor guidelines, contact list.
- `meta/` — documentation strategy, contribution standards, changelog (if added).

> During the refactor we will introduce folders gradually, updating references as each document moves. The readme will always reflect the “live” location.

## Document Migration Map
| Document | Current Path | Proposed Destination | Notes |
| --- | --- | --- | --- |
| readme.md | root | overview/readme.md | Acts as documentation landing page; will reference other folders. |
| project-one-pager-sudostake-near.md | root | overview/project-one-pager-sudostake-near.md | Ensure filename remains stable due to external sharing. |
| pitch-deck-sudostake-near.md | root | overview/pitch-deck-sudostake-near.md | Add link to maintained slide deck asset. |
| lean-canvas-sudostake-generic.md | root | product/lean-canvas-sudostake-generic.md | Keep canonical version in product strategy folder. |
| lean-canvas-sudostake-near.md | root | product/lean-canvas-sudostake-near.md | Cross-link differences vs generic canvas. |
| personas-and-flows.md | root | product/personas-and-flows.md | Add scenario summaries and integration notes. |
| sudostake-project-charter.md | root | product/sudostake-project-charter.md | Update governance section once folder move occurs. |
| sudostake-action-plan-near-mvp.md | root | execution/sudostake-action-plan-near-mvp.md | Keep as source of truth for sequencing, dates, and scope. |
| sudostake-m1-progress.md | root | execution/sudostake-m1-progress.md | Pair with future step reports. |
| progress-report-2.md | root | execution/progress-report-2.md | Rename to include dates if needed during refactor. |
| progress-report-3.md | root | execution/progress-report-3.md | Maintain chronological indexing. |
| sudostake-risk-register.md | root | execution/sudostake-risk-register.md | Convert to structured table with owners. |
| sudostake-core-infra-on-near.md | root | systems/sudostake-core-infra-on-near.md | Add architecture diagrams and glossary tags. |
| expanded-competitive-analysis.md | root | research/expanded-competitive-analysis.md | Provide executive summary section for quick reading. |
| documentation-strategy.md | root | meta/documentation-strategy.md | Remains reference for overall approach. |
| documentation-inventory.md | root | meta/documentation-inventory.md | Update as documents move. |
| information-architecture-plan.md | root | meta/information-architecture-plan.md | This plan; remove once new structure is implemented if redundant. |
| contributing.md | root | meta/contributing.md | Continue to host contributor guidance. |
| sudostake-team-org-details.md | root | team/sudostake-team-org-details.md | Add responsibilities matrix before move. |

## Readme Navigation Blueprint
- Keep the standard front matter at the top.
- Spotlight the five primary audiences with 2–3 curated links each.
- Summarize authoritative docs in a Sources of Truth table.
- Group remaining links by the future folder structure so readers learn the layout early.
- End with contact details and update reminders.

## Cross-Linking & Indexing Guidelines
- Add “Related Documents” to long-form files and link the most relevant references.
- Use consistent heading IDs (lowercase with hyphens) for cross-file anchors.
- Include a mini-table of contents once documents exceed ~700 words.
- Cite the source when summarizing data (e.g., “See action plan §Step 2”).

## Implementation Checklist
1. Publish the refreshed README structure before moving files.
2. Add “Related Documents” blocks to roadmap, infra overview, and risk register during content refresh.
3. Introduce folders incrementally, updating links after each move.
4. Run link checks post-migration and update the documentation inventory.
5. Archive outdated plan notes once the new structure is stable.

## Migration Window Proposal

### Sequence & Responsibilities
- **Wave 1 (2025-10-03)** — Create `docs/` root plus `overview/` and `meta/`. Migrate `readme.md`, `documentation-strategy.md`, `documentation-inventory.md`, `documentation-refactor-tracker.md`. Owners: Docs Lead + Dev Tools.
- **Wave 2 (2025-10-04)** — Stand up `product/`, `execution/`, `systems/`. Move lean canvases, roadmap, risk register, progress reports, infra overview. Owners: Docs Lead + Protocol Engineering delegate.
- **Wave 3 (2025-10-05)** — Add `research/`, `team/`. Migrate competitive analysis and team/org docs; confirm cross-links. Owners: Docs Lead + GTM Lead.
- **Wave 4 (2025-10-06)** — Create placeholder for `builders/` content if new guides land during Phase 3; update README navigation once all moves are complete.

> Status: Waves 1–3 executed 2025-09-29; run link check after any additional moves.

### Edit Freeze Guidance
- Adopt a **24-hour soft freeze** on affected files during each wave. Contributors open PRs against the branch post-migration to avoid merge conflicts.
- Flag freeze windows in the tracker and announce in Discord at least 48 hours ahead.
- Emergency updates route through the Docs Lead, who coordinates merges after target files relocate.

### Verification
- Run `scripts/check-links.sh` after each wave to confirm Markdown links resolve.
- Update `documentation-inventory.md` and the refactor tracker with completion notes once verification passes.

## Related Documents
- [Documentation Strategy](./documentation-strategy.md)
- [Documentation Inventory](./documentation-inventory.md)
- [Documentation Refactor Tracker](./documentation-refactor-tracker.md)

## Next Review
- Revisit after Phase 2 standardization or when new folder migrations are scheduled.
