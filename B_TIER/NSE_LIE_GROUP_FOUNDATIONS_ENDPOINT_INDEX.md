# NSE Lie-group foundations — B-tier endpoint index

**Root:** `NSE_LIE_GROUP_FOUNDATIONS`  
**Source:** [full B-tier derivation](./NSE_LIE_GROUP_FOUNDATIONS_B_TIER.txt)  
**Branch:** `b-tier-hull`  
**Lean:** Not emitted; no external compiler or theorem-level axiom-audit evidence.

## Foundational algebra

| Endpoint | Input → output | Dependency |
|---|---|---|
| NGL-01 `SDIFF_GROUP` | Volume-preserving diffeomorphisms under composition | Smooth periodic manifold |
| NGL-02 `DIVERGENCE_FREE_LIE_BRACKET` | Solenoidal vector fields → antisymmetric Jacobi Lie bracket | Derivation commutator |
| NGL-03 `MEAN_ZERO_IDEAL` | Lie bracket → zero spatial mean | Periodic integration |
| NGL-04 `L2_COADJOINT_IDENTITY` | `ad†` formula on solenoidal fields | Integration by parts, Leray |
| NGL-05 `EULER_ARNOLD_VARIATION` | Right-invariant kinetic action → incompressible Euler | NGL-04 |
| NGL-06 `HODGE_PRESSURE_PORT` | Euler + forcing ↔ projected equation and Poisson pressure | Hodge–Leray |

## Dynamics and spectral interactions

| Endpoint | Input → output | Dependency |
|---|---|---|
| NGL-07 `LIE_POISSON_BRACKET` | Lie algebra → antisymmetric functional Poisson bracket | NGL-02,04 |
| NGL-08 `VISCOUS_SYMMETRIC_BRACKET` | Dissipative bilinear form → viscous NSE energy inequality | NGL-07 |
| NGL-09 `FOURIER_LIE_BRACKET` | Modes k,l → Lie bracket and *distinct symmetric convective coupling* | NGL-02,06 |
| NGL-10 `SPECTRAL_SUBGROUP_CLOSURE` | Additive Fourier lattice Γ → invariant NSE spectral sector | NGL-09 |

**Non-equivalence to preserve:** `[u,v]=(u·∇)v-(v·∇)u` differs from `(u·∇)v+(v·∇)u`.

## Layering, gauge, and field-theory ports

| Endpoint | Input → output | Dependency |
|---|---|---|
| NGL-11 `NSE_PRODUCT_GROUP` | `SDiff(M)^N` and componentwise Lie bracket | NGL-01,02 |
| NGL-12 `GRAPH_LAPLACIAN_EXCHANGE` | Symmetric interlayer drag → nonnegative dissipation | NGL-11 |
| NGL-13 `LIE_DERIVATIVE_REPRESENTATION` | Advected quantities → Lie-derivative representation | NGL-02 |
| NGL-14 `DIAMOND_VARIATIONAL_FORCE` | Variational advected-field coupling → Euler–Poincaré diamond force | NGL-04,05,13 |
| NGL-15 `GAUGE_SEMIDIRECT_BRACKET` | Spatial vector fields + local gauge algebra → semidirect Lie bracket | NGL-02,13 |
| NGL-16 `VARIATIONAL_WARD_INTERFACE` | Admissible field action + exchange law → field/fluid stress balance | External matching premises |
| NGL-17 `RESPONSE_ACTION_ENDPOINT` | Specified PDE residuals → multiplier-action Euler–Lagrange equations | NGL-16 |
| NGL-18 `ENERGY_RESERVOIR_IDENTITY` | Reciprocal field work + viscous and drag dissipation + reservoir → conserved total energy | NGL-08,12,16 |

## Explicit open gates

- NGL-19 `STANDARD_MODEL_MICROSCOPIC_COARSE_GRAINING` — physically determine constitutive laws.
- NGL-20 `FULL_QUANTUM_SCHWINGER_KELDYSH_KMS_LIFT` — quantum fields, fluctuations, and dissipation.
- NGL-21 `FULL_COUPLED_NSE_SM_GLOBAL_REGULARITY` — analytical theorem beyond preserved 2D3C or Beltrami classes.
- NGL-22 `A_TIER_LEAN_EXTERNAL_COMPILER_AXIOM_AUDIT` — **not done**.

## Suggested future A-tier proof spine (not a claim of compilation)

1. Abstract derivatives/commutators, Jacobi, divergence and mean.
2. Independent algebraic bracket and coadjoint pairing identities.
3. Fourier-mode bilinear interactions and additive subgroup closure.
4. Product Lie algebra and weighted graph Laplacian.
5. Semidirect representation and Ward/energy-port endpoint signatures.
6. Final deterministic root composition.

**Formal caution:** naive Fourier truncation followed by projection may violate Jacobi. Use exact additive-lattice algebra or an abstract Lie-algebra interface; do not silently declare a projected Galerkin bracket to be a Lie algebra.

**Status:** ! B_TIER (under stated smoothness, source, and constitutive premises); no A-tier or physical Standard Model equivalence.
