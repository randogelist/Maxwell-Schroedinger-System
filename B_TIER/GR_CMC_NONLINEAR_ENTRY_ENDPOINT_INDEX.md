# GR CMC nonlinear-entry endpoint index

`! = B_TIER`. No endpoint below is A-tier.

| ID | Endpoint | Status | Derivation folder |
|---|---|---|---|
| GRCMC-01 | `CIRCULAR_MAXWELL_MODE` | `EXACT_B_TIER` | [`derivation_of_CIRCULAR_MAXWELL_MODE/`](../derivation_of_CIRCULAR_MAXWELL_MODE/) |
| GRCMC-02 | `CIRCULAR_HEAT_REGULARIZATION` | `EXACT_B_TIER` | [`derivation_of_CIRCULAR_HEAT_REGULARIZATION/`](../derivation_of_CIRCULAR_HEAT_REGULARIZATION/) |
| GRCMC-03 | `FIXED_AXIS_VECTOR_TO_TT` | `EXACT_B_TIER` | [`derivation_of_FIXED_AXIS_VECTOR_TO_TT/`](../derivation_of_FIXED_AXIS_VECTOR_TO_TT/) |
| GRCMC-04 | `CIRCULAR_TT_EXACT_VACUUM_DATA` | `EXACT_B_TIER` | [`derivation_of_CIRCULAR_TT_EXACT_VACUUM_DATA/`](../derivation_of_CIRCULAR_TT_EXACT_VACUUM_DATA/) |
| GRCMC-05 | `EXACT_MEAN_CURVATURE_BACKREACTION` | `EXACT_B_TIER` | [`derivation_of_EXACT_MEAN_CURVATURE_BACKREACTION/`](../derivation_of_EXACT_MEAN_CURVATURE_BACKREACTION/) |
| GRCMC-06 | `TRACE_MODE_RESOLVES_ENERGY_OBSTRUCTION` | `EXACT_B_TIER_FOR_EXPLICIT_FAMILY` | [`derivation_of_TRACE_MODE_RESOLVES_ENERGY_OBSTRUCTION/`](../derivation_of_TRACE_MODE_RESOLVES_ENERGY_OBSTRUCTION/) |
| GRCMC-07 | `CONSTANT_NORM_CMC_COMPLETION` | `EXACT_B_TIER` | [`derivation_of_CONSTANT_NORM_CMC_COMPLETION/`](../derivation_of_CONSTANT_NORM_CMC_COMPLETION/) |
| GRCMC-08 | `YAMABE_ZERO_CMC_SIGN_GATE` | `EXACT_B_TIER` | [`derivation_of_YAMABE_ZERO_CMC_SIGN_GATE/`](../derivation_of_YAMABE_ZERO_CMC_SIGN_GATE/) |
| GRCMC-09 | `CIRCULAR_PHASE_IS_TRANSLATION` | `EXACT_B_TIER` | [`derivation_of_CIRCULAR_PHASE_IS_TRANSLATION/`](../derivation_of_CIRCULAR_PHASE_IS_TRANSLATION/) |
| GRCMC-10 | `EXPLICIT_CMC_FAMILY_IS_ISOTROPIC` | `EXACT_B_TIER` | [`derivation_of_EXPLICIT_CMC_FAMILY_IS_ISOTROPIC/`](../derivation_of_EXPLICIT_CMC_FAMILY_IS_ISOTROPIC/) |
| GRCMC-11 | `GENERAL_YAMABE_ZERO_CMC_EXISTENCE` | `NAMED_LITERATURE_ENDPOINT` | [`derivation_of_GENERAL_YAMABE_ZERO_CMC_EXISTENCE/`](../derivation_of_GENERAL_YAMABE_ZERO_CMC_EXISTENCE/) |
| GRCMC-12 | `GR_NONLINEAR_SYMPLECTIC_COMPLETION` | `OPEN_DECISIVE` | [`derivation_of_GR_NONLINEAR_SYMPLECTIC_COMPLETION/`](../derivation_of_GR_NONLINEAR_SYMPLECTIC_COMPLETION/) |
| GRCMC-13 | `PLANCK_MATCHING_AFTER_NONLINEAR_COMPLETION` | `CONDITIONAL_B_TIER` | [`derivation_of_PLANCK_MATCHING_AFTER_NONLINEAR_COMPLETION/`](../derivation_of_PLANCK_MATCHING_AFTER_NONLINEAR_COMPLETION/) |
| GRCMC-14 | `MS_TO_NSE_GERM` | `OPEN_CROSS_ADAPTER` | [`derivation_of_MS_TO_NSE_GERM/`](../derivation_of_MS_TO_NSE_GERM/) |
| GRCMC-15 | `QM_MAXWELL_GR_CMC_NONLINEAR_ENTRY` | `CONDITIONAL_B_TIER_ROOT` | [`derivation_of_QM_MAXWELL_GR_CMC_NONLINEAR_ENTRY/`](../derivation_of_QM_MAXWELL_GR_CMC_NONLINEAR_ENTRY/) |

## Exact chain

```text
circular Maxwell mode
-> Gaussian heat regularization
-> fixed-axis TT lift
-> exact nonlinear vacuum data
-> exact mean-curvature backreaction.
```

## Decisive separation

```text
exact nonlinear GR constraint data
!=
nonzero CP1 symplectic-area embedding.
```

The explicit CMC family has fixed spatial metric and therefore zero pullback of the canonical ADM symplectic form.  The decisive next endpoint is `GR_NONLINEAR_SYMPLECTIC_COMPLETION`.

## Root implication

```text
CIRCULAR_TT_EXACT_VACUUM_DATA
+ GR_NONLINEAR_SYMPLECTIC_COMPLETION
+ QM/GR orbit identification
+ symplectic matching
-> epsilon = l_P/sqrt(kappa_GR).
```

With `kappa_GR = 1/4`:

```text
epsilon = a_* = 2 l_P
l_* = l_P.
```

[Canonical B-tier derivation](GR_CMC_NONLINEAR_ENTRY_B_TIER.txt)
