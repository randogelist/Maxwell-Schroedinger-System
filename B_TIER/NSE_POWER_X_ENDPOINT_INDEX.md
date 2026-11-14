# (NSE)^X — B-tier group base and admissible composition

**Exact scope:** (X) is a set of fluid-layer labels. The product is of **configuration groups**, not of NSE solutions or time evolution.

**Mode:** `B_TIER_DERIVATION`; no local Lean run, no external compiler/audit evidence.

## Stage 1 — group structure

[Direct group derivation](./NSE_POWER_X_GROUP_STRUCTURE_B_TIER.txt)

| Endpoint | Content | Status |
|---|---|---|
| NXG-01 | `PRODUCT_SDIFF_GROUP` | ! |
| NXG-02 | `COMPONENTWISE_LIE_ALGEBRA` | ! |
| NXG-03 | `DIAGONAL_GROUP_HOMOMORPHISM` | ! |
| NXG-04 | `PROJECTIONS_ARE_HOMOMORPHISMS` | ! |
| NXG-05 | `WEIGHTED_AVERAGE_LIE_NO_GO` | ! |
| NXG-06 | `INDEPENDENT_INTERNAL_GAUGE_SYMMETRY` | ! |
| NXG-07 | `REPRESENTATION_ADMISSIBILITY` | ! conditional |
| NXG-08 | `FOURIER_LAYER_LIE_SUBALGEBRA` | ! |
| NXG-09 | `COMMON_TWO_DIRECTIONAL_INVARIANCE` | ! scoped |
| NXG-10 | `NSE_POWER_X_GROUP_STRUCTURE` | ! root |

**No-go:** a weighted sum (sum_a w_au_a) of at least two independent layer velocities is generally **not** a Lie-algebra map ( mathfrak g^X	omathfrak g).

**Global caution:** finite products have the standard smooth product structure; arbitrary (X) gives a set-theoretic/topological product, not automatic infinite-network PDE well-posedness.

## Stage 2 — admissible composition

[Direct composition derivation](./NSE_POWER_X_ADMISSIBLE_COMPOSITION_B_TIER.txt)

| Endpoint | Content | Status |
|---|---|---|
| NXC-01 | `PRODUCT_CONFIGURATIONS_VS_COUPLED_FLOW` | ! |
| NXC-02 | `RECIPROCAL_GRAPH_LAPLACIAN` | ! |
| NXC-03 | `MULTILAYER_VISCOUS_NSE` | ! |
| NXC-04 | `FINITE_NSE_POWER_X_KINETIC_ENERGY_LAW` | ! |
| NXC-05 | `GLOBAL_MOMENTUM_TRANSFER_CANCELLATION` | ! |
| NXC-06 | `RECIPROCAL_FIELD_POWER_AND_RESERVOIR` | ! conditional |
| NXC-07 | `SPD_CROSS_INERTIA_EULER_POINCARE` | ! |
| NXC-08 | `DISJOINT_UNION_COMPOSITION` | ! |
| NXC-09 | `COMMON_2D3C_GRAPH_COUPLED_GLOBAL_REGULARITY` | ! scoped |
| NXC-10 | `COMMON_FOURIER_LATTICE_CONDITION` | ! |
| NXC-11 | `GAUGE_COMPATIBLE_SHARED_FIELD_INSERTION` | ! conditional |
| NXC-12 | `INFINITE_NETWORK_FORMAL_EXTENSION` | ! formal with analytic gates |
| NXC-13 | `NSE_POWER_X_ADMISSIBLE_COMPOSITION` | ! root |

### Canonical finite-layer coupling

For (ain X), under (ho_a>0,eta_a>0,kappa_{ab}=kappa_{ba}ge0),

```text
rho_a*(partial_t u_a + (u_a·grad)u_a)
  = -grad p_a + eta_a*Delta u_a
    - sum_b kappa_ab*(u_a-u_b) + f_a

div u_a = 0
```

The kinetic-energy identity is

```text
dot E_X
 = -sum_a eta_a*||grad u_a||²
   -sum_{a<b} kappa_ab*||u_a-u_b||²
   +sum_a <u_a,f_a>.
```

### Two available interaction constructions

1. **Dissipative graph:** symmetric nonnegative pairwise (kappa), no additional Lie algebra required.
2. **Conservative cross-inertia:** symmetric positive definite matrix (C_{ab}), Lagrangian (ell_C(u)=rac12sum_{ab}C_{ab}langle u_a,u_bangle), Euler–Poincaré momenta (m_a=sum_b C_{ab}u_b).

### Regularity boundary

A **finite** family with positive viscosities, reciprocal linear drag, smooth initial data and a **common missing spatial direction** stays 2D3C and is globally smooth. Distinct rank-2 spectral layers whose union has rank 3 lose this guarantee. Arbitrary external Standard Model forcing must pass an independent symmetry/analytic test.

## Frozen open gates

- NXG-11 infinite-product smooth group/topology.
- NXG-12 global nontrivial bundle lifting.
- NXC-14 infinite-network nonlinear well-posedness.
- NXC-15 microscopic Standard Model (	o) fluid matching.
- NXC-16 full rank-3 global NSE regularity.
- NXC-17 and NXG-14 native external Lean compiler / theorem-level axiom audit.

## Later proof spine (no Lean execution)

```text
finite product group → coordinate/diagonal homomorphisms
  → weighted-average no-go
  → graph quadratic form / total momentum
  → independent Euler–Poincaré cross-inertia
  → finite NSE^X energy identity
  → common 2D3C vorticity identity
  → gauge and reservoir premise signatures
  → conditional root assembly
```

**Classification:** `! B_TIER`, conditional on the explicitly stated dynamical, geometric and physical input; `A_TIER = NOT_ESTABLISHED`.
