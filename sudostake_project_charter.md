# SudoStake Project Charter

1) Title
- The liquidity protocol for stakers

2) Purpose / Business Case
- Borrow stablecoins without unstaking or giving up control.
- Users create self‑owned vaults that hold staked assets, request loans, and get funded by lenders for fixed interest or collateral claim on default.
- Fully on‑chain: no synthetic tokens, no price oracles, no protocol token, no custodians.
- As staking grows, SudoStake enables composable credit markets directly on native staking.

3) Objectives
- Non‑custodial borrowing for stakers
- Permissionless lending via counter‑offers
- No synthetics/oracles
- Launch MVP on NEAR
- Ship web + AI interfaces for vault interactions

4) Scope
- Included:
  - First iteration of NEAR contracts: https://github.com/sudostake/sudostake_contracts_near
  - Web interface: create vaults; stake; request loans; repay or trigger liquidation
  - Chat‑based AI agent: supports same features as web app
  - Full vault lifecycle: staking → borrowing → repayment → liquidation
  - NEP‑141 tokens for lending/repayment (e.g., USDC)
  - Vault resale (takeover): implemented, optional in MVP
- Not included:
  - Automated liquidation (manual or external tools only)

5) Deliverables
- NEAR smart contracts on testnet (vault + factory; delegation, borrowing, repayment, liquidation)
- Web app for NEAR users (vaults, stake mgmt, loans, repay/liquidate)
- AI agent for vault interactions (feature‑parity with web)
- Manual liquidation (on‑chain, oracle‑free)
- Counter-offers: amount-only; best offer accepted; others refunded/dropped
- Optional vault resale (takeover) when safe conditions met

6) Stakeholders
- Muhammed Ali — Project lead (contracts, frontend, AI)
- NEAR testnet users — early adopters
- NEAR community — validators, stakers, contributors
- Archway users — multichain proof

7) Project Manager & Authority
- PM: Muhammed Ali
- Authority: full scope/tech/delivery for MVP; centralized decisions for speed; governance explored post‑rewrite

8) Milestones
- NEAR contracts to testnet — complete
- Web MVP live — in progress
- AI agent parity — in progress
- First lender interaction on testnet — expected soon
- MVP retro and scope review — post‑launch

9) Budget
- Funded by NEAR Foundation; part of Protocol Rewards Cohort 2
- Covers engineering, infra, NEAR MVP + AI agent
- No protocol token; no external fundraising in this phase
- Emphasis on efficient delivery/minimal overhead

10) Risks & Assumptions
- Risks: user comprehension barrier; low initial liquidity; action‑dependent liquidation; smart‑contract bugs; staking_pool.wasm limitations; AI agent maturity
- Assumptions: oracle‑less core; demand for borrow‑against‑stake; initial web/AI as starting points; reproducible builds planned next; NEAR stability/compatibility
