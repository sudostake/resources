---
Purpose: Prepare for the shared vault code-hash registry design review.
Owner: Protocol Engineering
Last Updated: 2025-10-08
Primary Audience: Protocol & App Engineering, Infra & Ops
---

# Factory Optimization — Design Review (2025-10-14)

## Session Snapshot
- **Focus:** Move `sudostake_contracts_near` from embedded `vault.wasm` to a shared code-hash registry inside the factory.
- **Decisions Needed:** registry data model, contract changes, rollout & observability plan.
- **Attendees:** Protocol Eng (registry), App Eng (web + agent), Infra & Ops (deployment/metrics), Product/Ops (migration comms).

## Decision Goals
- Approve the registry architecture and how contracts reference it.
- Confirm how clients swap to the shared vault path and display new mint economics.
- Define success metrics, logging, and rollback expectations before coding starts.

## Pre-reads
- `sudostake_contracts_near/contracts/factory/src/contract.rs` — current embedded `vault.wasm`.
- `sudostake_contracts_near/contracts/factory/tests/integration_test.rs` — per-vault deployment tests.
- `sudostake_web_near/utils/constants.ts` & `utils/networks.ts` — factory address, mint fee, UI copy.
- `sudostake_agent_near/agent/src/helpers.py` — factory + USDC constants the agent assumes.
- `docs/execution/progress-report-3.md` & `docs/execution/sudostake-action-plan-near-mvp.md` — milestones, risks, burndown.

## Agenda & Timeboxes
| Time | Topic | Outcomes |
| --- | --- | --- |
| 5 min | Problem & constraints | Align on current mint cost (10 NEAR, `vault.wasm` 301 962 bytes) and the need for a shared hash registry. |
| 20 min | Registry proposal | Lock storage schema, versioning, access controls, and migration guarantees. |
| 15 min | Factory contract updates | Agree on the new mint flow, config surface, and test coverage (unit + near-workspaces). |
| 15 min | Client & ops impact | Capture required web/agent changes, registry-aware config, artifact publishing, and rollback path. |
| 10 min | Risks & mitigations | Enumerate downtime, partial deploy, and artifact mismatch risks plus mitigations. |
| 5 min | Decisions & next steps | Record go/no-go, owner assignments, and due dates. |

## Bring This Data
- Mint-fee breakdown (storage vs buffer) and current wasm size.
- Draft registry data model showing keys, values, and upgrade flow.
- Outline of the artifact publishing script (hosting, checksum distribution, retention).
- Observability sketch: logs/events/metrics plus dashboard targets for the optimized path.

## Meeting Outputs
- Approved design notes or open questions to unblock coding.
- Action list with owners for contract work, client updates, ops tasks, and documentation.
- Any roadmap or progress-report adjustments triggered by the decisions.
