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

They satisfy the full vacuum constraint equations pointwise. The explicit family has fixed spatial metric, so its ADM symplectic pullback is zero. Therefore exact nonlinear constraint existence and nonzero `CP1` action area are distinct endpoints.

## Vacuum development and Weyl-curvature bridge

- [`GR_VACUUM_DEVELOPMENT_CURVATURE_BRIDGE_B_TIER.txt`](GR_VACUUM_DEVELOPMENT_CURVATURE_BRIDGE_B_TIER.txt) — exact Gaussian-normal metric jets, intrinsic electric/magnetic Weyl tensors, explicit circular curvature formulas, Bel-Robinson density, Gaussian-length monotonicity, and the vacuum Cauchy-development composition.
- [`GR_VACUUM_DEVELOPMENT_CURVATURE_ENDPOINT_INDEX.md`](GR_VACUUM_DEVELOPMENT_CURVATURE_ENDPOINT_INDEX.md) — spacetime-development endpoint register.

For the circular sector,

```text
E_GR = h*sigma_epsilon
       + (s_epsilon^2/6)*diag(-1,-1,2)

H_GR = -k*sigma_epsilon

W_GR = |E_GR|^2+|H_GR|^2
     = s_epsilon^4/3+k^2*s_epsilon^2.
```

The source amplitude is

```text
s_epsilon=s*exp(-epsilon^2*k^2/4),
```

so `W_GR(epsilon)` is strictly decreasing for `epsilon>0` when `s>0` and `k!=0`.

Composing the exact constraint data with the standard vacuum Cauchy theorem gives a unique isometry class of maximal globally hyperbolic four-dimensional vacuum developments. This does not imply geodesic completeness or all-time coordinate existence.

The bridge is explicitly transverse-only: `rho_chi` and `E_chi` are not inserted into the vacuum Einstein stress tensor. The sourced Einstein–Maxwell–Schrodinger completion remains open.

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

follow. The historical value `epsilon=2l_P` still requires `kappa_GR=1/4`.

## Validation and obligations

- [`ENDPOINT_INDEX.md`](ENDPOINT_INDEX.md)
- [`OBLIGATION_GRAPH.md`](OBLIGATION_GRAPH.md)
- [`VALIDATION_ENDPOINTS.md`](VALIDATION_ENDPOINTS.md)

The nonlinear reduced symplectic orbit, same-orbit matching, geometric selection of the coefficient `1/4`, sourced Einstein–Maxwell–Schrodinger completion, four-dimensional/five-dimensional adapter interface, and cross-adapter `MS_TO_NSE_GERM` remain explicit unresolved premises. Prepared mathematics does not establish A-tier status.
