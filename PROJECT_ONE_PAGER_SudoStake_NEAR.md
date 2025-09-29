Title: SudoStake on NEAR — One‑Pager

One‑liner
- Borrow USDC against staked NEAR without unbonding, oracles, or custodians. User‑owned vaults; deterministic liquidations.

Problem
- Unbonding delays or wrappers/synthetics for liquidity; lenders lack a simple non‑custodial path on NEAR.

Solution
- Per‑user Vaults delegate NEAR and expose oracle‑less credit: request → accept → repay → liquidate if missed deadline (strict order; halt at owed).

How it works (NEAR)
- Factory deploys user‑owned Vaults (optional creation fee). Vaults manage NEAR/FT balances.
- Staking via staking‑pool (deposit_and_stake, unstake, withdraw_all) with user validator choice.
- Credit via NEP‑141 ft_transfer/ft_on_transfer JSON; EVENT_JSON logs for indexing.
- Liquidation: liquid → matured → targeted unstake; no price oracles.

Who it’s for
- NEAR stakers/validators; lenders/treasuries; wallets, agents, and dApps.

Key features (MVP)
- Mint vault; deposit/withdraw; delegate/undelegate/claim‑unstaked.
- Request USDC; lender accepts; repay before deadline.
- Post‑deadline liquidation (anyone); deterministic and auditable.
- Clean events and stable interfaces for integrations.

Why now (NEAR)
- Native USDC + predictable epochs enable oracle‑less collateral.
- Agents/intents momentum fits automation‑friendly design.

Differentiation
- Oracle‑less, non‑custodial, deterministic; composable interfaces/events.

Quick comparison
|  | SudoStake | Pooled MM | CDP | Custodial |
|---|---|---|---|---|
| Collateral control | Your vault | Pool/LST | Collateral contract | Custodian |
| Oracles/peg needed | No | Yes | Yes | Off-chain marks |
| Settlement trigger | Time/expiry | Price/health | Price/peg | Off-chain |
| Systemic risk | Per-vault only | Pool contagion | Peg/system | Counterparty |
| Day-1 depth | Moderate | High | Medium | High |
| Fees on credit | 0 | Often > 0 | Often > 0 | Fees/spread |

Status & traction
- Prior chain validated (~231 vaults). NEAR MVP active; E2E flows on testnet.

Go‑to‑market
- Testnet → gated mainnet beta → staged rollout; wallet/agent integrations; dev bounties.

Business model
- Vault creation fee (Factory); optional validator commissions; no protocol fee on borrow/lend in MVP.

Security & risk
- Deterministic flows; processing lock + storage reserve; tests; third‑party audits and bounty before scale.

Team & governance
- Maintainer: Muhammed Ali; governance: solo → 2‑of‑3 multisig as contributors join.

Roadmap
- M1: Testnet feature‑complete (request/accept/repay/liquidate, marketplace).
- M2: Factory optimization behind flags.
- M3–M4: Mainnet candidate and beta stability.

Ask
- Ecosystem support: security review, indexing guidance, wallet/agent distribution; early partners for onboarding.

Contact
- hello@sudostake.com • https://sudostake.com • GitHub: https://github.com/sudostake
