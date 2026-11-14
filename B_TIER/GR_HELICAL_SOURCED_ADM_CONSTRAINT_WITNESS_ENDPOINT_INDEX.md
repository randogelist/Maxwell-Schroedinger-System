# GR helical sourced ADM witness — B-tier endpoint index

**Root:** `GR_HELICAL_SOURCED_ADM_CONSTRAINT_WITNESS`  
**B-tier derivation:** [GR_HELICAL_SOURCED_ADM_CONSTRAINT_WITNESS_B_TIER.txt](./GR_HELICAL_SOURCED_ADM_CONSTRAINT_WITNESS_B_TIER.txt)  
**Predecessor:** [GR ADM constraint algebra and NSE group bridge](./GR_ADM_CONSTRAINT_ALGEBRA_NSE_GROUP_BRIDGE_B_TIER.txt)  
**Status:** `! B_TIER` for a concrete Einstein–Maxwell initial-data construction. No local Lean execution, A-tier compilation or theorem-level axiom audit.

## Exact Einstein–Maxwell initial data

On `T_L³`, use geometrized electromagnetic units, `k=2πn/L≠0`, and

```text
h1=(cos kz,sin kz,0)
h2=(-sin kz,cos kz,0)

E=E0*e_z
B=B0*h1

rho_EM=(E0²+B0²)/2
j_EM=E0*B0*h2

kappa_G=8πG

w=(kappa_G*E0*B0/k)*h1
S=e_z⊗w+w⊗e_z
h_ij=delta_ij
K_ij=H*delta_ij+S_ij

H²=(kappa_G/6)*(E0²+B0²)
   +Lambda/3
   +(kappa_G²/(3k²))*E0²*B0².
```

The four initial constraints are satisfied:

```text
div E=0
div B=0
R(h)+(tr K)²-|K|²=2 Lambda+2 kappa_G rho_EM
div(K-(tr K)h)=kappa_G j_EM.
```

For `Lambda>=0`, `E0,B0` finite real, `n≠0`, there is always a real `H`. For `E0*B0≠0`, both the EM Poynting vector and the off-diagonal extrinsic curvature are nonzero.

The Maxwell dominant-energy condition is satisfied:

```text
rho_EM-|j_EM|=(|E0|-|B0|)²/2>=0.
```

Standard local Einstein–Maxwell Cauchy theory gives a smooth development. **This does not prove future geodesic completeness.**

## Multi-layer gravitational momentum intersection

For a physical source with constant normal energy density `rho_total` and helical momentum

```text
j_total=J1*h1+J2*h2
```

the same ADM constraints are solved by

```text
w=(kappa_G/k)*(J2*h1-J1*h2)
K=H*h+e_z⊗w+w⊗e_z

H²=kappa_G*rho_total/3+Lambda/3
   +kappa_G²*(J1²+J2²)/(3k²).
```

For two same-`k` helical momenta with relative phase `theta`, the cross contribution is

```text
Delta(H²)_cross =
  2*kappa_G²*A*B*cos(theta)/(3*k²).
```

This is an exact **constraint-level** interaction formula. Additional matter sources must be physically realizable (e.g., a consistent relativistic dust initial stress) and must not double count electron/EM energy.

## Compactness and two-electron matching obstruction

For a flat periodic metric and any smooth periodic extrinsic curvature satisfying the ADM momentum constraint,

```text
integral_T3 j_total dx = 0.
```

The earlier selected antisymmetric two-electron state has the canonical momentum expectation

```text
<P_2e> = hbar*(k e_z+q e_y) != 0.
```

Under an explicit semiclassical source identification, it **cannot** be the sole gravitating momentum source on the flat torus. A stationary charge-neutralizing background does not automatically neutralize its mechanical momentum. Compensation, nonflat spatial geometry, or a noncompact setting is needed.

## Symmetry and timescale

All explicit EM and metric initial data are invariant under translations in `x` and `y`, forming a `T²` action. Under standard Einstein–Maxwell Cauchy uniqueness, these symmetries extend to the resulting development. They do not guarantee global regularity or metric flatness.

The sourced extrinsic curvature has a mode-resolved anisotropic scale

```text
|S|=sqrt(2)*kappa_G*|j_total|/|k|.
```

With the stated ADM sign convention the normal volume expansion scalar is `theta=-3H`. The initial local expansion time `1/(3|H|)` when `H≠0` is **not** an NSE dissipation or quantum uncertainty time.

## Scoped B-tier endpoints

| ID | Endpoint | Classification |
|---|---|---|
| GRH-01 | `HELICAL_ELECTROMAGNETIC_MAXWELL_CONSTRAINTS` | ! exact |
| GRH-02 | `HELICAL_INVERSE_DIVERGENCE_TENSOR` | ! exact |
| GRH-03 | `GENERAL_HELICAL_ENERGY_MOMENTUM_CONSTRAINTS` | ! exact under source assumptions |
| GRH-04 | `PURE_EINSTEIN_MAXWELL_HELICAL_WITNESS` | ! exact |
| GRH-05 | `HELICAL_SOURCE_SUPERPOSITION_AND_GRAM_MATRIX` | ! exact conditional on sources |
| GRH-06 | `RELATIVISTIC_DUST_HELICAL_SOURCE_ADMISSIBILITY` | ! exact initial stress |
| GRH-07 | `FLAT_TORUS_MEAN_MOMENTUM_OBSTRUCTION` | ! exact |
| GRH-07B | `TWO_ELECTRON_EXPECTED_MOMENTUM_MEAN_OBSTRUCTION` | ! exact expectation, conditional GR source |
| GRH-08 | `MODE_RESOLVED_GR_SHEAR_RESPONSE` | ! exact |
| GRH-08B | `TWO_KILLING_EINSTEIN_MAXWELL_DEVELOPMENT` | ! standard well-posedness premise |
| GRH-09 | `PHYSICAL_COUPLING_GATE` | ! scope/nonidentification |
| GRH-10 | `GR_HELICAL_SOURCED_ADM_CONSTRAINT_WITNESS_ROOT` | ! B-tier |

## Open gates

- GRH-11 actual physical two-electron stress tensor and sourced Einstein–Maxwell–Dirac initial data.
- GRH-12 physical relativistic viscous NSE/fluid constitutive stress.
- GRH-13 globally regular *coupled* GR/SM/`NSE^X` time evolution.
- GRH-14 local gauge and gravitational Ward identity / anomaly audit.
- GRH-15 external Lean compiler and theorem-level axiom audit.

## Later Lean proof spine (not executed)

1. Helical trigonometric Fourier derivatives and cross products.
2. Maxwell divergence, energy, momentum and DEC.
3. Symmetric tensor inverse divergence, trace/norm.
4. Hamiltonian/momentum constraint arithmetic with a real square root.
5. Layer momentum Gram-angle and toroidal integrated-constraint obstruction.
6. Selected electron momentum expectation and semicalssical premise.
7. Deterministic root. Cauchy development theorem remains a separate **analytic** port.

**References:** [ADM constraint equations](https://academic.oup.com/epl/article/154/1/ae58cf/8766538) · [GR Cauchy development](https://pmc.ncbi.nlm.nih.gov/articles/PMC5256071/).

**Classification:** `! B_TIER`. The full physical Einstein–SM–electron–NSE join remains open. 
