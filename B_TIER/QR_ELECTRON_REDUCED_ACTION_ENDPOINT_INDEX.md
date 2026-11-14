# QR electron reduced-action endpoint index

`! = B_TIER`. No endpoint below is A-tier.

`QR` denotes the reduced geometrical/relativistic action sector. It is not a Standard Model charge.

| ID | Endpoint | Status | Derivation folder |
|---|---|---|---|
| QR-01 | `EMD_STRESS_3P1_DECOMPOSITION` | `EXACT_B_TIER` | [`derivation_of_EMD_STRESS_3P1_DECOMPOSITION/`](../derivation_of_EMD_STRESS_3P1_DECOMPOSITION/) |
| QR-02 | `EMD_QR_CONSTRAINTS` | `EXACT_B_TIER_CONDITIONAL_ON_REGULARITY` | [`derivation_of_EMD_QR_CONSTRAINTS/`](../derivation_of_EMD_QR_CONSTRAINTS/) |
| QR-03 | `EMD_QR_CONSTRAINT_PROPAGATION` | `CONDITIONAL_B_TIER` | [`derivation_of_EMD_QR_CONSTRAINT_PROPAGATION/`](../derivation_of_EMD_QR_CONSTRAINT_PROPAGATION/) |
| QR-04 | `QR_WEYL_CURVATURE_CARRIER` | `EXACT_B_TIER` | [`derivation_of_QR_WEYL_CURVATURE_CARRIER/`](../derivation_of_QR_WEYL_CURVATURE_CARRIER/) |
| QR-05 | `QR_REDUCED_ACTION_COORDINATE` | `EXACT_B_TIER_CONDITIONAL_ON_REDUCED_ORBIT` | [`derivation_of_QR_REDUCED_ACTION_COORDINATE/`](../derivation_of_QR_REDUCED_ACTION_COORDINATE/) |
| QR-06 | `QR_PREQUANTIZATION_INTEGER` | `CONDITIONAL_B_TIER` | [`derivation_of_QR_PREQUANTIZATION_INTEGER/`](../derivation_of_QR_PREQUANTIZATION_INTEGER/) |
| QR-07 | `QM_PROFILE_ACTION_LEVEL_ONE` | `EXACT_B_TIER` | [`derivation_of_QM_PROFILE_ACTION_LEVEL_ONE/`](../derivation_of_QM_PROFILE_ACTION_LEVEL_ONE/) |
| QR-08 | `QR_QM_INTEGER_MISMATCH` | `EXACT_CONDITIONAL_B_TIER` | [`derivation_of_QR_QM_INTEGER_MISMATCH/`](../derivation_of_QR_QM_INTEGER_MISMATCH/) |
| QR-09 | `QR_RIGGING_FILTER_PROJECTOR_LIMIT` | `EXACT_CONDITIONAL_B_TIER` | [`derivation_of_QR_RIGGING_FILTER_PROJECTOR_LIMIT/`](../derivation_of_QR_RIGGING_FILTER_PROJECTOR_LIMIT/) |
| QR-10 | `QR_LENGTH_SPECTRUM_FROM_PREQUANTIZATION` | `CONDITIONAL_B_TIER` | [`derivation_of_QR_LENGTH_SPECTRUM_FROM_PREQUANTIZATION/`](../derivation_of_QR_LENGTH_SPECTRUM_FROM_PREQUANTIZATION/) |
| QR-11 | `ONE_ELECTRON_QR_MATCHED_SHELL` | `CONDITIONAL_B_TIER` | [`derivation_of_ONE_ELECTRON_QR_MATCHED_SHELL/`](../derivation_of_ONE_ELECTRON_QR_MATCHED_SHELL/) |
| QR-12 | `QR_ONE_QUARTER_ELECTRON_SCALE` | `CONDITIONAL_B_TIER` | [`derivation_of_QR_ONE_QUARTER_ELECTRON_SCALE/`](../derivation_of_QR_ONE_QUARTER_ELECTRON_SCALE/) |
| QR-13 | `QR_CERN_NUMBER_NOT_PARTICLE_NUMBER` | `EXACT_B_TIER_SEMANTIC_SEPARATION` | [`derivation_of_QR_CERN_NUMBER_NOT_PARTICLE_NUMBER/`](../derivation_of_QR_CERN_NUMBER_NOT_PARTICLE_NUMBER/) |
| QR-14 | `SOURCED_QR_VS_VACUUM_TT_SEPARATION` | `EXACT_B_TIER_STRUCTURAL_SEPARATION` | [`derivation_of_SOURCED_QR_VS_VACUUM_TT_SEPARATION/`](../derivation_of_SOURCED_QR_VS_VACUUM_TT_SEPARATION/) |
| QR-15 | `EMD_QR_REDUCED_MATCHING_HULL` | `CONDITIONAL_B_TIER` | [`derivation_of_EMD_QR_REDUCED_MATCHING_HULL/`](../derivation_of_EMD_QR_REDUCED_MATCHING_HULL/) |
| QR-16 | `QR_REDUCED_ORBIT_EXISTENCE` | `OPEN_DECISIVE` | [`derivation_of_QR_REDUCED_ORBIT_EXISTENCE/`](../derivation_of_QR_REDUCED_ORBIT_EXISTENCE/) |
| QR-17 | `QR_PREQUANTUM_LINE_BUNDLE_REALIZATION` | `OPEN_GEOMETRIC` | [`derivation_of_QR_PREQUANTUM_LINE_BUNDLE_REALIZATION/`](../derivation_of_QR_PREQUANTUM_LINE_BUNDLE_REALIZATION/) |
| QR-18 | `QR_GAUSSIAN_ACTION_LAW` | `OPEN_DECISIVE` | [`derivation_of_QR_GAUSSIAN_ACTION_LAW/`](../derivation_of_QR_GAUSSIAN_ACTION_LAW/) |
| QR-19 | `QR_COEFFICIENT_ONE_QUARTER` | `OPEN_DECISIVE` | [`derivation_of_QR_COEFFICIENT_ONE_QUARTER/`](../derivation_of_QR_COEFFICIENT_ONE_QUARTER/) |
| QR-20 | `SOURCED_VACUUM_REDUCED_ADAPTER` | `OPEN_DECISIVE` | [`derivation_of_SOURCED_VACUUM_REDUCED_ADAPTER/`](../derivation_of_SOURCED_VACUUM_REDUCED_ADAPTER/) |

## Exact matching chain

```text
Einstein-Maxwell-Dirac
-> EMD stress 3+1 decomposition
-> sourced GR constraints
-> reduced GR two-cycle
-> K_QR
-> m_QR = K_QR/hbar
-> r = m_QR - 1
-> matched shell r=0.
```

## Conditional scale chain

```text
K_QR = kappa_GR*c^3*epsilon^2/G
K_QR = m_QR*hbar
-> epsilon_m = sqrt(m_QR/kappa_GR)*l_P.
```

For the frozen one-particle quantum orbit:

```text
m_QM = 1.
```

Therefore same-orbit matching gives

```text
epsilon = l_P/sqrt(kappa_GR).
```

The historical endpoint is

```text
kappa_GR = 1/4
-> epsilon = 2 l_P.
```

## Critical semantic distinction

```text
m_QR = symplectic first-Chern number
N_Sigma = electron number
Q_Sigma/e = electric-charge number.
```

No equality among these quantities is automatic. The matched-shell theorem explicitly assumes the same-orbit identification.

[Canonical B-tier derivation](QR_ELECTRON_REDUCED_ACTION_B_TIER.txt)
