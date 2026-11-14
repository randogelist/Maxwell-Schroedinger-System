# Frozen SM-07 — NSE current/charge Ward structural match

**Root:** `NSE_CURRENT_WARD_IDENTITY`  
**Full proof:** [NSE_CURRENT_WARD_IDENTITY_B_TIER.txt](./NSE_CURRENT_WARD_IDENTITY_B_TIER.txt)  
**Prior:** [SM-06 auxiliary BRST](./NSE_AUXILIARY_BRST_NILPOTENCY_B_TIER.txt)  
**Frozen row:** SM-07 only; SM-01–06 unchanged; SM-08 pending.  
**Tier:** `! B_TIER`, with explicitly separate physical Standard Model matching premises. No local Lean run or matching native compiler/axiom audit.

## Exact Abelian current theorem

For smooth periodic incompressible NSE velocities `u_i` and scalar charge density `q_i`, let

```text
J_i=q_i*u_i-d_i*grad q_i
d_i>=0
gamma_ij=gamma_ji>=0

partial_t q_i +div J_i
  = -sum_j gamma_ij*(q_i-q_j).
```

The total `Q=sum_i q_i`, `J=sum_i J_i` satisfies

```text
partial_t Q+div J=0,
partial_mu J_total^mu=0,
d/dt integral_T3 Q=0.
```

The charge graph has a separate quadratic dissipation:

```text
(1/2)d/dt sum_i||q_i||²
 =-sum_i d_i||grad q_i||²
  -sum_(i<j)gamma_ij||q_i-q_j||²<=0.
```

**Do not equate** the charge-transfer graph `gamma` with the NSE momentum drag graph `kappa`, or with physical Standard Model gauge couplings.

## Gauge-covariant extension

With a chosen smooth connection `A`, a common adjoint bundle, and adjoint charges `q_i`:

```text
D_mu^A q = partial_mu q+[A_mu,q]

J_i^0=q_i
J_i^a=u_i^a q_i-d_i D_a^A q_i

D_mu^A J_i^mu=-sum_j gamma_ij(q_i-q_j)
=>(sum_i) D_mu^A J_i^mu=0.
```

The extension is an exact **classical covariant charge-transport system** under explicit premises, **not** a derivation of Standard Model quantum Ward identities from NSE.

With an invariant positive Lie-algebra inner product, the covariant norm obeys the same nonpositive graph/diffusion identity with `grad` replaced by `D^A`.

## Strong nonuniqueness witness

For the previously frozen free helical electron and viscously decaying NSE readout:

```text
J_e(t)=q_e*n_e*U_e*(e_z-s_t)
J_NSE(t)=q_e*n_e*U_e*(e_z-exp(-nu*k²*t)*s_t)

div J_e=div J_NSE=0
partial_t(q_e*n_e)=0

J_e-J_NSE
 =q_e*n_e*U_e*(exp(-nu*k²*t)-1)*s_t
 !=0  for t>0, nu>0, k!=0.
```

Thus **the same Ward continuity equation does not determine the current or its dynamics**. A separately derived physical microscopic-to-fluid matching is necessary.

## Regularity scope

A **triangular** charge-transport extension of a globally smooth NSE^X reference is globally smooth for smooth charge data and smooth locally bounded-in-time coefficients, without a backreaction force. With Lorentz force or non-Abelian gauge-field feedback, the previous critical `H^(1/2)` force budget or an exact symmetry-tangent closure is still required.

For physical Maxwell sources on the compact torus, net charge must be zero or neutralized by a properly modeled background.

## Scoped B-tier endpoints

| ID | Endpoint |
|---|---|
| NCW-01 | `INCOMPRESSIBLE_SCALAR_CURRENT_IDENTITY` |
| NCW-02 | `MATERIAL_DERIVATIVE_COMMUTATOR` |
| NCW-03 | `NSE_POWER_X_TOTAL_ABELIAN_WARD` |
| NCW-04 | `CHARGE_GRAPH_QUADRATIC_DISSIPATION` |
| NCW-05 | `COVARIANT_ADJOINT_CURRENT_PORT` |
| NCW-06 | `GAUGE_COVARIANT_CHARGE_GRAPH_NORM` |
| NCW-07 | `HELICAL_WARD_NONUNIQUENESS` |
| NCW-08 | `PERIODIC_GAUSS_NEUTRALITY_OBLIGATION` |
| NCW-09 | `REGULARITY_PRESERVING_CHARGE_PORT` |
| NCW-10 | `CHARGE_GRAPH_MOMENTUM_GRAPH_SEPARATION` |
| NCW-11 | `SM07_MATCH_AND_NONMATCH` |
| NCW-12 | `NSE_CURRENT_WARD_IDENTITY_ROOT` |

## Open gates

- NCW-13 physical Standard Model current/Noether operator.
- NCW-14 quantum/non-Abelian Ward and anomaly audit.
- NCW-15 microscopic current-to-fluid matching.
- NCW-16 backreaction force satisfies a known NSE regularity class.
- NCW-17 SM-08 stress–energy Ward interaction (still frozen).
- NCW-18 native external Lean compiler and theorem-level axiom audit.

**Suggested formal spine:** single-layer continuity → graph cancellation and norm → covariant current operator → helical counterexample → conditional regularity and physical gates → root.

Sources: [Non-Abelian fluid current/Wong equations](https://citeseerx.ist.psu.edu/document?doi=47258d522cc08ffbaf826b12e682cd6912565cc2&repid=rep1&type=pdf) · [Yang–Mills gauge current identity](https://qft.org/gauge-theories-standard-model/yang-mills-theory/yang-mills-equations-constraints-observables/).

**Frozen progress:** SM-01–06 previously scoped, **SM-07 exact current-transport analogue**, SM-08 unchanged. Physical Standard Model equivalence and A-tier not established.
