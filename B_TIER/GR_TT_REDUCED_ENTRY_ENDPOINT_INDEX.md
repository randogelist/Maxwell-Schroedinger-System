# Reduced TT gravity entry — endpoint index

`! = B_TIER`. No endpoint below is A-tier.

| ID | Endpoint | Status | Derivation folder |
|---|---|---|---|
| GRTT-01 | `ADM_KINEMATICAL_EXACTNESS` | `EXACT_B_TIER_FROM_DEFINITION` | [`derivation_of_ADM_KINEMATICAL_EXACTNESS/`](../derivation_of_ADM_KINEMATICAL_EXACTNESS/) |
| GRTT-02 | `ADM_CP1_GLOBAL_OBSTRUCTION` | `EXACT_B_TIER` | [`derivation_of_ADM_CP1_GLOBAL_OBSTRUCTION/`](../derivation_of_ADM_CP1_GLOBAL_OBSTRUCTION/) |
| GRTT-03 | `QM_GR_LOCAL_DARBOUX_MATCHING` | `EXACT_B_TIER` | [`derivation_of_QM_GR_LOCAL_DARBOUX_MATCHING/`](../derivation_of_QM_GR_LOCAL_DARBOUX_MATCHING/) |
| GRTT-04 | `GR_TT_TWO_MODE_SYMPLECTIC_FORM` | `EXACT_CONDITIONAL_B_TIER` | [`derivation_of_GR_TT_TWO_MODE_SYMPLECTIC_FORM/`](../derivation_of_GR_TT_TWO_MODE_SYMPLECTIC_FORM/) |
| GRTT-05 | `GR_TT_HOPF_REDUCTION_CP1` | `EXACT_CONDITIONAL_B_TIER` | [`derivation_of_GR_TT_HOPF_REDUCTION_CP1/`](../derivation_of_GR_TT_HOPF_REDUCTION_CP1/) |
| GRTT-06 | `GR_TT_PULLBACK_COEFFICIENT` | `CONDITIONAL_B_TIER` | [`derivation_of_GR_TT_PULLBACK_COEFFICIENT/`](../derivation_of_GR_TT_PULLBACK_COEFFICIENT/) |
| GRTT-07 | `GR_ONE_QUARTER_NORMALIZATION_GATE` | `EXACT_CONDITIONAL_B_TIER` | [`derivation_of_GR_ONE_QUARTER_NORMALIZATION_GATE/`](../derivation_of_GR_ONE_QUARTER_NORMALIZATION_GATE/) |
| GRTT-08 | `GR_REDUCTION_LEVEL_NONSELECTION` | `EXACT_B_TIER` | [`derivation_of_GR_REDUCTION_LEVEL_NONSELECTION/`](../derivation_of_GR_REDUCTION_LEVEL_NONSELECTION/) |
| GRTT-09 | `QM_MAXWELL_GR_REDUCED_TT_ENTRY` | `CONDITIONAL_B_TIER` | [`derivation_of_QM_MAXWELL_GR_REDUCED_TT_ENTRY/`](../derivation_of_QM_MAXWELL_GR_REDUCED_TT_ENTRY/) |
| GRTT-10 | `QM_MAXWELL_TO_GR_GERM_COMPOSITION` | `CONDITIONAL_ON_MS_TO_NSE_GERM` | [`derivation_of_QM_MAXWELL_TO_GR_GERM_COMPOSITION/`](../derivation_of_QM_MAXWELL_TO_GR_GERM_COMPOSITION/) |
| GRTT-11 | `GR_LINEARIZATION_VALIDITY_GATE` | `OPEN_ANALYTIC` | [`derivation_of_GR_LINEARIZATION_VALIDITY_GATE/`](../derivation_of_GR_LINEARIZATION_VALIDITY_GATE/) |
| GRTT-12 | `GR_NONLINEAR_REDUCTION_GATE` | `OPEN_DECISIVE` | [`derivation_of_GR_NONLINEAR_REDUCTION_GATE/`](../derivation_of_GR_NONLINEAR_REDUCTION_GATE/) |

## Root formula

```text
Omega_GR_red
  = kappa_TT (c^3 epsilon^2/G) omega_FS

kappa_TT
  = A^2 sigma I_TT R^2/(32 pi)
```

Under orbit identification and symplectic matching:

```text
epsilon = l_P/sqrt(kappa_TT).
```

The historical endpoint is equivalent to

```text
epsilon = 2 l_P
<-> kappa_TT = 1/4
<-> A^2 sigma I_TT R^2 = 8 pi.
```

## Global topology result

```text
CP1 cannot globally pull back hbar omega_FS from the unreduced exact ADM
cotangent symplectic form.
```

A global match requires a reduced phase space, boundary/edge sector, or another
non-exact symplectic target.

[Canonical derivation](GR_TT_REDUCED_ENTRY_B_TIER.txt)
