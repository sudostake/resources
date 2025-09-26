Title: SudoStake on NEAR — Project One‑Pager

One‑liner
- Borrow stablecoins against your staked NEAR without unbonding, oracles, or custodians. User‑owned vaults, deterministic liquidations.

Problem
- Stakers must unbond (and wait epochs) to get liquidity, or use wrappers/synthetics with extra risk and complexity.
- Lenders on NEAR lack a simple, non‑custodial, oracle‑less way to deploy USDC against productive on‑chain collateral.

Solution
- Per‑user Vault smart contracts that delegate NEAR to validators and expose an oracle‑less credit flow: request → accept → repay →, if needed, liquidate.
- Borrowers post a request (amount, interest, duration, collateral in staked NEAR). Lenders accept by transferring USDC to the vault.
- If repayment is missed, anyone can trigger liquidation. The vault repays in strict, transparent order and halts exactly at the amount owed.

How it works (NEAR‑native)
- Factory deploys user‑owned Vaults as subaccounts; optional creation fee. Vaults manage NEAR/FT balances for the owner.
- Staking via NEAR staking‑pool standard (deposit_and_stake, unstake, withdraw_all) under the owner’s validator choice.
- Credit lifecycle uses NEP‑141 ft_transfer/ft_on_transfer with JSON messages and emits structured EVENT_JSON logs for indexing.
- Deterministic liquidation sequence: liquid NEAR → matured unstaked → targeted unstake; no price oracles or external feeds.

Who it’s for
- NEAR stakers and validators seeking liquidity without unbonding or losing rewards and validator choice.
- Lenders/treasuries wanting secured USDC yield backed by native staked NEAR.
- Wallets, agents, and dApps embedding “Borrow against stake” as a first‑class action.

Key features (MVP)
- Mint a vault, deposit/withdraw NEAR, delegate/undelegate/claim‑unstaked.
- Request USDC loan; lender accepts; borrower repays before deadline.
- Post‑deadline liquidation callable by anyone; deterministic, auditable process.
- Clean events, stable interfaces; designed for wallet/agent integrations.

Why now (NEAR fit)
- Native USDC + predictable epoch rules enable oracle‑less collateral management.
- Ecosystem push for agents/intents aligns with automation‑friendly vault design.

Differentiation
- Oracle‑less, non‑custodial, and deterministic vs. pooled, synthetic, or oracle‑dependent designs.
- Composable interfaces and events; easy to integrate across wallets and agents.

Status & traction
- Model validated on a prior chain (231+ vaults created). NEAR MVP contracts and web app active; end‑to‑end flows on testnet per current progress reports.

Go‑to‑market
- Testnet → gated mainnet beta → staged mainnet rollout.
- Integrations with NEAR wallets/agents; developer examples and bounties.

Business model
- Simple: configurable vault creation fee at Factory. Optional validator commissions if delegating to a SudoStake‑operated validator. No protocol fee on borrow/lend in MVP.

Security & risk
- Deterministic flows minimize external dependencies; processing lock and storage reserve for async safety.
- Integration tests; third‑party audits before scale; public bug bounty to follow.

Team & governance
- Maintainer: Muhammed Ali (protocol/engineering). Governance roadmap: solo maintainer → 2‑of‑3 multi‑sig as contributors join.

Roadmap (high level)
- M1: Testnet feature‑complete web + contracts (request/accept/repay/liquidate, marketplace).
- M2: Factory optimization or fallback decision; progress behind flags.
- M3–M4: Mainnet candidate and beta stability; staged rollout thereafter.

The ask
- Ecosystem support: security review, indexing guidance, wallet/agent distribution. Early partners (validators, wallets, agent frameworks) for co‑design and onboarding.

Contact
- hello@sudostake.com • https://sudostake.com • GitHub: https://github.com/sudostake
