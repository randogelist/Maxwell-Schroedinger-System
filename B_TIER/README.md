# B-tier artifacts

`! = B_TIER`. No artifact in this directory is A-tier.

## Core system

- [`MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt`](MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt) — canonical branch theorem architecture.
- [`MAXWELL_SCHROEDINGER_SYSTEM_B_TIER.txt`](MAXWELL_SCHROEDINGER_SYSTEM_B_TIER.txt) — original exact hull derivation.

## QM–GR scale chain

- [`MS_GR_PLANCK_KERNEL_ENDPOINT_B_TIER.txt`](MS_GR_PLANCK_KERNEL_ENDPOINT_B_TIER.txt) — conditional Planck-kernel endpoint.
- [`MS_GR_PLANCK_KERNEL_NORMALIZATION_B_TIER.txt`](MS_GR_PLANCK_KERNEL_NORMALIZATION_B_TIER.txt) — coefficient, normalization, nonselection, and universality analysis.

## QM–Maxwell–GR composition

- [`QM_MAXWELL_GR_INTERSECTION_B_TIER.txt`](QM_MAXWELL_GR_INTERSECTION_B_TIER.txt) — preserved chain from stationary quantum profile through Maxwell encoding and Gaussian scale into the conditional GR intersection.
- [`QM_MAXWELL_GR_INTERSECTION_ENDPOINT_INDEX.md`](QM_MAXWELL_GR_INTERSECTION_ENDPOINT_INDEX.md) — endpoint register and dependency summary.

## Reduced TT gravity entry

- [`GR_TT_REDUCED_ENTRY_B_TIER.txt`](GR_TT_REDUCED_ENTRY_B_TIER.txt) — exact ADM topology obstruction, two-mode TT symplectic calculation, Hopf reduction, explicit coefficient `kappa_TT`, normalization gate, and alternative GR-germ route.
- [`GR_TT_REDUCED_ENTRY_ENDPOINT_INDEX.md`](GR_TT_REDUCED_ENTRY_ENDPOINT_INDEX.md) — reduced-gravity endpoint register.

The reduced coefficient is

```text
kappa_TT = A^2 sigma I_TT R^2/(32 pi).
```

Hence

```text
epsilon = 2 l_P
<-> kappa_TT = 1/4
<-> A^2 sigma I_TT R^2 = 8 pi
```

under same-orbit identification and symplectic matching.

## Exact nonlinear CMC gravity entry

- [`GR_CMC_NONLINEAR_ENTRY_B_TIER.txt`](GR_CMC_NONLINEAR_ENTRY_B_TIER.txt) — explicit circular Maxwell mode, norm-preserving TT lift, exact nonlinear vacuum initial data, mean-curvature backreaction, CMC conformal completion, gauge audit, and nonlinear symplectic-completion gate.
- [`GR_CMC_NONLINEAR_ENTRY_ENDPOINT_INDEX.md`](GR_CMC_NONLINEAR_ENTRY_ENDPOINT_INDEX.md) — nonlinear-entry endpoint register.

The exact vacuum data are

```text
g = delta
K = sigma_epsilon +/- (s_epsilon/sqrt(6))*delta
```

with

```text
s_epsilon = s*exp(-epsilon^2 k^2/4)
tr K = +/-sqrt(3/2)*s_epsilon.
```

They satisfy the full vacuum constraint equations pointwise.  The explicit family has fixed spatial metric, so its ADM symplectic pullback is zero.  Therefore exact nonlinear constraint existence and nonzero `CP1` action area are distinct endpoints.

The decisive continuation is

```text
GR_NONLINEAR_SYMPLECTIC_COMPLETION:
I_epsilon : CP1 -> P_GR^red
I_epsilon^*Omega_GR^red
  = kappa_GR*(c^3 epsilon^2/G)*omega_FS.
```

Only after this endpoint and same-orbit matching does

```text
epsilon = l_P/sqrt(kappa_GR)
```

follow.  The historical value `epsilon=2l_P` still requires `kappa_GR=1/4`.

## Validation and obligations

- [`ENDPOINT_INDEX.md`](ENDPOINT_INDEX.md)
- [`OBLIGATION_GRAPH.md`](OBLIGATION_GRAPH.md)
- [`VALIDATION_ENDPOINTS.md`](VALIDATION_ENDPOINTS.md)

The nonlinear reduced symplectic orbit, same-orbit matching, geometric selection of the coefficient `1/4`, general source imports, and cross-adapter `MS_TO_NSE_GERM` remain explicit unresolved premises. Prepared mathematics does not establish A-tier status.
