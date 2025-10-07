---
Purpose: Track and mitigate key risks for the SudoStake NEAR MVP and launch.
Owner: Risk & Compliance (TBD)
Last Updated: 2025-09-29
Primary Audience: Contributors, Investors & VCs
---

# SudoStake — Risk Register (NEAR MVP)

Scope: Protocol, product, and go-to-market risks across smart contracts, liquidity, and adoption.

| ID | Risk Description | Impact | Likelihood | Owner | Mitigation Actions | Status | Next Review |
| --- | --- | --- | --- | --- | --- | --- | --- |
| R-01 | Smart contract defects introduce loss events on mainnet. | High | Medium | Protocol Engineering | Commission independent audits, publish reports and remediations, operate scoped bug bounty, maintain public risk disclosures. | In progress | 2025-10-15 |
| R-02 | Insufficient USDC supply to fund borrower demand at launch. | High | Medium | Partnerships & Treasury | Allocate bootstrap USDC tranches, secure partner commitments, maintain live liquidity dashboard, stage lender onboarding. | In progress | 2025-10-01 |
| R-03 | Users misinterpret manual lifecycle (no auto-liquidations). | Medium | Medium | Product & UX | Publish “Nothing runs automatically” explainer, add due-time checklist, offer auto-repay/auto-claim helpers, surface “what happens next” messaging. | Planned | 2025-10-05 |
| R-04 | Audit scheduling delays mainnet readiness. | High | Low | Program Management | Book audits with buffer, enforce pre-audit code freeze, run testnet → allowlist → mainnet gating, launch bug bounty ahead of public launch. | Mitigation active | 2025-10-07 |
| R-05 | Fee model fails to cover operating costs at scale. | Medium | Medium | Strategy & Finance | Publish fee rationale, run pricing experiments, explore validator revenue share, perform quarterly runway analysis. | Planned | 2025-11-01 |
| R-06 | Perceived efficiency gap versus oracle-based lending. | Medium | Medium | GTM & Research | Produce “P2P vs pooled” explainer, publish utilization dashboard, capture case studies, emphasize isolated risk/recovery. | In progress | 2025-10-12 |
| R-07 | Expectations mismatch with pooled lending products slows adoption. | Medium | Medium | Marketing & Community | Align onboarding copy, create model comparison one-pager, highlight deterministic recovery in campaign assets. | Planned | 2025-10-10 |

## Related Documents
- [Roadmap — NEAR MVP & Launch](./sudostake-roadmap-near-mvp.md)
- [Progress Report 3](./progress-report-3.md)
- [SudoStake Core Infra on NEAR](../systems/sudostake-core-infra-on-near.md)

## Next Review
- Confirm mitigation status during weekly program sync; formal register refresh targeted for 2025-10-15.
