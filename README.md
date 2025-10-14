# SudoStake Documentation Hub

This repository houses the working documentation set for SudoStake on NEAR: context for decision makers, architecture and product specs, execution reporting, and the guardrails we use to maintain the docs themselves. Everything is written in Markdown with lightweight front matter so you can trace ownership and freshness at a glance.

## Start Here
- Open `docs/overview/readme.md` for the canonical navigation hub. It routes each audience to the right depth, bundles due-diligence kits, and flags sources of truth.
- Use your Markdown viewer of choice (VS Code, Obsidian, or the `open docs/overview/readme.md` command on macOS) to browse locally. The folder structure mirrors the navigation described below.
- Each document begins with front matter (`Purpose`, `Owner`, `Last Updated`, `Primary Audience`) following the template in `docs/meta/documentation-templates.md`. Treat those fields as the authoritative metadata.

## Find What You Need
- **By audience:** Investors, researchers, builders, community members, and contributors all have tailored entry points in `docs/overview/readme.md`. Start with the landing-zone table there if you are new to the project.
- **By task:** The “Due Diligence Toolkit” in the overview readme clusters the must-read docs for execution readiness, product-market fit, technical assurance, and integration planning.
- **By document type:** The quick directory guide below maps every folder to the questions it answers so you can navigate directly if you already know what you are looking for.

## Directory Guide
- `docs/overview/` — Narrative summaries, positioning collateral, and the master documentation hub.
- `docs/execution/` — Action plans, progress reports, risk registers, and design reviews tied to delivery milestones.
- `docs/product/` — Strategy artifacts such as the project charter, lean canvases, and user personas & flows.
- `docs/systems/` — Technical deep dives covering architecture, infrastructure, and integration pathways.
- `docs/research/` — Competitive intelligence and market analysis.
- `docs/team/` — Org structure, contributor onboarding, and contact paths.
- `docs/meta/` — How the documentation program operates: strategy, inventories, refactor tracker, templates, and information architecture.
- `scripts/` — Utility scripts for doc maintenance (`./scripts/check-links.sh` ensures internal links stay valid after restructures).

## Working in the Docs
- Read `docs/team/contributing.md` before editing; it sets terminology, review expectations, and the order of operations for updates.
- Update the source-of-truth document first (action plan, risk register, infrastructure overview, etc.), then sync summaries or collateral. The “Always-Current Sources” table in the overview readme lists the files that must remain immutably accurate.
- Capture follow-ups or stale areas in `docs/meta/documentation-inventory.md` so maintenance owners can triage work.
- After large edits or moves, run `./scripts/check-links.sh` to catch broken relative links before committing changes.

## Feedback & Contact
- Email `hello@sudostake.com` for external inquiries.
- For doc fixes or additions, open an issue or PR referencing the documentation inventory entry so maintainers can confirm scope and ownership.
