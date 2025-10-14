---
Purpose: Prepare for the shared vault code-hash registry design review.
Owner: Protocol Engineering
Last Updated: 2025-10-08
Primary Audience: Protocol & App Engineering, Infra & Ops
---

# Factory Optimization — Design Review Prep (2025-10-14)

Target attendees: Protocol Engineering (registry implementation), App Engineering (web & agent integration), Infra & Ops (deployment & monitoring), Product/Ops (migration comms).

Distribute this prep packet ahead of the design review so the group arrives with shared context and ready-to-decide inputs.

## Goals
- Lock the technical approach for moving `sudostake_contracts_near` to a shared vault code-hash registry implemented directly in Rust.
- Align on how contracts, web app, and agent will consume the registry once deployed.
- Define success metrics and observability for the optimized path before implementation starts.

## Pre-reads
- `sudostake_contracts_near/contracts/factory/src/contract.rs`: current embedded `vault.wasm` path.
- `sudostake_contracts_near/contracts/factory/tests/integration_test.rs`: existing tests that expect per-vault deployment.
- `sudostake_web_near/utils/constants.ts` & `utils/networks.ts`: current mint fee and factory configuration.
- `sudostake_agent_near/agent/src/helpers.py`: factory + USDC constants and assumptions.
- `resources/docs/execution/progress-report-3.md`: latest execution status and risks.
- `resources/docs/execution/sudostake-action-plan-near-mvp.md`: Step sequencing and burndown expectations.

## Agenda
1. **Problem & Constraints (5 min)**
   - Current mint flow and cost analysis (10 NEAR fee; `res/vault.wasm` size 301 962 bytes).
   - Desired outcome: shared `vault.wasm` + code-hash registry embedded in the factory contract.
2. **Registry Design Proposal (20 min)**
   - Storage schema: how code hashes, metadata, and versioning will be stored.
   - Access control and upgrade mechanics (who can register/retire hashes).
   - Migration plan for existing vaults (if any) and factory compatibility guarantees.
3. **Factory Contract Changes (15 min)**
   - New mint flow: referencing registry vs embedded WASM.
   - Configuration surface (e.g., registry initialization data, version bumps).
   - Testing strategy: unit + near-workspaces coverage.
4. **Client & Ops Impact (15 min)**
   - Web app: configuration changes, UI updates to reflect lowered mint fee.
   - Near agent: helpers for registry awareness, enabling per-network overrides.
   - Ops: artifact publishing pipeline, observability (metrics/logs), rollback steps.
5. **Risks & Mitigations (10 min)**
   - Vault downtime risk, partial deployments, mismatched artifacts.
   - Dependencies (e.g., availability of shared vault account, storage costs).
6. **Decision & Next Steps (5 min)**
   - Confirm design direction or capture follow-up actions.
   - Assign owners and deadlines for implementation tasks.

## Required Inputs Before the Review
- Baseline metrics: factory minting fee breakdown (storage cost vs buffer) and current wasm size.
- Draft registry data model (diagram or table) with proposed keys, values, and upgrade flow.
- Outline of artifact publishing script (where shared `vault.wasm` lives, checksum distribution).
- Preliminary observability plan (logs, events, dashboards) for the optimized path.

## Expected Outputs
- Approved design decisions listed in meeting notes.
- Task list with owners for implementation, testing, deployment, and documentation.
- Timeline adjustments, if needed, reflected back into the roadmap and progress report.
