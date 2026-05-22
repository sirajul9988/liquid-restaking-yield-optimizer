# Liquid Restaking Yield Optimizer (2026)

This repository provides an expert-level blueprint for the **Restaking Era**. As Ethereum and Solana ecosystems evolve in 2026, "Restaking" has become the primary mechanism for bootstrapping security for Actively Validated Services (AVS) while providing stakers with tiered yield opportunities.

### 2026 Ecosystem Context
* **LST vs. LRT:** Liquid Staking Tokens (e.g., stETH, jitoSOL) provide base staking yield. Liquid Restaking Tokens (e.g., eETH, pufETH) layer additional rewards by securing extra services like bridges, oracles, and DA layers.
* **AVS Rewards:** Automated harvesting of multiple reward tokens from secured services.
* **Risk Management:** Tiered strategy vaults based on slashing risk profiles and withdrawal liquidity.

### Technical Components
* **RestakeStrategy.sol:** Modular logic to route LSTs to the highest-yielding LRT protocols.
* **RewardHarvester.js:** Off-chain bot to swap diverse AVS rewards back into the base asset to compound yield.
* **RiskOracle.sol:** Real-time monitoring of AVS health and operator performance to trigger emergency exits.
