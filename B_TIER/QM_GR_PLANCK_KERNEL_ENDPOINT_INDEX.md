# QM–GR Planck-kernel endpoint index

`! = B_TIER`; no endpoint below is A-tier.

## A. Original Planck-kernel bridge

| ID | Endpoint | Status | Derivation folder |
|---|---|---|---|
| QMGR-01 | `MS_PROFILE_TRANSFER_CP1` | `EXACT_B_TIER` | [`derivation_of_MS_PROFILE_TRANSFER_CP1/`](../derivation_of_MS_PROFILE_TRANSFER_CP1/) |
| QMGR-02 | `MS_FUBINI_STUDY_ACTION_SCALE` | `EXACT_B_TIER` | [`derivation_of_MS_FUBINI_STUDY_ACTION_SCALE/`](../derivation_of_MS_FUBINI_STUDY_ACTION_SCALE/) |
| QMGR-03 | `A_DAGGER_KERNEL_SCALE_IDENTIFICATION` | `EXACT_B_TIER` | [`derivation_of_A_DAGGER_KERNEL_SCALE_IDENTIFICATION/`](../derivation_of_A_DAGGER_KERNEL_SCALE_IDENTIFICATION/) |
| QMGR-04 | `GR_GAUSSIAN_SYMPLECTIC_PULLBACK` | `NAMED_UNRESOLVED_PREMISE` | [`derivation_of_GR_GAUSSIAN_SYMPLECTIC_PULLBACK/`](../derivation_of_GR_GAUSSIAN_SYMPLECTIC_PULLBACK/) |
| QMGR-05 | `MS_GR_PLANCK_KERNEL_ENDPOINT` | `CONDITIONAL_B_TIER` | [`derivation_of_MS_GR_PLANCK_KERNEL_ENDPOINT/`](../derivation_of_MS_GR_PLANCK_KERNEL_ENDPOINT/) |
| QMGR-06 | `MS_EPSILON_PARAMETRICITY` | `EXACT_B_TIER` | [`derivation_of_MS_EPSILON_PARAMETRICITY/`](../derivation_of_MS_EPSILON_PARAMETRICITY/) |
| QMGR-07 | `MS_GR_PLANCK_KERNEL_EQUIVALENCES` | `EXACT_B_TIER` | [`derivation_of_MS_GR_PLANCK_KERNEL_EQUIVALENCES/`](../derivation_of_MS_GR_PLANCK_KERNEL_EQUIVALENCES/) |
| QMGR-08 | `SYMPLECTIC_MATCHING` | `NAMED_UNRESOLVED_PREMISE` | [`derivation_of_SYMPLECTIC_MATCHING/`](../derivation_of_SYMPLECTIC_MATCHING/) |

## B. Normalization and universality reduction

| ID | Endpoint | Status | Derivation folder |
|---|---|---|---|
| QMGR-09 | `GENERAL_PLANCK_SCALE_FROM_MATCHING` | `EXACT_CONDITIONAL_B_TIER` | [`derivation_of_GENERAL_PLANCK_SCALE_FROM_MATCHING/`](../derivation_of_GENERAL_PLANCK_SCALE_FROM_MATCHING/) |
| QMGR-10 | `FACTOR_FOUR_CALIBRATION` | `EXACT_B_TIER` | [`derivation_of_FACTOR_FOUR_CALIBRATION/`](../derivation_of_FACTOR_FOUR_CALIBRATION/) |
| QMGR-11 | `ACTION_CELL_MATCHING_EQUIVALENCE` | `EXACT_B_TIER` | [`derivation_of_ACTION_CELL_MATCHING_EQUIVALENCE/`](../derivation_of_ACTION_CELL_MATCHING_EQUIVALENCE/) |
| QMGR-12 | `HEAT_PARAMETER_PLANCK_AREA` | `EXACT_B_TIER` | [`derivation_of_HEAT_PARAMETER_PLANCK_AREA/`](../derivation_of_HEAT_PARAMETER_PLANCK_AREA/) |
| QMGR-13 | `PHYSICAL_TORUS_SCALE` | `EXACT_B_TIER` | [`derivation_of_PHYSICAL_TORUS_SCALE/`](../derivation_of_PHYSICAL_TORUS_SCALE/) |
| QMGR-14 | `NORMALIZATION_INVARIANCE` | `EXACT_B_TIER` | [`derivation_of_NORMALIZATION_INVARIANCE/`](../derivation_of_NORMALIZATION_INVARIANCE/) |
| QMGR-15 | `PLANCK_MATCHING_DEFECT` | `EXACT_B_TIER` | [`derivation_of_PLANCK_MATCHING_DEFECT/`](../derivation_of_PLANCK_MATCHING_DEFECT/) |
| QMGR-16 | `ORBIT_UNIVERSALITY_GATE` | `EXACT_B_TIER` | [`derivation_of_ORBIT_UNIVERSALITY_GATE/`](../derivation_of_ORBIT_UNIVERSALITY_GATE/) |
| QMGR-17 | `COEFFICIENT_NONSELECTION` | `EXACT_B_TIER` | [`derivation_of_COEFFICIENT_NONSELECTION/`](../derivation_of_COEFFICIENT_NONSELECTION/) |
| QMGR-18 | `MS_GR_PLANCK_KERNEL_NORMALIZATION_ENDPOINT` | `CONDITIONAL_B_TIER` | [`derivation_of_MS_GR_PLANCK_KERNEL_NORMALIZATION_ENDPOINT/`](../derivation_of_MS_GR_PLANCK_KERNEL_NORMALIZATION_ENDPOINT/) |
| QMGR-19 | `GR_COEFFICIENT_ONE_QUARTER` | `OPEN_DECISIVE_GR_ENDPOINT` | [`derivation_of_GR_COEFFICIENT_ONE_QUARTER/`](../derivation_of_GR_COEFFICIENT_ONE_QUARTER/) |

## Root implications

```text
MS_FUBINI_STUDY_ACTION_SCALE
+ A_DAGGER_KERNEL_SCALE_IDENTIFICATION
+ GR_GAUSSIAN_SYMPLECTIC_PULLBACK
+ SYMPLECTIC_MATCHING
-> MS_GR_PLANCK_KERNEL_ENDPOINT
```

```text
GR_PULLBACK_PROPORTIONAL(kappa,epsilon)
+ ACTION_CELL_MATCHING
-> epsilon = l_P / sqrt(kappa)

+ GR_COEFFICIENT_ONE_QUARTER
-> epsilon = a_* = 2 l_P
-> l_* = l_P
-> tau_epsilon = l_P^2
-> S_epsilon = hbar
-> Xi_epsilon = 1
```

## Decisive unresolved content

The algebraic matching step is complete. The remaining physical content is the independent gravitational theorem

```text
GR_COEFFICIENT_ONE_QUARTER:
  iota_epsilon^* Omega_GR
    = (c^3 epsilon^2 / 4G) omega_FS
```

in the same Fubini–Study normalization used by the Maxwell–Schrödinger orbit.

Without a fixed coefficient, every positive `epsilon` can be matched by choosing

```text
kappa = l_P^2 / epsilon^2.
```

## B-tier artifacts

- [Canonical Planck-kernel derivation](MS_GR_PLANCK_KERNEL_ENDPOINT_B_TIER.txt)
- [Normalization and action-cell derivation](MS_GR_PLANCK_KERNEL_NORMALIZATION_B_TIER.txt)

The conclusions remain conditional on the unresolved GR pullback and matching premises.