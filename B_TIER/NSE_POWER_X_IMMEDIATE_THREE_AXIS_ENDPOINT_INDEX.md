# NSE^X immediate rank-3 nonlinear interaction — B-tier endpoint index

**Root:** `NSE_POWER_X_IMMEDIATE_THREE_AXIS_GLOBAL_REGULARITY`  
**Derivation:** [NSE_POWER_X_IMMEDIATE_THREE_AXIS_COUPLING_B_TIER.txt](./NSE_POWER_X_IMMEDIATE_THREE_AXIS_COUPLING_B_TIER.txt)  
**Prior:** [Regularity-preserving perturbation port](./NSE_POWER_X_REGULARITY_PRESERVING_INTERACTION_PORT_B_TIER.txt)  
**No local Lean run. No A-tier compilation or theorem-level axiom audit.**

## Construction

On `T_L³`, define three smooth nonzero helical layers with distinct propagation axes x,y,z and wave numbers `ki=2πni/L`, with `k1≠k2`. Each individual reference `Ui(t)=exp(-nu ki²t)ai` is exactly globally smooth.

Introduce the **autonomous, unforced** three-layer NSE system with a complete symmetric graph and edge conductance `kappa>0`:

```text
partial_t ui + P_sigma[(ui·grad)ui] -nu Delta ui
  +kappa sum_(j≠i)(ui-uj) = 0.
```

At time zero, coupling begins; `partial_t u1(0)` has all three wave-axis directions. Its projected self-advection becomes genuinely nonzero for small positive time, because the mixed two-axis term at Fourier mode `(k1,k2,0)` has nonzero z-component `A1 A2 (k1-k2) cos(k1x+alpha1)sin(k2y+alpha2)`.

## Critical stability threshold

Let `K0` denote the complete three-vertex graph Laplacian, with spectral norm `lambda_G=3`. Set

```text
S_m3 = L³ sum_i Ai² / |ki|³ > 0

B_U = (2*C_mix²/nu) * integral_0^infinity
  sum_i ||Ui(t)||_(W^{2,infinity})² dt < infinity

kappa_crit =
  nu² * exp(-B_U/2)
  / (4*C_NL*lambda_G*sqrt(S_m3)).
```

Then, under the standard critical trilinear/mixed-product and continuation estimates,

```text
0 < kappa < kappa_crit
  => unique globally smooth rank-3 interacting NSE³ solution.
```

For **every finite** nonzero amplitude triple, `kappa_crit>0`. The allowed coupling becomes smaller with increasing amplitude; there is **no** unconditional large-coupling theorem.

The exact finite-layer energy identity is

```text
(1/2)*d/dt sum_i ||ui||_2²
  = -nu sum_i ||grad ui||_2²
    -kappa sum_{i<j} ||ui-uj||_2².
```

## B-tier proof endpoints

| ID | Endpoint | Status |
|---|---|---|
| I3D-01 | `THREE_HELICAL_AXIS_INITIAL_PROFILES` | ! |
| I3D-02 | `GRAPH_IMMEDIATE_RANK_THREE_TRANSFER` | ! |
| I3D-03 | `NONZERO_PROJECTED_CROSS_ADVECTION` | ! |
| I3D-04 | `EXACT_COUPLED_MINUS_UNCOUPLED_PERTURBATION` | ! |
| I3D-05 | `CRITICAL_LARGE_REFERENCE_BOOTSTRAP` | ! conditional analytic |
| I3D-06 | `GRAPH_FORCE_H_MINUS_HALF_INTEGRAL` | ! |
| I3D-07 | `EXPLICIT_POSITIVE_KAPPA_ADMISSION` | ! conditional analytic |
| I3D-08 | `GLOBAL_ENERGY_AND_WEAK_STRONG_UNIQUENESS` | ! |
| I3D-09 | `IMMEDIATE_THREE_AXIS_GLOBAL_REGULARITY_ROOT` | ! scoped |

## Remaining gates

- I3D-10 rough L² immediate rank-3 coupling without positive-time cutoff.
- I3D-11 arbitrary large coupling for generic rank-3 graph NSE.
- I3D-12 actual physical electron/Standard Model field-to-layer coupling and current/stress/energy audits.
- I3D-13 A-tier external native Lean compiler and theorem-level axiom audit.

**Interpretation:** the new theorem is stronger than pure common-2D3C tangency, because the coupled solutions become fully three-dimensional and nonlinearly interacting; it is weaker than a general 3D NSE regularity theorem, because the reference is explicitly regular and the graph coupling is quantitatively small.

**Literature anchor:** [Iftimie (1999)](https://archive.numdam.org/articles/10.24033/bsmf.2358/) is a precedent for stability of large 2D backgrounds under small 3D perturbations, not the source of an asserted identical graph-coupled result.
