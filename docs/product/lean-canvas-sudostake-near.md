# LEAN CANVAS — SudoStake on NEAR

See also: lean-canvas-sudostake-generic.md for chain‑agnostic canvas.

Status (Sep 26, 2025)
- M1 complete (Sep 23, 2025). M2 in progress (near-sdk-rs PR #1369 merged; code-hash registry + global Vault behind feature flags).

One‑liner
- Liquidity for NEAR stakers without unbonding. Borrow/lend on native stake — no oracles, no wrappers, no custodians.

1) Problem
- Unlocking staked NEAR requires unbonding delays or custodial/synthetic solutions.
- No native borrow‑against‑stake while keeping validator delegation and yield.
- Lenders lack low‑risk, non‑custodial collateral on NEAR.

2) Customer Segments
- NEAR stakers/validators; lenders/capital providers; NEAR devs/DAOs; onboarding users via wallets/agents.

3) Unique Value Proposition
- Turn staked NEAR into usable collateral — oracle‑free.
- User‑owned vaults; validator choice, governance, and rewards preserved.
- Deterministic, permissionless system.

4) Solution
- Vaults: non‑custodial, configurable creation fee; delegate NEAR to validators.
- Liquidity requests: USDC loans with collateral in staked NEAR; accept via NEP‑141 JSON messages.
- Liquidation: strict order (liquid → matured → targeted unstake), stop at owed; no oracles.
- Marketplace: discovery of open requests; counter‑offers (amount‑only) beyond M1.

5) Channels
- Web app; agent interfaces; validator/wallet partnerships; NF protocol‑rewards visibility.

6) Revenue Streams
- Vault creation fee (Factory); optional validator commissions; no protocol fees on borrow/lend/liquidate in MVP.

7) Cost Structure
- Contracts (Rust/NEAR SDK) dev/audit/maint; frontend; agent infra; NEAR tx/storage; docs/support.

8) Key Metrics
- Total NEAR staked; vault count/active; loan volume; repayment rate; time to fund; offer competition; repeat usage; USDC depth.

9) Unfair Advantage
- First native NEAR non‑custodial borrow against stake; oracle‑less deterministic liquidation; NEAR smart‑account‑aligned vaults; Rewards Cohort 2 alignment; no synthetic assets.

Notes
- Traction: ~231 vaults on prior chain; NEAR testnet feature‑complete for M1 flows.
- Next: M2 optimized factory/global Vault behind feature flags with a migration plan.
