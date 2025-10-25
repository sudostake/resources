---
Purpose: Provide reusable templates for SudoStake documentation front matter and progress reports.
Owner: Docs Lead (TBD)
Last Updated: 2025-10-08
Primary Audience: Contributors
---

# SudoStake Documentation Templates

Use these templates to standardize structure across the documentation set. Update this file if new doc types are introduced, and copy the relevant snippet when creating or refreshing docs so metadata stays consistent.

## Front Matter (All Docs)

```markdown
---
Purpose: <One sentence describing why the document exists.>
Owner: <Role or individual accountable for updates.>
Last Updated: YYYY-MM-DD
Primary Audience: <Select from Investors & VCs, Researchers & Technical Reviewers, Ecosystem Partners & Builders, Community & Prospective Users, Contributors, Internal Stakeholders.>
---
```

### Usage Notes
- Keep Purpose concise; rely on the document body for detail.
- Owner should reflect the current accountable team. Use role labels until specific owners are assigned.
- Update `Last Updated` whenever material meaningfully changes.
- Multiple audiences are allowed; separate with commas.

## Progress Report Template

```markdown
---
Purpose: Summarize execution progress and flag material changes for stakeholders.
Owner: <Role overseeing the workstream.>
Last Updated: YYYY-MM-DD
Primary Audience: Contributors, Investors & VCs, Community & Prospective Users
---

# SudoStake — Progress Report <Number>

Date: YYYY-MM-DD  •  Action Plan: [sudostake-action-plan-near-mvp.md](../execution/sudostake-action-plan-near-mvp.md)
Note: This report summarizes current status. For authoritative dates, scope, and sequencing, see the action plan.

## Summary
- <Top 3 updates, ideally bullet form.>

## Status
- **Step** — <status label> (Target: YYYY-MM-DD)
  - Key workstreams and dependencies.

## Risks
- <Risk description> — <Mitigation or owner>.

## Next (2 weeks)
- <Upcoming actions with owners.>
