---
Purpose: Provide reusable templates for SudoStake documentation front matter and progress reports.
Owner: Docs Lead (TBD)
Last Updated: 2025-09-29
Primary Audience: Contributors
---

# SudoStake Documentation Templates

Use these templates to standardize structure across the documentation set. Update this file if new doc types are introduced.

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

## Related Documents
- [Action Plan — NEAR MVP & Launch](../execution/sudostake-action-plan-near-mvp.md)
- [Risk Register](../execution/sudostake-risk-register.md)
- <Add links as needed.>

## Next Review
- <Date of the next planned report or checkpoint.>
```

### Tailoring Guidance
- Replace relative paths once documents move into the `docs/execution/` tree (Phase 1).
- Consider adding a KPI snapshot table if the step has quantitative targets.
- Archive reports in chronological order with ISO-like filenames (e.g., `progress-report-2025-09-26.md`).

## Related Documents

- [Contributing Guide](../team/contributing.md)
- [Documentation Strategy](./documentation-strategy.md)
- [Documentation Refactor Tracker](./documentation-refactor-tracker.md)

## Next Review

- Revisit templates during Phase 2 (Standardization) to confirm they meet contributor needs.
