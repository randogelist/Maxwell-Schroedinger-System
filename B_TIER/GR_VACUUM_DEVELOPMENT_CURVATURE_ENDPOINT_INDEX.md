# GR vacuum development and curvature bridge

`! = B_TIER`. No endpoint below is A-tier.

| ID | Endpoint | Status | Derivation folder |
|---|---|---|---|
| GRDEV-01 | `CIRCULAR_CMC_VACUUM_CONSTRAINTS` | `EXACT_B_TIER` | [`derivation_of_CIRCULAR_CMC_VACUUM_CONSTRAINTS/`](../derivation_of_CIRCULAR_CMC_VACUUM_CONSTRAINTS/) |
| GRDEV-02 | `CIRCULAR_CMC_ANALYTIC_DATA` | `EXACT_B_TIER` | [`derivation_of_CIRCULAR_CMC_ANALYTIC_DATA/`](../derivation_of_CIRCULAR_CMC_ANALYTIC_DATA/) |
| GRDEV-03 | `GAUSSIAN_NORMAL_FIRST_JET` | `EXACT_B_TIER_FROM_CONVENTION` | [`derivation_of_GAUSSIAN_NORMAL_FIRST_JET/`](../derivation_of_GAUSSIAN_NORMAL_FIRST_JET/) |
| GRDEV-04 | `GAUSSIAN_NORMAL_SECOND_JET` | `EXACT_B_TIER` | [`derivation_of_GAUSSIAN_NORMAL_SECOND_JET/`](../derivation_of_GAUSSIAN_NORMAL_SECOND_JET/) |
| GRDEV-05 | `INITIAL_WEYL_DATA_FROM_CAUCHY_DATA` | `EXACT_B_TIER_GAUSS_CODAZZI` | [`derivation_of_INITIAL_WEYL_DATA_FROM_CAUCHY_DATA/`](../derivation_of_INITIAL_WEYL_DATA_FROM_CAUCHY_DATA/) |
| GRDEV-06 | `CIRCULAR_WEYL_ELECTRIC_FORMULA` | `EXACT_B_TIER` | [`derivation_of_CIRCULAR_WEYL_ELECTRIC_FORMULA/`](../derivation_of_CIRCULAR_WEYL_ELECTRIC_FORMULA/) |
| GRDEV-07 | `CIRCULAR_WEYL_MAGNETIC_FORMULA` | `EXACT_B_TIER` | [`derivation_of_CIRCULAR_WEYL_MAGNETIC_FORMULA/`](../derivation_of_CIRCULAR_WEYL_MAGNETIC_FORMULA/) |
| GRDEV-08 | `CIRCULAR_WEYL_NORMS` | `EXACT_B_TIER` | [`derivation_of_CIRCULAR_WEYL_NORMS/`](../derivation_of_CIRCULAR_WEYL_NORMS/) |
| GRDEV-09 | `CIRCULAR_BEL_ROBINSON_DENSITY` | `EXACT_B_TIER` | [`derivation_of_CIRCULAR_BEL_ROBINSON_DENSITY/`](../derivation_of_CIRCULAR_BEL_ROBINSON_DENSITY/) |
| GRDEV-10 | `GR_SUPERENERGY_MONOTONICITY` | `EXACT_B_TIER` | [`derivation_of_GR_SUPERENERGY_MONOTONICITY/`](../derivation_of_GR_SUPERENERGY_MONOTONICITY/) |
| GRDEV-11 | `CIRCULAR_CMC_VACUUM_DEVELOPMENT` | `CONDITIONAL_ON_ESTABLISHED_CAUCHY_THEOREM` | [`derivation_of_CIRCULAR_CMC_VACUUM_DEVELOPMENT/`](../derivation_of_CIRCULAR_CMC_VACUUM_DEVELOPMENT/) |
| GRDEV-12 | `QM_MAXWELL_GR_CURVATURE_BRIDGE` | `EXACT_B_TIER` | [`derivation_of_QM_MAXWELL_GR_CURVATURE_BRIDGE/`](../derivation_of_QM_MAXWELL_GR_CURVATURE_BRIDGE/) |
| GRDEV-13 | `TRANSVERSE_ONLY_GR_BRIDGE` | `EXACT_B_TIER_SCOPE_STATEMENT` | [`derivation_of_TRANSVERSE_ONLY_GR_BRIDGE/`](../derivation_of_TRANSVERSE_ONLY_GR_BRIDGE/) |
| GRDEV-14 | `QM_MAXWELL_GR_VACUUM_DEVELOPMENT_CURVATURE_BRIDGE` | `CONDITIONAL_B_TIER` | [`derivation_of_QM_MAXWELL_GR_VACUUM_DEVELOPMENT_CURVATURE_BRIDGE/`](../derivation_of_QM_MAXWELL_GR_VACUUM_DEVELOPMENT_CURVATURE_BRIDGE/) |
| GRDEV-15 | `EINSTEIN_MAXWELL_SCHRODINGER_COMPLETION` | `OPEN_DECISIVE` | [`derivation_of_EINSTEIN_MAXWELL_SCHRODINGER_COMPLETION/`](../derivation_of_EINSTEIN_MAXWELL_SCHRODINGER_COMPLETION/) |
| GRDEV-16 | `FOUR_D_CAUCHY_TO_FIVE_D_GAUSSIAN_INTERFACE` | `OPEN_INTERFACE` | [`derivation_of_FOUR_D_CAUCHY_TO_FIVE_D_GAUSSIAN_INTERFACE/`](../derivation_of_FOUR_D_CAUCHY_TO_FIVE_D_GAUSSIAN_INTERFACE/) |

## Root chain

```text
stationary QM/Maxwell datum
-> transverse circular mode
-> exact CMC vacuum constraints
-> explicit Gaussian-normal jet
-> explicit electric/magnetic Weyl tensors
-> unique vacuum development (Cauchy theorem)
```

## Explicit curvature output

```text
E_GR = h sigma + (s_epsilon^2/6) diag(-1,-1,2)
H_GR = -k sigma
W_GR = |E_GR|^2+|H_GR|^2
     = s_epsilon^4/3+k^2 s_epsilon^2
```

## Scope boundary

The current GR lift uses only the transverse datum `a_epsilon`. The stationary charge density and longitudinal electric field are not included in the vacuum Einstein stress tensor. The sourced Einstein–Maxwell–Schrodinger completion is open.

[Canonical B-tier derivation](GR_VACUUM_DEVELOPMENT_CURVATURE_BRIDGE_B_TIER.txt)
