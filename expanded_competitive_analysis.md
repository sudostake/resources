# SudoStake Competitive Analysis

Date: September 1, 2025 | Contact: hello@sudostake.com

---

## 1) One-liner
SudoStake gives stakers working capital in stablecoins via offers from lenders, using your own vault as time-bound collateral. No price oracles.

---

## 2) Who it's for
- Borrowers (stakers/validators): Need stablecoins without giving up validator control.
- Lenders (USDC suppliers): Want clear, per-deal risk and on-chain repayment.

---

## 3) Why it's different
- Oracle-less: No price-feed cascades; risk is scoped to each vault.
- User-owned vaults: Your stake stays in your contract; lenders fund escrowed offers.
- Time-based settlement: Repay anytime before expiry; after expiry, liquidation can be triggered.

---

## 4) When to pick SudoStake vs alternatives
- Pick SudoStake when you want stablecoin working capital without surrendering validator control and you value deterministic timelines.
- Pick a pooled money market when immediate, very large size is the top priority and you accept oracle risk and pool contagion.
- Pick a CDP stablecoin when you prefer to self-mint and accept peg/oracle/system risks.
- Pick custodial credit when you need fiat rails + KYC under an off-chain contract.

---

## 5) Quick comparison
| | SudoStake | Pooled MM | CDP | Custodial |
|---|---|---|---|---|
| Collateral control | Your vault | Pool/LST | Collateral contract | Custodian |
| Oracles/peg needed | No | Yes | Yes | Off-chain marks |
| Settlement trigger | Time/expiry | Price/health | Price/peg | Off-chain |
| Systemic risk | Per-vault only | Pool contagion | Peg/system | Counterparty |
| Day-1 depth | Moderate | High | Medium | High |
| Fees on credit | 0 | Often > 0 | Often > 0 | Fees/spread |

---

## 6) Risks & realities
- Unbonding latency: Liquidations can take time; only the pledged portion is liquidated; remaining stake keeps compounding.
- Supply bootstrapping: Early markets need lenders; cohorts/market-makers help seed offers.
- Operational triggers: Expiry actions are explicit; simple agents or either party can call them.

---

## 7) Proof we'll publish (trust via data)
- Time-to-fill for requests & completion ratio.
- Borrower APR band and lender realized yield after all costs.
- On-time settlement (pre-expiry repayments; post-expiry resolution times).

---

## 8) Real-world comparisons
Short protocol cards with dated notes.

Aave v3: multi-chain EVM (Type: pooled money market)
- How it works: Users supply and borrow. A health factor governs liquidations when it falls below 1. Markets use external price oracles.
- Where it wins: Deep on-chain liquidity; instant size; mature tooling and integrations.
- Where SudoStake wins: No oracle reflexivity; per-vault containment; validator control stays with the borrower.
- Docs: [Liquidations](https://aave.com/docs/developers/liquidations), [Health factor help](https://aave.com/help/borrowing/liquidations), [v3 overview](https://aave.com/docs/developers/aave-v3/overview)
- Notable updates: 2025 — continued market risk-parameter updates; health-factor and oracle model remain standard.

MakerDAO (DAI): Ethereum (Type: CDP stablecoin)
- How it works: Open a vault, lock collateral, mint DAI. Under-collateralized vaults are liquidated via Dutch auctions.
- Where it wins: Self-minting; deep DAI liquidity; long-running auction system.
- Where SudoStake wins: No peg/PSM complexity; no auction cascades; validator sovereignty.
- Docs: [Liquidation 2.0](https://docs.makerdao.com/smart-contract-modules/dog-and-clipper-detailed-documentation), [clip.sol](https://github.com/makerdao/dss/blob/master/src/clip.sol)
- Notable updates: 2021-11-09 — Liquidation 2.0 detailed; 2025 — ongoing parameter governance.

Liquity (LUSD): Ethereum (Type: CDP stablecoin)
- How it works: Borrow LUSD at a 110% minimum collateral ratio. Liquidations are backstopped by a Stability Pool.
- Where it wins: High capital efficiency; simple, rules-based design.
- Where SudoStake wins: No price-oracle/peg exposure; time-based settlements; partial collateralization on native stake.
- Docs: [Stability Pool & liquidations](https://docs.liquity.org/liquity-v1/faq/stability-pool-and-liquidations)
- Notable updates: 2021 — mainnet launch; 2024-07-23 — docs confirm 110% MCR and Stability Pool role.

Morpho Blue + MetaMorpho: EVM (Type: isolated money markets)
- How it works: Isolated markets pair one collateral with one loan asset; MetaMorpho vaults aggregate liquidity across chosen markets. Oracles are set per market.
- Where it wins: Efficient routing; isolated risk per market; growing integrations.
- Where SudoStake wins: No oracle dependency; no pool contagion; simple expiry lifecycle.
- Docs: [Vaults](https://docs.morpho.org/learn/concepts/vault), [MetaMorpho overview](https://morpho.org/blog/understanding-morpho-vaults-intro-simplifying-isolated-markets)
- Notable updates: 2024-02 — MetaMorpho vaults explained; 2025-08-22 — docs describe isolated markets.

Rhea (ex-Burrow): NEAR (Type: pooled money market)
- How it works: Deposit and borrow with a health factor; integrates with NEAR DeFi.
- Where it wins: Native NEAR UX; stNEAR and LP collateral; levered strategies.
- Where SudoStake wins: No oracle/health-factor reflex; per-vault isolation; escrow-funded offers per deal.
- Docs: [Rhea whitepaper](https://guide.rhea.finance/rhea-finance-white-paper)
- Notable updates: 2025-07-30 — Ref and Burrow merged/rebranded to Rhea.

Maple Finance: EVM (Type: permissioned/under-collateralized credit)
- How it works: KYC institutions borrow from delegate-managed pools under off-chain legal terms. Open-term loans supported.
- Where it wins: Large ticket sizes; fiat/custody rails; professional underwriting.
- Where SudoStake wins: Permissionless; on-chain, per-deal settlement; no off-chain enforcement.
- Docs: [Open-term loans](https://maple.finance/insights/open-term-loans-built-by-maple)
- Notable updates: 2023-06-11 — open-term loans introduced; 2025-06-02 — updated docs.

Curve crvUSD: Ethereum (Type: CDP-style soft liquidation)
- How it works: Uses LLAMMA soft-liquidations that gradually rebalance collateral rather than hard liquidations.
- Where it wins: Smoother liquidation path; fits well with Curve AMMs.
- Where SudoStake wins: No oracle/AMM dependency; time-based settlements on native stake.
- Docs: [LLAMMA](https://docs.curve.finance/crvUSD/amm/)
- Notable updates: 2023-05-19 — crvUSD/LLAMMA technical papers and docs.

EigenLayer: Ethereum (Type: restaking overlay, not credit)
- How it works: Restake ETH (or LSTs) to secure AVSs; additional slashing risk for extra yield.
- Where it wins: Yield overlays for ETH stakers; expanding AVS ecosystem.
- Where SudoStake wins: No added slashing vectors; purpose-built credit on native stake with clear expiries and per-deal isolation.
- Docs: [Whitepaper](https://docs.eigencloud.xyz/assets/files/EigenLayer_WhitePaper-88c47923ca0319870c611decd6e562ad.pdf), [Slashing overview](https://docs.eigencloud.xyz/products/eigenlayer/concepts/slashing/slashing-concept)
- Notable updates: 2024–2025 — restaking docs and AVS expansion.

---

## References
- Aave v3 documentation: [Liquidations](https://aave.com/docs/developers/liquidations), [Health factor help](https://aave.com/help/borrowing/liquidations), [v3 overview](https://aave.com/docs/developers/aave-v3/overview)
- MakerDAO documentation: [Liquidation 2.0 (Dog/Clipper)](https://docs.makerdao.com/smart-contract-modules/dog-and-clipper-detailed-documentation), [clip.sol](https://github.com/makerdao/dss/blob/master/src/clip.sol)
- Liquity documentation: [Stability Pool & liquidations](https://docs.liquity.org/liquity-v1/faq/stability-pool-and-liquidations)
- Morpho documentation: [Vaults](https://docs.morpho.org/learn/concepts/vault), [MetaMorpho overview](https://morpho.org/blog/understanding-morpho-vaults-intro-simplifying-isolated-markets)
- Rhea (NEAR): [Rhea whitepaper](https://guide.rhea.finance/rhea-finance-white-paper)
- Maple Finance: [Open-term loans announcement](https://maple.finance/insights/open-term-loans-built-by-maple)
- Curve (crvUSD): [LLAMMA docs](https://docs.curve.finance/crvUSD/amm/)
- EigenLayer: [Whitepaper](https://docs.eigencloud.xyz/assets/files/EigenLayer_WhitePaper-88c47923ca0319870c611decd6e562ad.pdf), [Slashing overview](https://docs.eigencloud.xyz/products/eigenlayer/concepts/slashing/slashing-concept)
