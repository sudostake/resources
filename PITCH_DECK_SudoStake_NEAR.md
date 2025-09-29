Title: SudoStake on NEAR — Written Pitch

1) One‑liner
- Stake. Earn. Borrow. Native NEAR staking with oracle‑less credit. Borrow against staked NEAR without unbonding or custodians.

2) Problem
- Unbonding delays or wrapped/synthetic risk for liquidity.
- Lenders lack non‑custodial, productive collateral access.
- Many designs depend on oracles/pools/off‑chain coordination.

3) Solution
- User‑owned Vaults delegate NEAR and expose deterministic credit: request → accept → repay → liquidate (if needed).
- Borrowers post USDC terms; lenders accept via token transfer.
- On missed deadline, anyone can trigger liquidation: liquid → matured → targeted unstake; stop at collateral.

4) Product (MVP)
- Web app: mint, deposit/withdraw, delegate/undelegate, claim‑unstaked, request, accept/repay, view liquidation.
- Agent interface: same flows via chat/intents.
- Contracts (Factory + Vault): tests, stable interfaces, integration docs.

5) How it Works
- Factory: deploys per‑user Vaults (owner, index, version); configurable fee.
- Vault: NEAR/FT custody for owner; staking‑pool delegation; unstake tracking; full credit lifecycle.
- Offers: NEP‑141 ft_on_transfer with JSON messages; EVENT_JSON logs for indexing.

6) Why NEAR now
- Native USDC; staking‑pool standard + predictable epochs; agents/intents momentum.

7) Differentiation
- Oracle‑less; non‑custodial; deterministic liquidation; composable interfaces/events.

Quick comparison
|  | SudoStake | Pooled MM | CDP | Custodial |
|---|---|---|---|---|
| Collateral control | Your vault | Pool/LST | Collateral contract | Custodian |
| Oracles/peg needed | No | Yes | Yes | Off-chain marks |
| Settlement trigger | Time/expiry | Price/health | Price/peg | Off-chain |
| Systemic risk | Per-vault only | Pool contagion | Peg/system | Counterparty |
| Day-1 depth | Moderate | High | Medium | High |
| Fees on credit | 0 | Often > 0 | Often > 0 | Fees/spread |

8) Market & Users
- NEAR stakers/validators; lenders/treasuries; wallets/super‑apps; protocols needing a reusable collateral primitive.

9) Traction & Status
- Prior chain: ~231 vaults created.
- NEAR MVP: Rust/NEAR SDK; near‑workspaces tests; web in active development.
- M1: core flows complete; marketplace view in scope per roadmap.

10) Business Model
- Vault mint fee (Factory). Optional validator commissions. No protocol fee on borrow/lend in MVP.

11) Go‑to‑Market
- Testnet → mainnet candidate behind flags → staged rollout. Wallet/agent integrations; dev examples and bounties.

12) Tech & Architecture
- Contracts: Rust/near‑sdk; Factory (subaccount deploy + fee), Vault (staking + credit lifecycle); deterministic, event‑rich, global processing lock for async safety.
- Integrations: NEP‑141; staking‑pool ops; near‑workspaces tests. Web: Next.js/React. Agent: near‑ai workflows.

13) Security & Risk
- Deterministic flows; minimal dependencies; storage reserve + processing lock; retryable refunds; reproducible builds; integration tests; audits/bounty pre‑scale.

14) Roadmap (high‑level)
- M1: Testnet feature‑complete (request/accept/repay/liquidate, marketplace).
- M2: Factory optimization (code‑hash registry vs embedded WASM) — now unblocked.
- M3–M4: Mainnet candidate; beta stability.
- M5–M6: Staged mainnet rollout.

15) Team
- Maintainer: Muhammed Ali; recruiting contributors (Rust/NEAR, Next.js/React, DevOps). Governance: solo → 2‑of‑3 multisig as team grows.

16) Ask
- Support to reach mainnet: security review, indexing guidance, wallet/agent distribution. Early partners for onboarding/recovery playbooks.

17) Contact
- hello@sudostake.com • https://sudostake.com • GitHub: https://github.com/sudostake
