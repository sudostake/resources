Title: SudoStake on NEAR — Written Pitch Deck

1) One‑liner
- Stake. Earn. Borrow. Native NEAR staking meets simple, oracle‑less credit. Borrow against your staked NEAR without unbonding or custodians.

2) Problem
- Stakers must unbond (and wait epochs) to access liquidity, or rely on wrapped/synthetic solutions that add risk and complexity.
- Lenders on NEAR lack a simple, non‑custodial way to deploy capital against productive, on‑chain collateral.
- Existing approaches depend on price oracles, pooled custody, or off‑chain coordination, increasing operational and security risk.

3) Solution
- User‑owned Vault contracts that delegate NEAR to validators and expose a deterministic, oracle‑less credit flow: request → accept → repay →, if needed, liquidate.
- Borrowers post a request for USDC with fixed terms (amount, interest, duration, collateral in staked NEAR). Lenders accept by transferring tokens to the vault.
- If the borrower misses the deadline, anyone can trigger liquidation. The vault pays in strict order: liquid NEAR → matured unstaked → targeted unstake, then stops exactly at the collateral amount.

4) Product (MVP scope)
- Web app (Next.js/React) for vault management: mint vault, deposit/withdraw, delegate/undelegate, claim unstaked, request liquidity, accept/repay, and view liquidation status.
- AI/agent interface (NEAR agent tooling) to drive the same flows via chat/intents for hands‑off management.
- Open, permissionless contracts (Factory + Vault) published with tests, stable interfaces, and integration docs.

5) How it Works (overview)
- Factory contract deploys per‑user Vaults as subaccounts and initializes them with owner, index, and version; fee is configurable by the factory owner.
- Vault contract holds NEAR/FTs for the owner, supports validator delegation via the official staking‑pool interface, tracks unstake epochs, and manages the credit lifecycle.
- Offers and acceptances use standard NEP‑141 ft_on_transfer hooks with JSON messages; all state transitions emit indexable EVENT_JSON logs for off‑chain observers.

6) Why now (NEAR fit)
- Native USDC on NEAR enables simple, fiat‑pegged lending legs without bridges.
- NEAR’s staking‑pool standard and predictable epoch rules allow oracle‑less collateral management with deterministic liquidation sequencing.
- Ecosystem push for agents/intents aligns with SudoStake’s automation‑friendly design.

7) Differentiation
- Oracle‑less. No price feeds or synthetic wrappers; simple, auditable rules.
- Non‑custodial. Users own their vault accounts and choose validators; no pooled custody.
- Deterministic liquidation. Transparent, priority‑ordered repayment that halts exactly at the owed amount.
- Composable. Clean interfaces, stable events; easy to embed in wallets, agents, and dApps.

8) Market and Users
- NEAR stakers and validators seeking liquidity without unbonding.
- Lenders and treasuries wanting secured yield in USDC against staked NEAR.
- Wallets/super‑apps aiming to offer “Borrow against stake” as a first‑class action.
- Protocols that want a shared, audited, reusable collateral primitive.

9) Traction and Status
- Prior chain (Archway): ~231 vaults created (proof of execution for the vault model).
- NEAR MVP: contracts ported to NEAR SDK (Rust), integration tests with near‑workspaces, web app in active development.
- M1 (Q3 2025): wallet connect, vaults dashboard, deposit/withdraw, delegate/undelegate/claim‑unstaked complete; remaining: request/accept/repay/liquidate and marketplace view.

10) Business Model
- Protocol keeps it simple: configurable vault minting fee at the Factory (one‑time on creation).
- Optional validator commissions if users choose a SudoStake‑operated validator.
- No protocol fee on borrow/lend flows in MVP; room for future opt‑in value capture if aligned with users.

11) Go‑to‑Market
- Launch on NEAR testnet → closed beta on mainnet behind flags → staged mainnet rollout.
- Integrations with wallets/agents for one‑tap “Borrow against stake.”
- Developer path: clear docs, examples, and event indexing; bounty‑backed integrations.

12) Technology and Architecture (concise)
- Contracts: Rust/near‑sdk 5.11.0; Factory (subaccount deploy + fee) and Vault (staking + credit lifecycle). Deterministic, event‑rich, with global processing lock to serialize async flows safely.
- Integrations: NEP‑141 ft_transfer/ft_on_transfer, staking‑pool (deposit_and_stake, unstake, withdraw_all), near‑workspaces for integration tests.
- Web: Next.js/React app with reusable UI primitives; Firebase supported for auth/ops where needed.
- Agent: near‑ai CLI workflows with environment profiles for owners and lenders; designed to map intents → on‑chain settlement.

13) Security and Risk
- Deterministic flows; minimized external dependencies.
- Storage reserve and processing lock guard long‑running operations; failed refunds are persisted and retryable.
- Reproducible builds and integration tests; third‑party audits planned before scale; public bug bounty to follow.

14) Roadmap (high level)
- M1 (Q3 2025): Testnet feature‑complete web + contracts (request/accept/repay/liquidate, marketplace).
- M2 (Q4 2025): Factory optimization or fallback decision (code‑hash registry vs embedded WASM), pending upstream SDK changes.
- M3–M4 (Q4 2025): Mainnet candidate behind flags; year‑end beta stability.
- M5–M6 (2026): Staged mainnet rollout and stability.

15) Team
- Solo maintainer: Muhammed Ali (protocol/engineering). Recruiting open‑source contributors in Rust/NEAR, Next.js/React, DevOps.
- Governance roadmap: single maintainer → 2‑of‑3 multi‑sig as contributors join; transparent milestones and reviews.

16) The Ask
- Ecosystem support to reach mainnet: security review, indexing guidance, and distribution via NEAR wallets/agents.
- Early partners (validators, wallets, agent frameworks) to co‑design onboarding and recovery playbooks.

17) Contact
- hello@sudostake.com • https://sudostake.com • GitHub: https://github.com/sudostake
